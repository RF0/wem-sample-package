var xml = <dummy/>;
var editMode = portal.request.mode == 'edit';
var params = {
    title: portal.content.displayName,
    componentType: portal.component.type,
    componentPath: portal.component.path,
    editable: editMode
};

var body = system.xslt.render('views/header-component.xsl', xml, params);

portal.response.contentType = 'text/html';
portal.response.body = body;