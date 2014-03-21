var component = portal.component;

var params = {
	context: portal,
	component: component
};

var body = system.thymeleaf.render('views/contact-form.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;
