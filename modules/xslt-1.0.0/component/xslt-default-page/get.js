var xml = <dummy/>;
var editMode = portal.request.mode == 'edit';
var params = {
    title: portal.content.displayName,
    contentPath: portal.content.path,
    contentType: portal.content.type
};

var body = system.xslt.render('views/default-page.xsl', xml, params);

portal.response.contentType = 'text/html';
portal.response.body = body;
