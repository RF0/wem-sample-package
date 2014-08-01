var component = portal.component;
var site = portal.siteContent;
var content = portal.content;
var menuItems = system.contentService.getChildContent(site.path+"/mainmenu").getList().toArray();
var editMode = portal.request.mode == 'edit';
var article,articleData,articleChildren;
var contentId;

var params = {
    context: portal,
    component: component,
    menuContents: getMegaMenuContents(),
    article: article,
    articleData: articleData,
    title: "Master Thesis Menu",
    contentId: contentId,
    menuItems: menuItems,
    contentService: system.contentService
};

var body = system.thymeleaf.render('view/accessible-megamenu/index.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

function getMegaMenuContents(){

    contentId = menuItems[0].id;
    article = system.contentService.getContentById(contentId);
    articleChildren = system.contentService.getChildContent(article.path);
    articleData = {
        preface:article.contentData.getProperty("preface").value2,
        children: articleChildren
    }
    return menuItems;
}