var content = portal.content;
var pageRegions = portal.pageRegions;
var contents = system.contentService.getRootContent();

var params = {
	context: portal,
	pageRegions: pageRegions,
	mainRegion: pageRegions.getRegion("main"),
    topRegion: pageRegions.getRegion("top"),
	contents: contents
};

var body = system.thymeleaf.render('views/page.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

