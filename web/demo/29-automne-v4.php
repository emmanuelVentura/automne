<?php
if (file_exists($_SERVER['DOCUMENT_ROOT'].'/html/29.php')) {
	$cms_page_included = true;
	require($_SERVER['DOCUMENT_ROOT'].'/html/29.php');
} else {
	header('HTTP/1.x 301 Moved Permanently', true, 301);
	header('Location: /404.php');
	exit;
}
?>