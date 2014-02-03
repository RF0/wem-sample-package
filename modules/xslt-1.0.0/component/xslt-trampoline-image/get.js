var xml = <dummy/>;
var editMode = portal.request.mode == 'edit';
var params = {
    editable: editMode,
    title: portal.content.displayName,
    componentName: portal.component.name,
    componentPath: portal.component.path,
    imageUrl: portal.component.image != null ? portal.url.createImageByIdUrl(portal.component.image) : null
};

var body = system.xslt.render('views/trampoline-image.xsl', xml, params);

portal.response.contentType = 'text/html';
portal.response.body = body;
