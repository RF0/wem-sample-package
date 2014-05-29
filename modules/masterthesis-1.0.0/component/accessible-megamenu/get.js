var component = portal.component;
var site = portal.siteContent;
var content = portal.content;
var contents = system.contentService.getChildContent(site.path+"/megamenu").getList().toArray();
var editMode = portal.request.mode == 'edit';
var article,articleData;
var contentId;

var params = {
    context: portal,
    component: component,
    menuContents: getMegaMenuContents(),
    article: article,
    articleData: articleData,
    title: "Master Thesis Menu",
    contentId: contentId
};

var body = system.thymeleaf.render('view/accessible-megamenu/index.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

function getMegaMenuContents(){

    contentId = contents[0].id;
    article = system.contentService.getContentById(contentId);
    articleData = {
        preface:article.contentData.getProperty("preface").value
    }
    return contents;
}