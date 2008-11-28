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
// | Author: S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>      |
// +----------------------------------------------------------------------+
//
// $Id: page-rows-datas.php,v 1.1.1.1 2008/11/26 17:12:05 sebastien Exp $

/**
  * PHP page : Load page templates infos
  * Used accross an Ajax request.
  * Return formated templates infos in JSON format
  *
  * @package CMS
  * @subpackage admin
  * @author S�bastien Pauchet <sebastien.pauchet@ws-interactive.fr>
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_admin.php");

//load interface instance
$view = CMS_view::getInstance();
//set default display mode for this page
$view->setDisplayMode(CMS_view::SHOW_JSON);

//search filters
$pageId = sensitiveIO::request('page', 'sensitiveIO::isPositiveInteger');
$keyword = sensitiveIO::request('keyword');
$groups = sensitiveIO::request('groups', 'is_array');
$viewinactive = sensitiveIO::request('viewinactive', '', false) ? true : false;
$definition = sensitiveIO::request('definition') ? true : false; //append XML definition to returned content ?
$currentTpl = sensitiveIO::request('template', 'sensitiveIO::isPositiveInteger');
$currentCS = sensitiveIO::request('cs');
$start = sensitiveIO::request('start', 'sensitiveIO::isPositiveInteger', 0);
$limit = sensitiveIO::request('limit', 'sensitiveIO::isPositiveInteger', $_SESSION["cms_context"]->getRecordsPerPage());

//items
$items = (sensitiveIO::request('items')) ? explode(',', sensitiveIO::request('items')) : array();
//Some actions to do on items founded
$activate = sensitiveIO::request('activate') ? true : false;
$desactivate = sensitiveIO::request('desactivate') ? true : false;
$delete = sensitiveIO::request('del') ? true : false;

$rowsDatas = array();
$rowsDatas['results'] = array();

if (!$cms_user->hasModuleClearance(MOD_STANDARD_CODENAME, CLEARANCE_MODULE_EDIT)) {
	CMS_grandFather::raiseError('User has no edit management rights on standard module ...');
	$view->setContent($rowsDatas);
	$view->show();
}

if (!$items) {
	//filter by page if needed
	$rowIds = array();
	if ($pageId) {
		$rowIds = CMS_rowsCatalog::getRowsByPage($pageId);
	}
} else {
	$rowIds = $items;
}
if ($currentTpl) {
	//check if template is a clone
	$tplId = CMS_pageTemplatesCatalog::getTemplateIDForCloneID($currentTpl);
	if ($tplId && $tplId != $currentTpl) {
		$currentTpl = $tplId;
	}
}
$rows = CMS_rowsCatalog::getAll($viewinactive, $keyword, $groups, $rowIds, $cms_user, $currentTpl, $currentCS, $start, $limit);
$rowsDatas['total'] = sizeof(CMS_rowsCatalog::getAll($viewinactive, $keyword, $groups, $rowIds, $cms_user, $currentTpl, $currentCS, 0, 0, false));
foreach ($rows as $row) {
	if ($cms_user->hasAdminClearance(CLEARANCE_ADMINISTRATION_TEMPLATES)) { //rows
		if ($delete) {
			if (is_a($row, "CMS_row") && !$row->hasClientSpaces()) {
				$log = new CMS_log();
				$log->logMiscAction(CMS_log::LOG_ACTION_TEMPLATE_DELETE, $cms_user, "Row : ".$row->getLabel());
				$row->destroy();
				unset($row);
				$rowsDatas['total']--;
				continue;
			}
		}
		if ($activate) {
			$row->setUsability(1);
			$row->writeToPersistence();
		}
		if ($desactivate) {
			$row->setUsability(0);
			$row->writeToPersistence();
		}
	}
	$hasClientSpaces = $row->hasClientSpaces();
	
	$description = sensitiveIO::ellipsis($row->getDescription(), 50);
	if ($description != $row->getDescription()) {
		$description = '<span ext:qtip="'.htmlspecialchars($row->getDescription()).'">'.$description.'</span>';
	}
	$description = $description ? $description.'<br />' : '';
	//append template definition if needed
	$definitionDatas = $definition ? $row->getDefinition() : '';
	//templates filters
	$filteredTemplates = '';
	if ($row->getFilteredTemplates()) {
		foreach ($row->getFilteredTemplates() as $tplId) {
			$template = CMS_pageTemplatesCatalog::getByID($tplId);
			if (is_object($template) && !$template->hasError()) {
				$filteredTemplates .= ($filteredTemplates) ? ', ' : '';
				$filteredTemplates .= $template->getLabel();
			}
		}
	}
	$filtersInfos = '';
	$filtersInfos .= ($filteredTemplates) ? 'Aux mod�les : '.$filteredTemplates : '';
	$filtersInfos = ($filtersInfos) ? '<br />Usage restreint : <strong>'.$filtersInfos.'</strong>' : '';
	
	$rowsDatas['results'][] = array(
		'id'			=> $row->getID(),
		'name'			=> $row->getLabel(),
		'image'			=> $row->getImage(),
		'groups'		=> implode(', ', $row->getGroups()),
		'desc'			=> $row->getDescription(),
		'filter'		=> $row->getLabel().' '.implode(', ', $row->getGroups()),
		'tplfilter'		=> implode(',', $row->getFilteredTemplates()),
		'description'	=> 	'<div'.(!$row->isUseable() ? ' class="atm-inactive"' : '').'>'.
								'<img src="'.$row->getImage().'" style="float:left;margin-right:3px;width:70px;" />'.
								$description.
								'Groupes : <strong>'.implode(', ', $row->getGroups()).'</strong><br />'.
								'Actif : <strong>'.($row->isUseable() ? 'Oui':'Non').'</strong><br />'.
								'Employ� : <strong>'.($hasClientSpaces ? 'Oui':'Non').'</strong>'.($hasClientSpaces ? ' - <a href="#" onclick="Automne.message.show(\'TODO\');return false;">Voir</a>'.
								($cms_user->hasAdminClearance(CLEARANCE_ADMINISTRATION_REGENERATEPAGES) ? ' / <a href="#" onclick="Automne.server.call(\'rows-controler.php\', \'\', {rowId:'.$row->getID().', action:\'regenerate\'});return false;">R�g�n�rer</a>' : '').' les pages.' : '').
								$filtersInfos.
								'<br class="x-form-clear" />'.
							'</div>',
		'activated'		=> $row->isUseable() ? true : false,
		'used'			=> $hasClientSpaces,
		'definition'	=> $definitionDatas
	);
}

$view->setContent($rowsDatas);
$view->show();
?>