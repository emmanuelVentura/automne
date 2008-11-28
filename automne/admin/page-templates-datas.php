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
// $Id: page-templates-datas.php,v 1.1.1.1 2008/11/26 17:12:05 sebastien Exp $

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

define("MESSAGE_PAGE_MATCHING_TEMPLATE", 353);
define("MESSAGE_PAGE_UNMATCHING_TEMPLATE", 354);

//load interface instance
$view = CMS_view::getInstance();
//set default display mode for this page
$view->setDisplayMode(CMS_view::SHOW_JSON);
//get current template if any (then, return compatible templates)
$currentTpl = sensitiveIO::request('template', 'sensitiveIO::isPositiveInteger');
//search filters
$pageId = sensitiveIO::request('page', 'sensitiveIO::isPositiveInteger'); //used either to filter or to get templates replacement according to page website
$keyword = sensitiveIO::request('keyword');
$groups = sensitiveIO::request('groups', 'is_array');
$website = sensitiveIO::request('website', 'sensitiveIO::isPositiveInteger');
$viewinactive = sensitiveIO::request('viewinactive', '', false) ? true : false;
$start = sensitiveIO::request('start', 'sensitiveIO::isPositiveInteger', 0);
$limit = sensitiveIO::request('limit', 'sensitiveIO::isPositiveInteger', 0);
$definition = sensitiveIO::request('definition') ? true : false;

//items
$items = (sensitiveIO::request('items')) ? explode(',', sensitiveIO::request('items')) : array();
//Some actions to do on items founded
$activate = sensitiveIO::request('activate') ? true : false;
$desactivate = sensitiveIO::request('desactivate') ? true : false;
$delete = sensitiveIO::request('del') ? true : false;

if ($currentTpl) {
	//Page templates replacement
	$pageTemplate = CMS_pageTemplatesCatalog::getByID($currentTpl);
	//hack if page has no valid template attached
	if (!is_a($pageTemplate, "CMS_pageTemplate")) {
		$pageTemplate = new CMS_pageTemplate();
	}
	$tplReplacements = CMS_pageTemplatesCatalog::getTemplatesReplacement($pageTemplate, $cms_user, $pageId);
	$templates = array();
	$pageTplId = 0;
	//match templates
	foreach ($tplReplacements['match'] as $matchTpl) {
		$src = PATH_TEMPLATES_IMAGES_WR.'/'. (($matchTpl->getImage()) ? $matchTpl->getImage() : 'nopicto.gif');
		$description = sensitiveIO::ellipsis($matchTpl->getDescription(), 50);
		if ($description != $matchTpl->getDescription()) {
			$description = '<span ext:qtip="'.htmlspecialchars($matchTpl->getDescription()).'">'.$description.'</span>';
		}
		$description = $description ? $description.'<br />' : '';
		
		$templates[] = array(
			'id'			=> $matchTpl->getID(), 
			'name'			=> $matchTpl->getLabel(), 
			'image'			=> $src,
			'groups'		=> implode(', ', $matchTpl->getGroups()),
			'compatible'	=> true,
			'description'	=> 	'<div'.(!$matchTpl->isUseable() ? ' class="atm-inactive"' : '').'>'.
									$description.
									'<img src="'.(PATH_TEMPLATES_IMAGES_WR.'/'. (($matchTpl->getImage()) ? $matchTpl->getImage() : 'nopicto.gif')).'" style="float:left;margin-right:3px;" />'.
									$cms_language->getMessage(MESSAGE_PAGE_MATCHING_TEMPLATE).'<br />'.
									'Groupes : <strong>'.implode(', ', $matchTpl->getGroups()).'</strong><br />'.
									'<br class="x-form-clear" />'.
								'</div>',
		);
		if ($pageTemplate->getDefinitionFile() == $matchTpl->getDefinitionFile()) {
			$pageTplId = $matchTpl->getID();
		}
	}
	//not match templates
	foreach ($tplReplacements['nomatch'] as $noMatchTpl) {
		$src = PATH_TEMPLATES_IMAGES_WR.'/'. (($noMatchTpl->getImage()) ? $noMatchTpl->getImage() : 'nopicto.gif');
		$description = sensitiveIO::ellipsis($noMatchTpl->getDescription(), 50);
		if ($description != $noMatchTpl->getDescription()) {
			$description = '<span ext:qtip="'.htmlspecialchars($noMatchTpl->getDescription()).'">'.$description.'</span>';
		}
		$description = $description ? $description.'<br />' : '';
		
		$templates[] = array(
			'id'			=> $noMatchTpl->getID(), 
			'name'			=> $noMatchTpl->getLabel(), 
			'image'			=> $src,
			'groups'		=> implode(', ', $noMatchTpl->getGroups()),
			'compatible'	=> false,
			'description'	=> 	'<div'.(!$noMatchTpl->isUseable() ? ' class="atm-inactive"' : '').'>'.
									$description.
									'<img src="'.(PATH_TEMPLATES_IMAGES_WR.'/'. (($noMatchTpl->getImage()) ? $noMatchTpl->getImage() : 'nopicto.gif')).'" style="float:left;margin-right:3px;" />'.
									'<span class="atm-red">'.$cms_language->getMessage(MESSAGE_PAGE_UNMATCHING_TEMPLATE).'</span><br />'.
									'Groupes : <strong>'.implode(', ', $noMatchTpl->getGroups()).'</strong><br />'.
									'<br class="x-form-clear" />'.
								'</div>',
		);
	}
	//if page template no set in list, add it in first position
	if ($pageTplId === 0) {
		$pageTplId = CMS_pageTemplatesCatalog::getTemplateIDForCloneID($pageTemplate->getID());
		$src = PATH_TEMPLATES_IMAGES_WR.'/'. (($pageTemplate->getImage()) ? $pageTemplate->getImage() : 'nopicto.gif');
		$description = sensitiveIO::ellipsis($pageTemplate->getDescription(), 50);
		if ($description != $pageTemplate->getDescription()) {
			$description = '<span ext:qtip="'.htmlspecialchars($pageTemplate->getDescription()).'">'.$description.'</span>';
		}
		$description = $description ? $description.'<br />' : '';
		
		array_unshift($templates,array(
			'id'			=> $pageTplId, 
			'name'			=> $pageTemplate->getLabel(), 
			'image'			=> $src,
			'groups'		=> implode(', ', $pageTemplate->getGroups()),
			'compatible'	=> true,
			'description'	=> 	'<div'.(!$pageTemplate->isUseable() ? ' class="atm-inactive"' : '').'>'.
									$description.
									'<img src="'.(PATH_TEMPLATES_IMAGES_WR.'/'. (($pageTemplate->getImage()) ? $pageTemplate->getImage() : 'nopicto.gif')).'" style="float:left;margin-right:3px;" />'.
									$cms_language->getMessage(MESSAGE_PAGE_MATCHING_TEMPLATE).'<br />'.
									'Groupes : <strong>'.implode(', ', $pageTemplate->getGroups()).'</strong><br />'.
									'<br class="x-form-clear" />'.
								'</div>',
			
		));
	}
	$templatesDatas = array();
	$templatesDatas = array('results' => $templates);
} else {
	if (!$items) {
		//filter by page if needed
		$pageTplIds = array();
		if ($pageId) {
			$page = CMS_tree::getPageByID($pageId);
			if (is_object($page)) {
				$pageTemplate = $page->getTemplate();
				if (is_object($pageTemplate)) {
					$pageTplIds = array(CMS_pageTemplatesCatalog::getTemplateIDForCloneID($pageTemplate->getID()));
				}
			}
		}
	} else {
		$pageTplIds = $items;
	}
	$templatesDatas = array();
	$templatesDatas['results'] = array();
	
	//get array of available templates
	$templates = CMS_pageTemplatesCatalog::getAll($viewinactive, $keyword, $groups, $website, $pageTplIds, $cms_user, $start, $limit);
	$templatesDatas['total'] = sizeof(CMS_pageTemplatesCatalog::getAll($viewinactive, $keyword, $groups, $website, $pageTplIds, $cms_user, 0, 0, false));
	
	//get websites
	$websites = CMS_websitesCatalog::getAll();
	foreach ($templates as $template) {
		if ($cms_user->hasAdminClearance(CLEARANCE_ADMINISTRATION_EDIT_TEMPLATES)) { //templates
			if ($delete) {
				if (is_a($template, "CMS_pageTemplate") && !$template->hasPages()) {
					$log = new CMS_log();
					$log->logMiscAction(CMS_log::LOG_ACTION_TEMPLATE_DELETE, $cms_user, "Template : ".$template->getLabel());
					if ($template->isPrivate()) {
						$template->destroy();
					} else {
						//destroy with definition file
						$template->destroy(true);
					}
					unset($template);
					$templatesDatas['total']--;
					continue;
				}
			}
			if ($activate) {
				$template->setUsability(1);
				$template->writeToPersistence();
			}
			if ($desactivate) {
				$template->setUsability(0);
				$template->writeToPersistence();
			}
		}
		$hasPages = $template->hasPages();
		$websitesList = '';
		$websitesDenied = $template->getWebsitesDenied();
		foreach ($websites as $id => $website) {
			if (!isset($websitesDenied[$id])) {
				$websitesList .= ($websitesList) ? ', ':'';
				$websitesList .= $website->getLabel();
			}
		}
		$description = sensitiveIO::ellipsis($template->getDescription(), 50);
		if ($description != $template->getDescription()) {
			$description = '<span ext:qtip="'.htmlspecialchars($template->getDescription()).'">'.$description.'</span>';
		}
		$description = $description ? $description.'<br />' : '';
		//append template definition if needed
		$definitionDatas = ($definition) ? $template->getDefinition() : '';
		$templatesDatas['results'][] = array(
			'id'			=> $template->getID(),
			'name'			=> $template->getLabel(),
			'image'			=> PATH_TEMPLATES_IMAGES_WR.'/'. (($template->getImage()) ? $template->getImage() : 'nopicto.gif'),
			'groups'		=> implode(', ', $template->getGroups()),
			'websites'		=> $websitesList,
			'desc'			=> $template->getDescription(),
			'filter'		=> $template->getLabel().' '.implode(', ', $template->getGroups()),
			'description'	=> 	'<div'.(!$template->isUseable() ? ' class="atm-inactive"' : '').'>'.
									'<img src="'.(PATH_TEMPLATES_IMAGES_WR.'/'. (($template->getImage()) ? $template->getImage() : 'nopicto.gif')).'" style="float:left;margin-right:3px;width:80px;" />'.
									$description.
									'Sites : <strong>'.$websitesList.'</strong><br />'.
									'Groupes : <strong>'.implode(', ', $template->getGroups()).'</strong><br />'.
									'Actif : <strong>'.($template->isUseable() ? 'Oui':'Non').'</strong><br />'.
									'Employ� : <strong>'.($hasPages ? 'Oui':'Non').'</strong>'.($hasPages ? ' - <a href="#" onclick="Automne.message.show(\'TODO\');return false;">Voir</a>'.
									($cms_user->hasAdminClearance(CLEARANCE_ADMINISTRATION_REGENERATEPAGES) ? ' / <a href="#" onclick="Automne.server.call(\'templates-controler.php\', \'\', {templateId:'.$template->getID().', action:\'regenerate\'});return false;">R�g�n�rer</a>' : '').' les pages.' : '').
									'<br class="x-form-clear" />'.
								'</div>',
			'activated'		=> $template->isUseable() ? true : false,
			'used'			=> $hasPages,
			'definition'	=> $definitionDatas
		);
	}
}
$view->setContent($templatesDatas);
$view->show();
?>