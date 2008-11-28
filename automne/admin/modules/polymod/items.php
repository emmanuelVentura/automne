<?php
/* vim: set expandtab tabstop=4 shiftwidth=4: */
// +----------------------------------------------------------------------+
// | Automne (TM)														  |
// +----------------------------------------------------------------------+
// | Copyright (c) 2000-2009 WS Interactive								  |
// +----------------------------------------------------------------------+
// | Automne is subject to version 2.0 or above of the GPL license.		  |
// | The license text is bundled with this package in the file			  |
// | LICENSE-GPL, and is available through the world-wide-web at		  |
// | http://www.gnu.org/copyleft/gpl.html.								  |
// +----------------------------------------------------------------------+
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>	  |
// +----------------------------------------------------------------------+
//
// $Id: items.php,v 1.2 2008/11/27 17:25:37 sebastien Exp $

/**
  * PHP page : Load polymod items search window.
  * Used accross an Ajax request.
  * 
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");

//Standard messages
define("MESSAGE_TOOLBAR_HELP",1073);
define("MESSAGE_ERROR_MODULE_RIGHTS",570);
define("MESSAGE_PAGE_MODIFY", 938);
define("MESSAGE_PAGE_DELETE", 252);
define("MESSAGE_PAGE_SEARCH", 212);
define("MESSAGE_PAGE_LAUNCH_SEARCH", 1091);
define("MESSAGE_PAGE_UNLOCK", 82);
define("MESSAGE_PAGE_PREVIZ", 811);
define("MESSAGE_PAGE_UNDELETE", 874);
define("MESSAGE_PAGE_NEW", 262);

//Polymod messages
define("MESSAGE_PAGE_FIELD_KEYWORDS", 18);
define("MESSAGE_PAGE_FIELD_DATESEARCH_BETWEEN", 19);
define("MESSAGE_PAGE_FIELD_DATESEARCH_AND", 20);
define("MESSAGE_PAGE_FIELD_SORT", 405);
define("MESSAGE_PAGE_FIELD_ASC", 129);
define("MESSAGE_PAGE_FIELD_DESC", 130);
define("MESSAGE_PAGE_FIELD_CREATION_DATE", 403);
define("MESSAGE_PAGE_FIELD_PUBLICATION_DATE", 404);
define("MESSAGE_PAGE_RESULTS_COUNT", 501);
define("MESSAGE_PAGE_NORESULTS", 502);
define("MESSAGE_PAGE_RESULTS", 503);
define("MESSAGE_PAGE_X_OBJECTS_OF_Y", 504);
define("MESSAGE_ACTION_DELETE_SELECTED", 505);
define("MESSAGE_ACTION_DELETE_VALIDATION", 506);
define("MESSAGE_ACTION_DELETE_NO_VALIDATION", 507);
define("MESSAGE_ACTION_UNDELETE_SELECTED", 508);
define("MESSAGE_ACTION_UNLOCK_SELECTED", 509);
define("MESSAGE_ACTION_PREVIZ_SELECTED", 510);
define("MESSAGE_ACTION_EDIT_SELECTED", 511);
define("MESSAGE_ACTION_CREATE_SELECTED", 512);

//load interface instance
$view = CMS_view::getInstance();
//set default display mode for this page
$view->setDisplayMode(CMS_view::SHOW_RAW);

$winId = sensitiveIO::request('winId');
$fatherId = sensitiveIO::request('fatherId');
$objectId = sensitiveIO::request('objectId', 'sensitiveIO::isPositiveInteger');
$codename = sensitiveIO::request('module', CMS_modulesCatalog::getAllCodenames());

if (!$codename) {
	CMS_grandFather::raiseError('Unknown module ...');
	$view->show();
}
if (!$winId) {
	CMS_grandFather::raiseError('Unknown window Id ...');
	$view->show();
}
//load module
$module = CMS_modulesCatalog::getByCodename($codename);
if (!$module || !$module->isPolymod()) {
	CMS_grandFather::raiseError('Unknown module or module is not polymod for codename : '.$codename);
	$view->show();
}
//CHECKS user has module clearance
if (!$cms_user->hasModuleClearance($codename, CLEARANCE_MODULE_EDIT)) {
	CMS_grandFather::raiseError('User has no rights on module : '.$codename);
	$view->setActionMessage($cms_message->getmessage(MESSAGE_ERROR_MODULE_RIGHTS, array($module->getLabel($cms_language))));
	$view->show();
}

//load current object definition
$object = new CMS_poly_object_definition($objectId);
//load fields objects for object
$objectFields = CMS_poly_object_catalog::getFieldsDefinition($object->getID());

//usefull vars
$recordsPerPage = $_SESSION["cms_context"]->getRecordsPerPage();
$searchURL = PATH_ADMIN_MODULES_WR.'/'.MOD_POLYMOD_CODENAME.'/search.php';
$editURL = PATH_ADMIN_MODULES_WR.'/'.MOD_POLYMOD_CODENAME.'/item.php';
$listURL = PATH_ADMIN_MODULES_WR.'/'.MOD_POLYMOD_CODENAME.'/list-datas.php';
$dateFormat = $cms_language->getDateFormat();
$isPrimary = $object->isPrimaryResource() ? 'true' : 'false';

//
// Search Panel
//
$searchPanel = '';
$keywordsSearch = false;
$searchLists = '';
//Add all subobjects or special fields (like categories) to search if any
foreach ($objectFields as $fieldID => $field) {
	//check if field is searchable
	if ($field->getValue('searchable')) {
		//check if field has a method to provide a list of names
		$objectType = $field->getTypeObject();
		if (method_exists($objectType, 'getListOfNamesForObject')) {
			$objectsNames = $objectType->getListOfNamesForObject();
			
			$fieldLabel = sensitiveIO::sanitizeJSString($field->getLabel($cms_language));
			$value = $_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_'.$fieldID);
			$searchLists .= "{
				fieldLabel:			'{$fieldLabel}',
				anchor:				'100%',
				xtype:				'atmCombo',
				name:				'items_{$object->getID()}_{$fieldID}',
				hiddenName:			'items_{$object->getID()}_{$fieldID}',
				forceSelection:		true,
				mode:				'remote',
				valueField:			'id',
				displayField:		'label',
				value:				'{$value}',
				triggerAction: 		'all',
				store:				new Automne.JsonStore({
					url: 			'{$listURL}',
					baseParams:		{
						fieldId: 		'{$fieldID}',
						module: 		'{$codename}',
						objectId: 		'{$objectId}',
						query:			''
					},
					root: 			'objects',
					fields: 		['id', 'label']
				}),
				allowBlank: 		true,
				selectOnFocus:		true,
				editable:			false,
				listeners:			{'valid':moduleObjectWindow.search}
			},";
		} else {
			$keywordsSearch = true;
		}
	}
}
//add keyword search
if ($keywordsSearch) {
	$value = sensitiveIO::sanitizeJSString($_SESSION["cms_context"]->getSessionVar('items_'.$object->getID().'_kwrds'));
	// Keywords
	$searchPanel .= "{
		fieldLabel:		'{$cms_language->getJSMessage(MESSAGE_PAGE_FIELD_KEYWORDS, false, MOD_POLYMOD_CODENAME)}',
		xtype:			'textfield',
		name: 			'items_{$object->getID()}_kwrds',
		value:			'{$value}',
		minLength:		3,
		anchor:			'100%',
		listeners:		{'valid':{
			fn: 			moduleObjectWindow.search, 
			options:		{buffer:300}
		}}
	},";
}
//add publication date search
if ($object->isPrimaryResource()) {
	// Publication Dates
	$startValue = sensitiveIO::sanitizeJSString($_SESSION["cms_context"]->getSessionVar("items_dtfrm"));
	$endValue = sensitiveIO::sanitizeJSString($_SESSION["cms_context"]->getSessionVar("items_dtnd"));
	$searchPanel .= "{
		layout:			'column',
		xtype:			'panel',
		border:			false,
		items:[{
			columnWidth:	.5,
			layout: 		'form',
			border:			false,
			items: [{
				fieldLabel:		'{$cms_language->getJSMessage(MESSAGE_PAGE_FIELD_DATESEARCH_BETWEEN, false, MOD_POLYMOD_CODENAME)}',
				xtype:			'datefield',
				value:			'{$startValue}',
				name:			'items_dtfrm',
				format:			'{$dateFormat}',
				anchor:			'98%',
				allowBlank:		true,
				validateOnBlur:	false,
				listeners:		{'valid':moduleObjectWindow.search}
			}]
		},{
			columnWidth:	.5,
			layout: 		'form',
			border:			false,
			items: [{
				fieldLabel:		'{$cms_language->getJSMessage(MESSAGE_PAGE_FIELD_DATESEARCH_AND, false, MOD_POLYMOD_CODENAME)}',
				xtype:			'datefield',
				value:			'{$endValue}',
				name:			'items_dtnd',
				format:			'{$dateFormat}',
				anchor:			'100%',
				allowBlank:		true,
				validateOnBlur:	false,
				listeners:		{'valid':moduleObjectWindow.search}
			}]
		}]
	},";
}
//add listboxes search
$searchPanel .= $searchLists;

// Build sort select
$items_possible['objectID'] = $cms_language->getMessage(MESSAGE_PAGE_FIELD_CREATION_DATE, false, MOD_POLYMOD_CODENAME); //Ordre de cr�ation

// check if primary resource to add publication dates
if ($object->isPrimaryResource()) {
	$items_possible['publication date before'] = $cms_language->getMessage(MESSAGE_PAGE_FIELD_PUBLICATION_DATE, false, MOD_POLYMOD_CODENAME); //Date de d�but de publication
}
// build array of possible sort types
$possible_sorts = array('cms_object_boolean', 
						'cms_object_string', 
						'cms_object_date', 
						'cms_object_file', 
						'cms_object_image',
						'cms_object_language', 
						'cms_object_integer',
						'cms_object_usergroup',
					);
// check witch fields are sortable
foreach ($objectFields as $fieldID => $field) {
	if(in_array(get_class($field->getTypeObject()), $possible_sorts)){
		$items_possible[$field->getID()] = $field->getLabel($cms_language);
	}
}
// check if there are other sortable object than creation date
if(count($items_possible) > 1){
	$sortValue = $_SESSION["cms_context"]->getSessionVar('sort_'.$object->getID());
	$sortValue = $sortValue ? $sortValue : 'objectID';
	$sortValues = array();
	foreach($items_possible as $key => $label){
		$sortValues[]= array(
			'id' 	=> $key,
			'label'	=> $label
		);
	}
	$sortValues = sensitiveIO::jsonEncode($sortValues);
	$sortItem = "{
		xtype:				'combo',
		name:				'sort_{$object->getID()}',
		hiddenName:		 	'sort_{$object->getID()}',
		forceSelection:		true,
		fieldLabel:			'{$cms_language->getJSMessage(MESSAGE_PAGE_FIELD_SORT, false, MOD_POLYMOD_CODENAME)}',
		mode:				'local',
		triggerAction:		'all',
		valueField:			'id',
		displayField:		'label',
		value:				'{$sortValue}',
		anchor:				'98%',
		store:				new Ext.data.JsonStore({
			fields:				['id', 'label'],
			data:				{$sortValues}
		}),
		allowBlank:		 	false,
		selectOnFocus:		true,
		editable:			false,
		validateOnBlur:		false,
		listeners:			{'valid':moduleObjectWindow.search}
	}";
} else {
	$sortItem = "{
		xtype:				'textfield',
		fieldLabel:			'{$cms_language->getJSMessage(MESSAGE_PAGE_FIELD_SORT, false, MOD_POLYMOD_CODENAME)}',
		anchor:				'98%',
		disabled:			true,
		value:				'{$items_possible['objectID']}',
		listeners:			{'valid':moduleObjectWindow.search}
	}";
}

// build direction select
$items_possible = array('asc' => $cms_language->getMessage(MESSAGE_PAGE_FIELD_ASC, false, MOD_POLYMOD_CODENAME), 
						'desc' => $cms_language->getMessage(MESSAGE_PAGE_FIELD_DESC, false, MOD_POLYMOD_CODENAME));
$dirValue = $_SESSION["cms_context"]->getSessionVar('direction_'.$object->getID());
$dirValue = ($dirValue) ? $dirValue : 'desc';
$dirValues = array();
foreach($items_possible as $key => $label){
	$dirValues[]= array(
		'id' 	=> $key,
		'label'	=> $label
	);
}
$dirValues = sensitiveIO::jsonEncode($dirValues);

$searchPanel .= "{
	layout:			'column',
	xtype:			'panel',
	border:			false,
	items:[{
		columnWidth:	.65,
		layout: 		'form',
		border:			false,
		items: 			[{$sortItem}]
	},{
		columnWidth:	.35,
		layout: 		'form',
		border:			false,
		items: [{
			xtype:				'combo',
			name:				'direction_{$object->getID()}',
			hiddenName:		 	'direction_{$object->getID()}',
			forceSelection:		true,
			fieldLabel:			'',
			labelSeparator:		'',
			mode:				'local',
			triggerAction:		'all',
			valueField:			'id',
			displayField:		'label',
			value:				'{$dirValue}',
			anchor:				'100%',
			store:				new Ext.data.JsonStore({
				fields:				['id', 'label'],
				data:				{$dirValues}
			}),
			validateOnBlur:		false,
			allowBlank:		 	false,
			selectOnFocus:		true,
			editable:			false,
			listeners:			{'valid':moduleObjectWindow.search}
		}]
	}]
},";

//remove last comma from search panel items
$searchPanel = substr($searchPanel, 0, -1);

$jscontent = <<<END
	var moduleObjectWindow = Ext.getCmp('{$winId}');
	var fatherWindow = Ext.getCmp('{$fatherId}');
	
	//define update function into window (to be accessible by parent window)
	moduleObjectWindow.update = function() {
		//reload all already loaded combos in search form
		var combos = searchPanel.findByType('atmCombo');
		var combosLen = combos.length;
		for(var i = 0; i < combosLen; i++) {
			if (combos[i].store.isLoaded()) {
				combos[i].store.reload();
			}
		}
		//reload search
		moduleObjectWindow.search();
	}
	//define search function into window (to be accessible by parent window)
	moduleObjectWindow.search = function() {
		if (!moduleObjectWindow.ok) {
			return;
		}
		var form = Ext.getCmp('{$winId}Search').getForm();
		var values = Ext.applyIf(form.getValues(), {
			module:			'{$codename}',
			objectId:		'{$objectId}',
			start:			0,
			limit:			{$recordsPerPage}
		});
		resultsPanel.currPage = 0;
		resultsPanel.body.scrollTo('top', 0, false);
		store.baseParams = values;
		resultsPanel.body.mask('Chargement ...');
		store.load({
			params:			values,
			add:			false,
			callback:		function() {
				resultsPanel.body.unmask();
			},
			scope:			this
		});
	}
	//update some objects into store. Eventually, do some actions on then (unlock, delete, undelete)
	var refresh = function(ids, actions) {
		actions = actions || {};
		//call server for queried node lineage
		Automne.server.call({
			url:			'{$searchURL}',
			scope:			this,
			fcnCallback:	function(response, options, jsonResponse){
				var updatedItems = (options.params.items) ? options.params.items.split(/,/) : [];
				//unselect all 
				resultsPanel.dv.clearSelections();
				//update store
				for(var i = 0; i < jsonResponse.total; i++) {
					var data = jsonResponse.results[i];
					var record = store.getById(data.id);
					if (record) {
						//update record values
						record.beginEdit();
						for(var name in data) {
							record.set(name, data[name]);
						}
						record.endEdit();
						//remove object from items to update
						updatedItems.remove(data.id);
					}
				}
				var updatedLen = updatedItems.length;
				for(var i = 0; i < updatedLen; i++) {
					store.remove(store.getById(updatedItems[i]));
				}
				store.commitChanges();
			},
			params:			Ext.apply ({
				module:			'{$codename}',
				objectId:		'{$objectId}',
				items:			ids.join(',')
			}, actions)
		});
	}
	
	var searchPanel = new Ext.form.FormPanel({
		id: 			'{$winId}Search',
		region:			'west',
		title:			'{$cms_language->getJSMessage(MESSAGE_PAGE_SEARCH)}',
		xtype:			'form',
		width:			300,
		minSize:		200,
		maxSize:		400,
		collapsible:	true,
		split:			true,
		border:			false,
		labelAlign: 	'top',
		bodyStyle: {
			padding: 		'5px'
		},
		defaults:	{
			validateOnBlur:	false
		},
		keys: {
			key: 			Ext.EventObject.ENTER,
			scope:			this,
			handler:		moduleObjectWindow.search
		},
		items:[{$searchPanel}]
	});
	
	var objectsWindows = [];
	var selectedObjects = [];
	
	// Results store
	var store = new Automne.JsonStore({
		root:			'results',
		totalProperty:	'total',
		url:			'{$searchURL}',
		id:				'id',
		remoteSort:		true,
		baseParams:		{
			module:			'{$codename}',
			objectId:		'{$objectId}'
		},
		fields:			['id', 'status', 'pubrange', 'label', 'description', 'locked', 'deleted', 'previz', 'edit'],
		listeners:		{
			'load': 		{fn:function(store, records, options){
				//Update results title
				if (store.getTotalCount()) {
					var start = (options.params && options.params.start) ? options.params.start : 0;
					if (store.getTotalCount() < (start + {$recordsPerPage})) {
						var resultCount = store.getTotalCount();
					} else {
						var resultCount = start + {$recordsPerPage};
					}
					resultsPanel.setTitle(String.format('{$cms_language->getJSMessage(MESSAGE_PAGE_RESULTS_COUNT, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}', resultCount, store.getTotalCount()));
				} else {
					resultsPanel.setTitle('{$cms_language->getJSMessage(MESSAGE_PAGE_NORESULTS, false, MOD_POLYMOD_CODENAME)}');
				}
				if ({$isPrimary}) {
					moduleObjectWindow.resetResources();
					//register resource used by this panel
					store.each(function(record) {
						moduleObjectWindow.addResource('{$codename}', record.data.id);
					});
				}
				moduleObjectWindow.syncSize();
			}},
			scope : this
		}
	});
	
	var resultTpl = new Ext.XTemplate(
	'<tpl for=".">',
	'	<div class="atm-result x-unselectable" id="object-{id}">',
	'		<div class="atm-title">',
	'			<table>',
	'				<tr>',
	'					<td>{status}</td>',
	'					<td class="atm-label">{label}</td>',
	'					<td class="atm-pubrange">{pubrange}</td>',
	'				</tr>',
	'			</table>',
	'		</div>',
	'		<div class="atm-description">{description}</div>',
	'	</div>',
	'</tpl>');
	resultTpl.compile();
	
	var resultsPanel = new Ext.ux.LiveDataPanel({
		title: 				'{$cms_language->getJSMessage(MESSAGE_PAGE_RESULTS, false, MOD_POLYMOD_CODENAME)}',
		cls:				'atm-results',
		collapsible:		false,
		region:				'center',
		border:				false,
		loadingIndicatorTxt:'{$cms_language->getJSMessage(MESSAGE_PAGE_X_OBJECTS_OF_Y, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}',
		limit:				{$recordsPerPage},
		itemSelector:		'div.atm-result',
		tpl: 				resultTpl,
		store:				store,
		scripts:			true, //execute JS scripts in response
		dataView:			{
			overClass:			'x-view-over',
			multiSelect:		true,
			listeners:			{'beforeclick':function(dv, index, node, e){
				//prevent click catch if click occur on a link
				if (e.getTarget('a', 4)) {
					return false;
				}
			}}
		},
		tbar:[{
			id:			'{$winId}editItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_MODIFY)}',
			handler:	function(button) {
				var selectLen = selectedObjects.length;
				for (var i = 0; i < selectLen; i++) {
					var objectId = selectedObjects[i];
					var windowId = 'module{$codename}EditWindow'+objectId;
					if (objectsWindows[windowId]) {
						Ext.WindowMgr.bringToFront(objectsWindows[windowId]);
					} else {
						//create window element
						objectsWindows[windowId] = new Automne.frameWindow({
							id:				windowId,
							objectId:		objectId,
							frameURL:		'{$editURL}?polymod={$codename}&object={$objectId}&item='+objectId,
							modal:			false,
							father:			fatherWindow,
							allowFrameNav:	true,
							width:			750,
							height:			580,
							animateTarget:	button,
							listeners:{'close':function(window){
								//unlock and refresh object panel in list
								refresh([window.objectId], {unlock:true});
								//delete window from list
								delete objectsWindows[window.id];
							}}
						});
						//display window
						objectsWindows[windowId].show(button.getEl());
					}
				}
			},
			scope:		this,
			disabled:	true
		},{
			id:			'{$winId}unlockItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_UNLOCK)}',
			handler:	function(button) {
				refresh(selectedObjects, {unlock:true});
			},
			scope:		resultsPanel,
			hidden:		true
		},{
			id:			'{$winId}previzItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_PREVIZ)}',
			handler:	function(button) {
				var selectLen = selectedObjects.length;
				for (var i = 0; i < selectLen; i++) {
					var objectId = selectedObjects[i];
					var windowId = 'module{$codename}PrevizWindow'+objectId;
					if (objectsWindows[windowId]) {
						Ext.WindowMgr.bringToFront(objectsWindows[windowId]);
					} else {
						//create window element
						objectsWindows[windowId] = new Automne.frameWindow({
							id:				windowId,
							objectId:		objectId,
							frameURL:		store.getById(objectId).data.previz,
							modal:			false,
							father:			fatherWindow,
							allowFrameNav:	true,
							width:			750,
							height:			580,
							animateTarget:	button,
							listeners:{'close':function(window){
								//delete window from list
								delete objectsWindows[window.id];
							}}
						});
						//display window
						objectsWindows[windowId].show(button.getEl());
					}
				}
			},
			scope:		resultsPanel,
			hidden:		true
		},{
			id:			'{$winId}deleteItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_DELETE)}',
			handler:	function(button) {
				refresh(selectedObjects, {del:true});
			},
			scope:		resultsPanel,
			disabled:	true
		},{
			id:			'{$winId}undeleteItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_UNDELETE)}',
			handler:	function(button) {
				refresh(selectedObjects, {undelete:true});
			},
			scope:		resultsPanel,
			hidden:		true
		}, '->', {
			id:			'{$winId}createItem',
			xtype:		'button',
			text:		'{$cms_language->getJSMessage(MESSAGE_PAGE_NEW)}',
			handler:	function(button) {
				var windowId = 'module{$codename}EditWindow';
				if (objectsWindows[windowId]) {
					Ext.WindowMgr.bringToFront(objectsWindows[windowId]);
				} else {
					//create window element
					objectsWindows[windowId] = new Automne.frameWindow({
						id:				windowId,
						frameURL:		'{$editURL}?polymod={$codename}&object={$objectId}',
						modal:			false,
						father:			fatherWindow,
						allowFrameNav:	true,
						width:			750,
						height:			580,
						animateTarget:	button,
						listeners:{'close':function(window){
							delete objectsWindows[window.id];
							//refresh search list
							moduleObjectWindow.search();
						}}
					});
					//display window
					objectsWindows[windowId].show(button.getEl());
				}
			},
			scope:		resultsPanel
		}]
	});
	moduleObjectWindow.add(searchPanel);
	moduleObjectWindow.add(resultsPanel);
	
	//redo windows layout
	moduleObjectWindow.doLayout();
	
	//set resize event to resize inner panels (needed for IE)
	/*moduleObjectWindow.on('resize', function() {
		resultsPanel.syncSize();
		searchPanel.syncSize();
	});*/
	
	//this flag is needed, because form construction, launch multiple search queries before complete page construct so we check in moduleObjectWindow.search if construction is ok
	moduleObjectWindow.ok = true;
	//launch search
	moduleObjectWindow.search();
	
	//add selection events to selection model
	var qtips = [];
	qtips['delete'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}deleteItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_DELETE_SELECTED, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}' + (({$isPrimary}) ? '{$cms_language->getJSMessage(MESSAGE_ACTION_DELETE_VALIDATION, false, MOD_POLYMOD_CODENAME)}' : '{$cms_language->getJSMessage(MESSAGE_ACTION_DELETE_NO_VALIDATION, false, MOD_POLYMOD_CODENAME)}'),
		disabled:		true
	});
	qtips['undelete'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}undeleteItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_UNDELETE_SELECTED, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}',
		disabled:		true
	});
	qtips['unlock'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}unlockItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_UNLOCK_SELECTED, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}',
		disabled:		true
	});
	qtips['previz'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}previzItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_PREVIZ_SELECTED, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}',
		disabled:		true
	});
	qtips['edit'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}editItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_EDIT_SELECTED, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}',
		disabled:		true
	});
	qtips['create'] = new Ext.ToolTip({
		target: 		Ext.getCmp('{$winId}createItem').getEl(),
		html: 			'{$cms_language->getJSMessage(MESSAGE_ACTION_CREATE_SELECTED, array($object->getLabel($cms_language)), MOD_POLYMOD_CODENAME)}'
	});
	
	resultsPanel.dv.on('selectionchange', function(dv, selections){
		selectedObjects = [];
		var selectLen = selections.length;
		for (var i = 0; i < selectLen; i++) {
			selectedObjects[selectedObjects.length] = selections[i].id.substr(7);
		}
		//check for options in common for all objects
		var hasEdit = true, hasDelete = true, hasPreviz = true, hasUndelete = true, hasUnlock = true;
		for (var i = 0; i < selectLen; i++) {
			var datas = store.getById(selectedObjects[i]).data;
			//edit
			if (!datas.edit) {
				hasEdit = false;
			}
			//delete
			if (datas.deleted) {
				hasDelete = false;
				hasEdit = false;
			} else {
				hasUndelete = false;
			}
			//unlock
			if (datas.locked) {
				hasEdit = false;
			} else {
				hasUnlock = false;
			}
			//previz
			if (!datas.previz) {
				hasPreviz = false;
			}
		}
		if (!selectLen) { //if no row selected, disable all buttons
			qtips['edit'].disable();
			qtips['delete'].disable();
			qtips['previz'].disable();
			qtips['unlock'].disable();
			qtips['undelete'].disable();
			
			Ext.getCmp('{$winId}editItem').disable();
			Ext.getCmp('{$winId}deleteItem').disable();
			Ext.getCmp('{$winId}previzItem').hide();
			Ext.getCmp('{$winId}unlockItem').hide();
			Ext.getCmp('{$winId}undeleteItem').hide();
		} else { //enable / disable buttons allowed by selection
			qtips['edit'].setDisabled(!hasEdit);
			qtips['delete'].setDisabled(!hasDelete);
			qtips['previz'].setDisabled(!hasPreviz);
			qtips['unlock'].setDisabled(!hasUnlock);
			qtips['undelete'].setDisabled(!hasUndelete);
			
			Ext.getCmp('{$winId}editItem').setDisabled(!hasEdit);
			Ext.getCmp('{$winId}deleteItem').setDisabled(!hasDelete);
			Ext.getCmp('{$winId}previzItem').setVisible(hasPreviz);
			Ext.getCmp('{$winId}unlockItem').setVisible(hasUnlock);
			Ext.getCmp('{$winId}undeleteItem').setVisible(hasUndelete);
		}
	}, this);
	//highlight node update after div update
	store.on('update', function(store, record, operation, node){
		if (operation == 'update-data-view') {
			Ext.fly(node).select('*:not(script)').highlight("C3CD31", {duration: 1});
		}
	});
END;
$view->addJavascript($jscontent);
$view->show();
?>