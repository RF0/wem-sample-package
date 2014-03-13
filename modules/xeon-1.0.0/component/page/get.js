var content = portal.content;
var pageRegions = portal.pageRegions;

var params = {
	context: portal,
	pageRegions: pageRegions,
	mainRegion: pageRegions.getRegion("main")
};

var body = system.thymeleaf.render('views/page.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

