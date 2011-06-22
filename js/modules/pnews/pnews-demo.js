$(document).ready(function(){
	var search = function  () {
		if ($('#pnews-keyword').val() && $('#pnews-keyword').val().length < 3) {
			return false;
		}
		$.ajax({
			type: 		"GET",
			url: 		pageURL,
			data: 		'out=xml&keyword=' + $('#pnews-keyword').val(),
			success: 	displaySearch
		});
		return true;
	}
	var getPage = function  (e) {
		var href = $(e.target).is('a') ? $(e.target).attr("href") : $(e.target).parent('a').attr("href");
		if (href) {
			e.preventDefault();
			$.ajax({
				type: 		"GET",
				url: 		href,
				data: 		'out=xml',
				success: 	displaySearch
			});
			return false;
		}
		return true;
	}
	var displaySearch = function  (xmlcontent) {
		if (xmlcontent.getElementsByTagName('data').length > 0) {
			$('.pnews-results').html(xmlcontent.getElementsByTagName('data').item(0).firstChild.nodeValue);
			if ($('.pnews-pages')) {
				$('.pnews-pages a').click(getPage);
			}
			//colorbox on results
			var images = $("a[rel='atm-enlarge']");
			if (images.length) {
				images.colorbox({
					photo: true
				});
			}
		}
		return true;
	}
	$(".pnews-loading").ajaxStart(function(){
		$(this).show();
	});
	$(".pnews-loading").ajaxStop(function(){
		$(this).hide();
	});
	$('.pnews-submit').hide();
	$('#pnews-keyword').keyup(search);
	if ($('.pnews-pages')) {
		$('.pnews-pages a').click(getPage);
	}
});