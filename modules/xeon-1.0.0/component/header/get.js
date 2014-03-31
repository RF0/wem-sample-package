var component = portal.component;
var page = portal.content.page;

var params = {
	context: portal,
	component: component,
	title: page.config.getProperty("title").getString(),
	description: page.config.getProperty("meta-description").getString()
};

var body = system.thymeleaf.render('views/header.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

