var component = portal.component;
var site = portal.siteContent;
var content = portal.content;
var editMode = portal.request.mode == 'edit';


var params = {
    context: portal,
    component: component,
    menuContents: getMegaMenuContents(),
    title: "Master Thesis Menu"
};

var body = system.thymeleaf.render('view/accessible-megamenu/index.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

function getMegaMenuContents(){
    var contents = system.contentService.getChildContent(site.path+"/megamenu").getList().toArray();
    return contents;
}