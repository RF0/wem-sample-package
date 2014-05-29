var component = portal.component;

var params = {
    context: portal,
    component: component,
    title: "Article Show"
};

var body = system.thymeleaf.render('view/article-show/article-show.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;