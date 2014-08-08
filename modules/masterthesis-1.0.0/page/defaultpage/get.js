var content = portal.content;
var pageRegions = portal.pageRegions;
var site = portal.siteContent;
var editMode = portal.request.mode == 'edit';
var welcomePage = system.contentService.getByPath(site.path + "/welcome");

var params = {
    context: portal,
    pageRegions: pageRegions,
    mainRegion: pageRegions.getRegion("main"),
    topRegion: pageRegions.getRegion("top"),
    contents: getContentsWithoutImages(),
    editable: editMode,
    site: site,
    content: content,
    logoUrl: getLogoUrl()
};

var body = system.thymeleaf.render('view/defaultpage.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;

function getContentsWithoutImages() {
    var contents = system.contentService.getChildContent(site.path).getList().toArray();
    var noImagesContent = [];
    for (var i = 0; i <contents.length; i++) {
        if (contents[i].type.getContentTypeName() != "image") {
            noImagesContent.push(contents[i]);
        }
    }

    return noImagesContent;
}

function getLogoUrl() {
    var logoContent;
    var logo = site.contentData.getProperty('logo');
    if (logo) {
        logoContent = system.contentService.getContentById(logo.getString());
    }

    if (logoContent) {
        return portal.url.createImageByIdUrl(logoContent.id).filter("scaleblock(115,26)");
    } else {
        return portal.url.createResourceUrl('images/logo.png');
    }
}