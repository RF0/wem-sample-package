var content = portal.content;
var page = portal.content.page;
var pageRegions = portal.pageRegions;
var contents = system.contentService.getRootContent();
var editMode = portal.request.mode == 'edit';
var slides = page.config.dataSets("slide");

var params = {
	context: portal,
	pageRegions: pageRegions,
	mainRegion: pageRegions.getRegion("main"),
	contents: contents,
	editable: editMode,
	banner: true,
	slides: slides
};

var body = system.thymeleaf.render('views/page.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

