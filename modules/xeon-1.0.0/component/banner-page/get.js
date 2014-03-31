var content = portal.content;
var pageRegions = portal.pageRegions;
var contents = system.contentService.getRootContent();

var params = {
	context: portal,
	pageRegions: pageRegions,
	topRegion: pageRegions.getRegion("top"),
	mainRegion: pageRegions.getRegion("main"),
	contents: contents,
	banner: true
};

var body = system.thymeleaf.render('views/page.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

