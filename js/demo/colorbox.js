$(document).ready(function(){
	var images = $("a[rel='atm-enlarge']");
	if (images.length) {
		images.colorbox();
	}
});