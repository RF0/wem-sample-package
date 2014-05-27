var component = portal.component;

var params = {
    context: portal,
    component: component,
    title: "Master Thesis Menu"
};

var body = system.thymeleaf.render('view/accessible-megamenu/index.html', params);

portal.response.contentType = 'text/html';
portal.response.body = body;