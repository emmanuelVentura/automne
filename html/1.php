<?php header('HTTP/1.x 302 Found',true,302);
header("Location: http://localhost/web/fr/2-accueil.php");
exit;
 ?><?php //Generated on Fri, 28 Nov 2008 15:56:32 +0100 by Automne (TM) 4.0.0a1
if (!isset($cms_page_included) && !$_POST && !$_GET) {
	header('HTTP/1.x 301 Moved Permanently', true, 301);
	header('Location: http://localhost/web/1-demo-automne.php');
	exit;
}
require_once($_SERVER["DOCUMENT_ROOT"]."/cms_rc_frontend.php");
 ?><?php if (defined('APPLICATION_XHTML_DTD')) echo APPLICATION_XHTML_DTD."\n";  ?>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
	<link rel="icon" type="image/x-icon" href="http://localhost/favicon.ico" />
	<meta name="language" content="fr" />
	<meta name="generator" content="Automne (TM)" />
	<meta name="identifier-url" content="http://localhost" />
	<script type="text/javascript" src="/js/CMS_functions.js"></script>

</head>
<body>
<!-- empty template, only used for pages with redirection -->
&nbsp;
<?php if (SYSTEM_DEBUG && STATS_DEBUG) {view_stat(); if (VIEW_SQL && isset($_SESSION["cms_context"]) && is_object($_SESSION["cms_context"])) {save_stat();}}  ?>
</body>
</html>