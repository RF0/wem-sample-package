var component = portal.component;
var content = portal.content;
var contentData = content.contentData;
var site = portal.siteContent;
var welcomePage = system.contentService.getByPath(site.path + "/welcome");
var articleContent;

var params = {
    context: portal,
    component: component,
    title: "Article Show",
    articleContent:setArticleContent()
};

    var body = system.thymeleaf.render('view/article/article.html', params);
    portal.response.contentType = 'text/html';
    portal.response.body = body;


function setArticleContent(){
    if (content.getType()=='article'){
        return content;
    }
    else{
        return welcomePage;
    }
}