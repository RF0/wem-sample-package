var content = portal.content;
var pageRegions = portal.pageRegions;
var site = portal.siteContent;


var params = {
	context: portal,
	pageRegions: pageRegions,
	mainRegion: pageRegions.getRegion("main")
};

var body = system.thymeleaf.render('view/defaultpage.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;
