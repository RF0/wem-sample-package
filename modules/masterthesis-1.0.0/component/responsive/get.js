var editMode = portal.request.mode == 'edit';
var content = portal.content;
var component = portal.component;
var layoutRegions = portal.layoutRegions;

var body = system.thymeleaf.render('view/responsive.html', {
    title: content.displayName,
    path: content.path,
    name: content.name,
    editable: editMode,
    resourcesPath: portal.url.createResourceUrl(''),
    component: component,
    topRegion: layoutRegions.getRegion("top"),
    middleRegion: layoutRegions.getRegion("main"),
    bottomRegion: layoutRegions.getRegion("bottom")
});


portal.response.body = body;
portal.response.contentType = 'text/html';
portal.response.status = 200;
