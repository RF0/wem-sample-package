var content = portal.content;
var pageRegions = portal.pageRegions;
var site = portal.siteContent;
var contents = system.contentService.getChildContent(site.path);
var editMode = portal.request.mode == 'edit';


var params = {
	context: portal,
	pageRegions: pageRegions,
	mainRegion: pageRegions.getRegion("main"),
	contents: contents,
	editable: editMode,
	banner: false,
    site: site,
    content: content
};

var body = system.thymeleaf.render('view/page.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

