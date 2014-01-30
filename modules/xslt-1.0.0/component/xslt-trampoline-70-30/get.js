var xml = <dummy/>;
var editMode = portal.request.mode == 'edit';
var params = {
    title: portal.content.displayName,
    componentName: portal.component.name,
    editable: editMode
};

var body = system.xslt.render('views/trampoline-70-30.xsl', xml, params);

portal.response.contentType = 'text/html';
portal.response.body = body;
