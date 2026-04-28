function setMenu(){
    $('#navUl').append("<li class=\"nav-item dropdown\"><a href="+baseUrl+"index.jsp" + " role=\"button\" >首页</a></li>")
    $('#navUl').append("<li class=\"nav-item dropdown\"><a class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">个人中心</a><div class=\"dropdown-menu\"><a class=\"dropdown-item\" href="+baseUrl+"jsp/modules/center/updatePassword.jsp"+">修改密码</a><a id=\"myinfo\" class=\"dropdown-item\" href="+baseUrl+"jsp/modules/center/info.jsp"+">个人信息</a></div></li>")
    var role = window.sessionStorage.getItem('role');
    if(menus) {
        for(var i=0;i<menus.length;i++){
            if(menus[i].roleName == role){
                var menu = menus[i].backMenu;
                for(var j=0;j<menu.length;j++){
                    var menuChild = menu[j].child;

                    if(menuChild.length == 1){
                        var menuItem = document.createElement('li');
                        menuItem.setAttribute('class','nav-item');

                        var itemHref = document.createElement('a');
                        itemHref.setAttribute("class","nav-link");
                        itemHref.innerHTML = menu[j].menu;

                        var menuChildItem = menuChild[0];
                        var childHrefAttr = "";
                        if(menuChildItem.tableName.length>6 && menuChildItem.tableName.substr(0, 6)=="orders") {
                            var orderStatus =  menuChildItem.tableName.substr(7);
                            childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/orders/list.jsp?orderStatus="+orderStatus;
                        }else {
                            childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChildItem.tableName + "/list.jsp";
                        }

                        itemHref.setAttribute('href', childHrefAttr);

                        menuItem.appendChild(itemHref);
                        $('#navUl').append(menuItem);
                    }else{
                        var menuItem = document.createElement('li');
                        menuItem.setAttribute('class','nav-item dropdown');

                        var itemHref = document.createElement('a');
                        itemHref.setAttribute("class","nav-link dropdown-toggle");
                        itemHref.setAttribute('data-toggle','dropdown');
                        itemHref.setAttribute('href','#');
                        itemHref.setAttribute("role","button");
                        itemHref.setAttribute("aria-haspopup","true");
                        itemHref.setAttribute("aria-expanded","false");
                        itemHref.innerHTML = menu[j].menu;

                        menuItem.appendChild(itemHref);

                        var menuChildDiv = document.createElement('div');
                        menuChildDiv.setAttribute('class','dropdown-menu');

                        var secondMenuName = "";
                        for(var k=0;k<menuChild.length;k++){
                            var menuChildHref = document.createElement('a');
                            menuChildHref.setAttribute("class","dropdown-item");
                            if(secondMenuName == menuChild[k].tableName && secondMenuName != ""){
                                var childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChild[k].tableName + "/graph.jsp" ;

                            }else{
                                var childHrefAttr = "" ;
                                if(menuChild[k].tableName.length>6 && menuChild[k].tableName.substr(0, 6)=="orders") {
                                    var orderStatus =  menuChild[k].tableName.substr(7);
                                    childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/orders/list.jsp?orderStatus="+orderStatus ;
                                }else {
                                    childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChild[k].tableName + "/list.jsp" ;
                                }
                                secondMenuName = menuChild[k].tableName;
                            }
                            menuChildHref.setAttribute('href',childHrefAttr);
                            menuChildHref.innerHTML =  menuChild[k].menu ;
                            menuChildDiv.appendChild(menuChildHref);
                        }
                        menuItem.appendChild(menuChildDiv);
                        $('#navUl').append(menuItem);
                    }
                }
            }
        }
    } else {
        http("menu/list","GET",{
            page: 1,
            limit: 1
        },(res)=>{
            if(res.code == 0){
                menus = eval('(' + res.data.list[0].menujson+ ')');
                window.sessionStorage.setItem('menus',res.data.list[0].menujson)
                for(var i=0;i<menus.length;i++){
                    if(menus[i].roleName == role){
                        var menu = menus[i].backMenu;
                        for(var j=0;j<menu.length;j++){
                            var menuChild = menu[j].child;

                            if(menuChild.length == 1){
                                var menuItem = document.createElement('li');
                                menuItem.setAttribute('class','nav-item');

                                var itemHref = document.createElement('a');
                                itemHref.setAttribute("class","nav-link");
                                itemHref.innerHTML = menu[j].menu;

                                var menuChildItem = menuChild[0];
                                var childHrefAttr = "";
                                if(menuChildItem.tableName.length>6 && menuChildItem.tableName.substr(0, 6)=="orders") {
                                    var orderStatus =  menuChildItem.tableName.substr(7);
                                    childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/orders/list.jsp?orderStatus="+orderStatus;
                                }else {
                                    childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChildItem.tableName + "/list.jsp";
                                }

                                itemHref.setAttribute('href', childHrefAttr);

                                menuItem.appendChild(itemHref);
                                $('#navUl').append(menuItem);
                            }else{
                                var menuItem = document.createElement('li');
                                menuItem.setAttribute('class','nav-item dropdown');

                                var itemHref = document.createElement('a');
                                itemHref.setAttribute("class","nav-link dropdown-toggle");
                                itemHref.setAttribute('data-toggle','dropdown');
                                itemHref.setAttribute('href','#');
                                itemHref.setAttribute("role","button");
                                itemHref.setAttribute("aria-haspopup","true");
                                itemHref.setAttribute("aria-expanded","false");
                                itemHref.innerHTML = menu[j].menu;

                                menuItem.appendChild(itemHref);

                                var menuChildDiv = document.createElement('div');
                                menuChildDiv.setAttribute('class','dropdown-menu');

                                var secondMenuName = "";
                                for(var k=0;k<menuChild.length;k++){
                                    var menuChildHref = document.createElement('a');
                                    menuChildHref.setAttribute("class","dropdown-item");
                                    if(secondMenuName == menuChild[k].tableName && secondMenuName != ""){
                                        var childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChild[k].tableName + "/graph.jsp" ;

                                    }else{
                                        var childHrefAttr = "" ;
                                        if(menuChild[k].tableName.length>6 && menuChild[k].tableName.substr(0, 6)=="orders") {
                                            var orderStatus =  menuChild[k].tableName.substr(7);
                                            childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/orders/list.jsp?orderStatus="+orderStatus ;
                                        }else {
                                            childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChild[k].tableName + "/list.jsp" ;
                                        }
                                        secondMenuName = menuChild[k].tableName;
                                    }
                                    menuChildHref.setAttribute('href',childHrefAttr);
                                    menuChildHref.innerHTML =  menuChild[k].menu ;
                                    menuChildDiv.appendChild(menuChildHref);
                                }
                                menuItem.appendChild(menuChildDiv);
                                $('#navUl').append(menuItem);
                            }
                        }
                    }
                }
            }
        });
    }
}

// 强制设置菜单导航栏深色背景
$(document).ready(function() {
    setTimeout(function() {
        $('#menu-container').css({
            'background': 'linear-gradient(135deg, #1e293b 0%, #0f172a 100%)',
            'background-color': '#1e293b',
            'border-bottom': '2px solid #3b82f6'
        });
    }, 500);
});
