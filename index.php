<?php
// +----------------------------------------------------------------------+
// | Automne (TM)														  |
// +----------------------------------------------------------------------+
// | Copyright (c) 2000-2010 WS Interactive								  |
// +----------------------------------------------------------------------+
// | Automne is subject to version 2.0 or above of the GPL license.		  |
// | The license text is bundled with this package in the file			  |
// | LICENSE-GPL, and is available through the world-wide-web at		  |
// | http://www.gnu.org/copyleft/gpl.html.								  |
// +----------------------------------------------------------------------+
// | Author: Sébastien Pauchet <sebastien.pauchet@ws-interactive.fr>      |
// +----------------------------------------------------------------------+

/**
  * Automne index handler. Redirect to correct website accordingly to queried domain
  * @author Sébastien Pauchet <sebastien.pauchet@ws-interactive.fr> &
  */

require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");
$httpHost = @parse_url($_SERVER['HTTP_HOST'], PHP_URL_HOST) ? @parse_url($_SERVER['HTTP_HOST'], PHP_URL_HOST) : $_SERVER['HTTP_HOST'];
//search page id by domain address
$website = CMS_websitesCatalog::getWebsiteFromDomain($httpHost);
if (!$website) {
	$website = CMS_websitesCatalog::getMainWebsite();
}
$rootPage = $website->getRoot();
//redirect to subpage if any
$redirectlink = $rootPage->getRedirectLink(true);
while ($redirectlink->hasValidHREF() && sensitiveIO::IsPositiveInteger($redirectlink->getInternalLink())) {
	$rootPage = new CMS_page($redirectlink->getInternalLink());
	$redirectlink = $rootPage->getRedirectLink(true);
}
$pPath = $rootPage->getHTMLURL(false, false, PATH_RELATIVETO_FILESYSTEM);
if ($pPath) {
	if (file_exists($pPath)) {
		$cms_page_included = true;
		require($pPath);
		exit;
	}
}
header('HTTP/1.x 301 Moved Permanently', true, 301);
header('Location: '.PATH_SPECIAL_PAGE_NOT_FOUND_WR.'');
exit;
?>
