
var xml = 
<mydoc>
  <content>Hello</content>
</mydoc>;

var context =
<context>
  <baseUrl>http://localhost:8080</baseUrl>
</context>;

var params = {
  _: context
};

var body = system.xslt.render('views/sample1.xsl', xml, params);

portal.response.contentType = 'text/xml';
portal.response.body = body;

