var params = {
    title: 'Hello Dynamic :-)'
};

var body = system.thymeleaf.render('views/sample.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

