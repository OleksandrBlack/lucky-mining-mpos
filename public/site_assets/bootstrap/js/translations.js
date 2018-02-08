$(document).ready(function() {
	if(localStorage.getItem('language') != null) {
		language = localStorage.getItem('language');
		$.ajax({
			url: 'site_assets/bootstrap/translations/' + language + '.xml',
			success: function(xml) {
				$(xml).find('translation').each(function(){
					var id = $(this).attr('id');
					var text = $(this).text();
					$("." + id).html(text);
				});
			}
		});
	}
});

function testch(id) {
	localStorage.setItem('language', id);
	language = id
	$.ajax({
		url: 'site_assets/bootstrap/translations/' + language + '.xml',
		success: function(xml) {
			$(xml).find('translation').each(function(){
				var id = $(this).attr('id');
				var text = $(this).text();
				$("." + id).html(text);
			});
		}
	});
};