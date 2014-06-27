var component = portal.component;
var content = portal.content;
var articleContent = content.contentData;

var params = {
    context: portal,
    component: component,
    content: content,
    articleContent: articleContent,
    title: "Article Show"
};

var body = system.thymeleaf.render('view/article/article.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;