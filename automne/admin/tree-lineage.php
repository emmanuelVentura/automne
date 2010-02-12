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
// $Id: tree-lineage.php,v 1.2 2009/10/22 16:26:27 sebastien Exp $

/**
  * PHP page : Load tree window infos
  * Used accross an Ajax request render page tree in the tree window
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
//This file is an admin file. Interface must be secure
$view->setSecure();

$rootId = (int) sensitiveIO::request('root', 'sensitiveIO::isPositiveInteger', APPLICATION_ROOT_PAGE_ID);
$nodeId = (int) sensitiveIO::request('node', 'sensitiveIO::isPositiveInteger', APPLICATION_ROOT_PAGE_ID);
$lineage = CMS_tree::getLineage($rootId, $nodeId, false);
if (!$lineage) {
	$lineage = array();
}
$view->setContent($lineage);
$view->show();
?>