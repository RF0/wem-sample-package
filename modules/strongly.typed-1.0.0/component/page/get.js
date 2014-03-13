var params = {
    title: 'Hello Dynamic :-)',
	resourcesPath: portal.url.createResourceUrl('')
};

var body = system.thymeleaf.render('views/page.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

