$(document).ready(function(){
	var search = function  () {
		if ($('#pmedia-keyword').val() && $('#pmedia-keyword').val().length < 3) {
			return false;
		}
		$.ajax({
			type: 		"GET",
			url: 		pageURL,
			data: 		'out=xml&category=' + $('#pmedia-category').val()+'&keyword=' + $('#pmedia-keyword').val(),
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
		//set form values if needed
		if (this.url.indexOf('category=') !== -1) {
			var cat = parseInt(this.url.substr(this.url.indexOf('category=') + 4));
			if (!isNaN(cat) && $('#pmedia-category').val() != cat) {
				$('#pmedia-category').val(cat);
				$('#pmedia-keyword').val('');
			}
		}
		if (xmlcontent.getElementsByTagName('data').length > 0) {
			$('.pmedia-results').replaceWith(xmlcontent.getElementsByTagName('data').item(0).firstChild.nodeValue);
			catchResults();
		}
		return true;
	}
	var catchResults = function() {
		//hide all content except first one
		$(".pmedia-result div.pmedia-content").hide();
		$(".pmedia-result div.pmedia-content").eq(0).slideToggle("slow");
		if ($('.pmedia-results .pmedia-pages').length > 0) {
			$('.pmedia-results .pmedia-pages a').click(getPage);
		}
		$(".pmedia-result h2").click(function(e){
			$(e.target).nextAll('.pmedia-content').slideToggle("slow");
		});
		//colorbox on results
		var images = $("a[rel='atm-enlarge']");
		if (images.length > 0) {
			images.colorbox({
				photo: true
			});
		}
	}
	$(".pmedia-loading").ajaxStart(function(){
		$(this).show();
	});
	$(".pmedia-loading").ajaxStop(function(){
		$(this).hide();
	});
	$('.pmedia-submit').hide();
	$('#pmedia-keyword').keyup(search);
	$('#pmedia-category').change(search);
	catchResults();
});