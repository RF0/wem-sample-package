var params = {
    title: 'Hello Dynamic :-)',
	context: portal
};

var body = system.thymeleaf.render('views/page.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

