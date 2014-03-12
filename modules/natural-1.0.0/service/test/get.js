var rootContent = system.contentService.getRootContent();
var params = {
    title: 'Hello Dynamic :-)',
    rootContent: rootContent
};

var body = system.thymeleaf.render('views/sample.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

