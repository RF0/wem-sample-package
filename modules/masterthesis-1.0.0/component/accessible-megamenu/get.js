var component = portal.component;
var site = portal.siteContent;
var content = portal.content;
var menuItems = system.contentService.getChildContent(site.path + "/main-menu").getList().toArray();
var editMode = portal.request.mode == 'edit';
var articlePage,articleData,articleChildren;
var contentId;

var params = {
    context: portal,
    content: content,
    site: site,
    component: component,
    menuContents: getMegaMenuContents(),
    articlePage: articlePage,
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
    if (menuItems!=null && menuItems.length>0){
        contentId = menuItems[0].id;
        articlePage = system.contentService.getContentById(contentId);
        articleChildren = system.contentService.getChildContent(articlePage.path);
        articleData = {
            children: articleChildren
        }
    }
    return menuItems;
}