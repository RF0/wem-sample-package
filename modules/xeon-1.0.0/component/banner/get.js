var params = {
	context: portal
};

var body = system.thymeleaf.render('views/banner.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

