var editMode = portal.request.mode == 'edit';

var content = portal.content;
var component = portal.component;
var layoutRegions = portal.layoutRegions;

var body = system.thymeleaf.render('view/layout-3-col.html', {
    title: content.displayName,
    path: content.path,
    name: content.name,
    editable: editMode,
    resourcesPath: portal.url.createResourceUrl(''),
    component: component,
    leftRegion: layoutRegions.getRegion("left"),
    centerRegion: layoutRegions.getRegion("center"),
    rightRegion: layoutRegions.getRegion("right")
});


portal.response.body = body;
portal.response.contentType = 'text/html';
portal.response.status = 200;
