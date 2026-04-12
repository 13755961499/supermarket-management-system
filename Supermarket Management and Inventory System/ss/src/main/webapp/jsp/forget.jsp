<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>忘记密码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
    <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
</head>

<style>
    .error{
        color: #ef4444;
    }

    html, body {
        width: 100%;
        height: 100%;
    }

    .content {
        background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
        display: flex;
        width: 100%;
        min-height: 100vh;
        justify-content: center;
        align-items: center;
    }

    #registerForm {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #registerForm .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #registerForm .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #registerForm .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #registerForm .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item>input::placeholder {
        color: #64748b;
    }

    #registerForm .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #registerForm .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #registerForm .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #registerForm .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #registerForm .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #registerForm .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #question {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #question .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #question .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #question .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #question .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item>input::placeholder {
        color: #64748b;
    }

    #question .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #question .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #question .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #question .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #question .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #question .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #question .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #question .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #question .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #update {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #update .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #update .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #update .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #update .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item>input::placeholder {
        color: #64748b;
    }

    #update .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #update .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #update .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #update .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #update .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #update .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #update .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #update .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #update .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #submitBtn {
        border: none;
        cursor: pointer;
        padding: 0;
        margin: 30px auto 10px;
        color: #ffffff;
        display: block;
        letter-spacing: 2px;
        font-size: 18px;
        font-weight: bold;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.4);
        outline: none;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        position: relative;
        min-width: auto;
        height: 50px;
        transition: all 0.3s ease;
    }

    #submitBtn:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(59, 130, 246, 0.5);
    }

    #loginBtn {
        cursor: pointer;
        padding: 0;
        margin: 15px 0 0;
        color: #64748b;
        display: inline-block;
        text-decoration: none;
        width: 100%;
        font-size: 14px;
        line-height: 1.5;
        transition: color 0.3s ease;
    }

    #loginBtn:hover {
        color: #3b82f6;
    }
</style>

<body>

<div class="content" id="app">
    <form id="registerForm" action="" method="post" v-if="tabIndex==1">
        <div class="title">忘记密码</div>
        <div class="list-item">
            <input name="username" placeholder="请输入用户名" class="form-control-i">
        </div>
        <div class="list-item">
            <select id="roleSelect" onchange="roleChange()" name="roles" class="form-control">
                <option value="" disabled selected>请选择角色</option>
            </select>
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="getSecurity">获取密保</button>
        <a id="loginBtn" href="javascript:window.location.href='login.jsp'">已有账号，直接登录</a>
    </form>
    <form id="question" action="" method="post" v-if="tabIndex==2">
        <div class="title">用户密保</div>
        <div class="list-item">
            <input v-model="forgetForm.pquestion" placeholder="密保问题" readonly class="form-control-i">
        </div>
        <div class="list-item">
            <input name="panswer1" id="daan" placeholder="请输入密保答案" class="form-control-i">
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="validateSecurity">校验</button>
    </form>
    <form id="update" action="" method="post" v-if="tabIndex==3">
        <div class="title">重置密码</div>
        <div class="list-item">
            <input name="password" placeholder="请输入新密码" class="form-control-i" type="password">
        </div>
        <div class="list-item">
            <input name="repassword" placeholder="请确认新密码" class="form-control-i" type="password">
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="updatePassword">确认修改</button>
    </form>
</div>

<!--  END OF PAPER WRAP -->

<!-- MAIN EFFECT -->
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">

    <%@ include file="utils/menu.jsp"%>
    <%@ include file="static/utils.js"%>
    <%@ include file="utils/baseUrl.jsp"%>

    var vm = new Vue({
        el: '#app',
        data:{
            tabIndex:1,
            tableName: '',
            forgetForm:{}
        },
        beforeCreate: function(){

        },
        created: function () {
        },
        methods: {
            getSecurity(){
                if(vm.tableName=='') {
                    alert('请选择角色');
                    return false;
                }
                let that = this;
                let data ={}
                let value = $('#registerForm').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                var url = baseUrl + vm.tableName+ "/security";
                $.ajax({
                    type: "GET",
                    url: url,
                    contentType: "application/json",
                    data:data,
                    beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                    success: function(res){
                        if(res.code == 0){
                            if(res.data==null){
                                alert('用户不存在')
                                return false
                            }
                            vm.forgetForm = res.data
                            vm.tabIndex = 2
                        }else if(res.code == 401){
                            <%@ include file="static/toLogin.jsp"%>
                        }else{
                            alert(res.msg)
                        }
                    },
                });
            },
            validateSecurity(){
                let data ={}
                let value = $('#question').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                if(data.panswer1!==vm.forgetForm.panswer){
                    alert('密保答案错误')
                    return false
                }
                alert('密保答案正确')
                vm.tabIndex=3

            },
            updatePassword(){
                let data ={}
                let value = $('#update').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                if(data.password ==''){
                    alert('请输入密码')
                    return false
                }
                if(data.password !==data.repassword){
                    alert('两次密码输入不一致')
                    return false
                }
                vm.forgetForm.password = data.password
                var url = baseUrl + vm.tableName +"/update";
                let json = JSON.stringify(vm.forgetForm);
                $.ajax({
                    type: "POST",
                    url: url,
                    contentType: "application/json",
                    data:json,
                    beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                    success: function(res){
                        if(res.code == 0){
                            alert('修改成功')
                            window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
                        }else{
                            alert(res.msg)
                        }
                    },
                });
            },
        }
    });
    function roleChange(){
        var options = document.getElementById("roleSelect").options;
        var index = document.getElementById("roleSelect").selectedIndex;
        var colVal = options[index].value;
        vm.tableName = colVal;
    }


    function ready() {
    }
    document.addEventListener("DOMContentLoaded", ready);
</script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>忘记密码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
    <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
</head>

<style>
    .error{
        color: #ef4444;
    }

    html, body {
        width: 100%;
        height: 100%;
    }

    .content {
        background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
        display: flex;
        width: 100%;
        min-height: 100vh;
        justify-content: center;
        align-items: center;
    }

    #registerForm {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #registerForm .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #registerForm .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #registerForm .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #registerForm .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item>input::placeholder {
        color: #64748b;
    }

    #registerForm .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #registerForm .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #registerForm .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #registerForm .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #registerForm .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #registerForm .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #question {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #question .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #question .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #question .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #question .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item>input::placeholder {
        color: #64748b;
    }

    #question .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #question .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #question .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #question .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #question .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #question .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #question .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #question .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #question .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #update {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #update .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #update .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #update .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #update .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item>input::placeholder {
        color: #64748b;
    }

    #update .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #update .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #update .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #update .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #update .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #update .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #update .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #update .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #update .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #submitBtn {
        border: none;
        cursor: pointer;
        padding: 0;
        margin: 30px auto 10px;
        color: #ffffff;
        display: block;
        letter-spacing: 2px;
        font-size: 18px;
        font-weight: bold;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.4);
        outline: none;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        position: relative;
        min-width: auto;
        height: 50px;
        transition: all 0.3s ease;
    }

    #submitBtn:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(59, 130, 246, 0.5);
    }

    #loginBtn {
        cursor: pointer;
        padding: 0;
        margin: 15px 0 0;
        color: #64748b;
        display: inline-block;
        text-decoration: none;
        width: 100%;
        font-size: 14px;
        line-height: 1.5;
        transition: color 0.3s ease;
    }

    #loginBtn:hover {
        color: #3b82f6;
    }
</style>

<body>

<div class="content" id="app">
    <form id="registerForm" action="" method="post" v-if="tabIndex==1">
        <div class="title">忘记密码</div>
        <div class="list-item">
            <input name="username" placeholder="请输入用户名" class="form-control-i">
        </div>
        <div class="list-item">
            <select id="roleSelect" onchange="roleChange()" name="roles" class="form-control">
                <option value="" disabled selected>请选择角色</option>
            </select>
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="getSecurity">获取密保</button>
        <a id="loginBtn" href="javascript:window.location.href='login.jsp'">已有账号，直接登录</a>
    </form>
    <form id="question" action="" method="post" v-if="tabIndex==2">
        <div class="title">用户密保</div>
        <div class="list-item">
            <input v-model="forgetForm.pquestion" placeholder="密保问题" readonly class="form-control-i">
        </div>
        <div class="list-item">
            <input name="panswer1" id="daan" placeholder="请输入密保答案" class="form-control-i">
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="validateSecurity">校验</button>
    </form>
    <form id="update" action="" method="post" v-if="tabIndex==3">
        <div class="title">重置密码</div>
        <div class="list-item">
            <input name="password" placeholder="请输入新密码" class="form-control-i" type="password">
        </div>
        <div class="list-item">
            <input name="repassword" placeholder="请确认新密码" class="form-control-i" type="password">
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="updatePassword">确认修改</button>
    </form>
</div>

<!--  END OF PAPER WRAP -->

<!-- MAIN EFFECT -->
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">

    <%@ include file="utils/menu.jsp"%>
    <%@ include file="static/utils.js"%>
    <%@ include file="utils/baseUrl.jsp"%>

    var vm = new Vue({
        el: '#app',
        data:{
            tabIndex:1,
            tableName: '',
            forgetForm:{}
        },
        beforeCreate: function(){

        },
        created: function () {
        },
        methods: {
            getSecurity(){
                if(vm.tableName=='') {
                    alert('请选择角色');
                    return false;
                }
                let that = this;
                let data ={}
                let value = $('#registerForm').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                var url = baseUrl + vm.tableName+ "/security";
                $.ajax({
                    type: "GET",
                    url: url,
                    contentType: "application/json",
                    data:data,
                    beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                    success: function(res){
                        if(res.code == 0){
                            if(res.data==null){
                                alert('用户不存在')
                                return false
                            }
                            vm.forgetForm = res.data
                            vm.tabIndex = 2
                        }else if(res.code == 401){
                            <%@ include file="static/toLogin.jsp"%>
                        }else{
                            alert(res.msg)
                        }
                    },
                });
            },
            validateSecurity(){
                let data ={}
                let value = $('#question').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                if(data.panswer1!==vm.forgetForm.panswer){
                    alert('密保答案错误')
                    return false
                }
                alert('密保答案正确')
                vm.tabIndex=3

            },
            updatePassword(){
                let data ={}
                let value = $('#update').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                if(data.password ==''){
                    alert('请输入密码')
                    return false
                }
                if(data.password !==data.repassword){
                    alert('两次密码输入不一致')
                    return false
                }
                vm.forgetForm.password = data.password
                var url = baseUrl + vm.tableName +"/update";
                let json = JSON.stringify(vm.forgetForm);
                $.ajax({
                    type: "POST",
                    url: url,
                    contentType: "application/json",
                    data:json,
                    beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                    success: function(res){
                        if(res.code == 0){
                            alert('修改成功')
                            window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
                        }else{
                            alert(res.msg)
                        }
                    },
                });
            },
        }
    });
    function roleChange(){
        var options = document.getElementById("roleSelect").options;
        var index = document.getElementById("roleSelect").selectedIndex;
        var colVal = options[index].value;
        vm.tableName = colVal;
    }


    function ready() {
    }
    document.addEventListener("DOMContentLoaded", ready);
</script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>忘记密码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
    <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
</head>

<style>
    .error{
        color: #ef4444;
    }

    html, body {
        width: 100%;
        height: 100%;
    }

    .content {
        background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
        display: flex;
        width: 100%;
        min-height: 100vh;
        justify-content: center;
        align-items: center;
    }

    #registerForm {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #registerForm .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #registerForm .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #registerForm .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #registerForm .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item>input::placeholder {
        color: #64748b;
    }

    #registerForm .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #registerForm .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #registerForm .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #registerForm .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #registerForm .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #registerForm .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #registerForm .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #registerForm .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #registerForm .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #question {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #question .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #question .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #question .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #question .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item>input::placeholder {
        color: #64748b;
    }

    #question .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #question .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #question .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #question .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #question .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #question .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #question .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #question .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #question .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #question .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #question .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #update {
        border: 2px solid #2d3748;
        padding: 40px;
        margin: 0;
        display: flex;
        min-height: auto;
        flex-wrap: wrap;
        border-radius: 16px;
        box-shadow: 0 10px 40px rgba(0,0,0,0.5);
        background: linear-gradient(145deg, #1e293b 0%, #0f172a 100%);
        width: 480px;
        justify-content: center;
        position: relative;
        text-align: center;
        height: auto;
    }

    #update .title {
        border: none;
        border-radius: 12px;
        padding: 20px 0;
        margin: 0 auto 30px;
        text-shadow: none;
        color: #e2e8f0;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        font-size: 24px;
        font-weight: bold;
        line-height: 44px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
    }

    #update .list-item {
        padding: 0;
        margin: 0 auto 20px;
        width: 100%;
        height: auto;
    }

    #update .list-item .item-label {
        color: #94a3b8;
        width: 64px;
        font-size: 14px;
        line-height: 44px;
    }

    #update .list-item>input {
        border: 0;
        border-radius: 0;
        padding: 0 16px;
        box-shadow: none;
        outline: none;
        color: #e2e8f0;
        width: 100%;
        font-size: 15px;
        border-color: #334155;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item>input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item>input::placeholder {
        color: #64748b;
    }

    #update .list-item>select {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item>select:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item .date {
        border: 0;
        padding: 0 16px;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        line-height: 48px;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        width: 100%;
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        background: #1e293b;
        transition: all 0.3s ease;
    }

    #update .list-item .date:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item-img {
        border: 0;
        padding: 0;
        margin: 10px auto;
        background: none;
        width: 100%;
        height: auto;
    }

    #update .list-item-img .item-label {
        padding: 0 10px 0 0;
        color: #94a3b8;
        font-weight: 500;
        width: 84px;
        font-size: 14px;
        line-height: 40px;
        text-align: right;
    }

    #update .list-item-img img {
        margin: 0 10px 0 0;
        object-fit: cover;
        display: inline-block;
        width: 100px;
        height: 50px;
        border-radius: 8px;
    }

    #update .list-item-img .btn-img {
        cursor: pointer;
        border: 2px solid #3b82f6;
        padding: 0 16px;
        color: #3b82f6;
        display: inline-block;
        font-size: 14px;
        line-height: 38px;
        border-radius: 8px;
        background: transparent;
        width: auto;
        position: relative;
        text-align: center;
        height: 38px;
        transition: all 0.3s ease;
    }

    #update .list-item-img .btn-img:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #update .list-item-img .btn-img input {
        position: absolute;
        opacity: 0;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    #update .list-item.emails .item-body input {
        border: 0;
        padding: 0 16px;
        margin: 0 20px 0 0;
        color: #e2e8f0;
        font-size: 15px;
        border-color: #334155;
        float: left;
        border-radius: 0;
        box-shadow: none;
        outline: none;
        background: #1e293b;
        width: calc(100% - 120px);
        border-width: 0 0 2px;
        border-style: solid;
        height: 48px;
        transition: all 0.3s ease;
    }

    #update .list-item.emails .item-body input:focus {
        border-color: #3b82f6;
        background: #0f172a;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    #update .list-item.emails .item-body button {
        border: 2px solid #3b82f6;
        cursor: pointer;
        padding: 0 16px;
        margin: 0;
        color: #3b82f6;
        font-size: 14px;
        float: right;
        border-radius: 8px;
        box-shadow: none;
        outline: none;
        background: transparent;
        width: auto;
        height: 42px;
        transition: all 0.3s ease;
    }

    #update .list-item.emails .item-body button:hover {
        background: #3b82f6;
        color: #ffffff;
    }

    #submitBtn {
        border: none;
        cursor: pointer;
        padding: 0;
        margin: 30px auto 10px;
        color: #ffffff;
        display: block;
        letter-spacing: 2px;
        font-size: 18px;
        font-weight: bold;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(59, 130, 246, 0.4);
        outline: none;
        background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
        width: 100%;
        position: relative;
        min-width: auto;
        height: 50px;
        transition: all 0.3s ease;
    }

    #submitBtn:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(59, 130, 246, 0.5);
    }

    #loginBtn {
        cursor: pointer;
        padding: 0;
        margin: 15px 0 0;
        color: #64748b;
        display: inline-block;
        text-decoration: none;
        width: 100%;
        font-size: 14px;
        line-height: 1.5;
        transition: color 0.3s ease;
    }

    #loginBtn:hover {
        color: #3b82f6;
    }
</style>

<body>

<div class="content" id="app">
    <form id="registerForm" action="" method="post" v-if="tabIndex==1">
        <div class="title">忘记密码</div>
        <div class="list-item">
            <input name="username" placeholder="请输入用户名" class="form-control-i">
        </div>
        <div class="list-item">
            <select id="roleSelect" onchange="roleChange()" name="roles" class="form-control">
                <option value="" disabled selected>请选择角色</option>
            </select>
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="getSecurity">获取密保</button>
        <a id="loginBtn" href="javascript:window.location.href='login.jsp'">已有账号，直接登录</a>
    </form>
    <form id="question" action="" method="post" v-if="tabIndex==2">
        <div class="title">用户密保</div>
        <div class="list-item">
            <input v-model="forgetForm.pquestion" placeholder="密保问题" readonly class="form-control-i">
        </div>
        <div class="list-item">
            <input name="panswer1" id="daan" placeholder="请输入密保答案" class="form-control-i">
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="validateSecurity">校验</button>
    </form>
    <form id="update" action="" method="post" v-if="tabIndex==3">
        <div class="title">重置密码</div>
        <div class="list-item">
            <input name="password" placeholder="请输入新密码" class="form-control-i" type="password">
        </div>
        <div class="list-item">
            <input name="repassword" placeholder="请确认新密码" class="form-control-i" type="password">
        </div>
        <button id="submitBtn" class="btn btn-primary" type="button" @click="updatePassword">确认修改</button>
    </form>
</div>

<!--  END OF PAPER WRAP -->

<!-- MAIN EFFECT -->
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">

    <%@ include file="utils/menu.jsp"%>
    <%@ include file="static/utils.js"%>
    <%@ include file="utils/baseUrl.jsp"%>

    var vm = new Vue({
        el: '#app',
        data:{
            tabIndex:1,
            tableName: '',
            forgetForm:{}
        },
        beforeCreate: function(){

        },
        created: function () {
        },
        methods: {
            getSecurity(){
                if(vm.tableName=='') {
                    alert('请选择角色');
                    return false;
                }
                let that = this;
                let data ={}
                let value = $('#registerForm').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                var url = baseUrl + vm.tableName+ "/security";
                $.ajax({
                    type: "GET",
                    url: url,
                    contentType: "application/json",
                    data:data,
                    beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                    success: function(res){
                        if(res.code == 0){
                            if(res.data==null){
                                alert('用户不存在')
                                return false
                            }
                            vm.forgetForm = res.data
                            vm.tabIndex = 2
                        }else if(res.code == 401){
                            <%@ include file="static/toLogin.jsp"%>
                        }else{
                            alert(res.msg)
                        }
                    },
                });
            },
            validateSecurity(){
                let data ={}
                let value = $('#question').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                if(data.panswer1!==vm.forgetForm.panswer){
                    alert('密保答案错误')
                    return false
                }
                alert('密保答案正确')
                vm.tabIndex=3

            },
            updatePassword(){
                let data ={}
                let value = $('#update').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                if(data.password ==''){
                    alert('请输入密码')
                    return false
                }
                if(data.password !==data.repassword){
                    alert('两次密码输入不一致')
                    return false
                }
                vm.forgetForm.password = data.password
                var url = baseUrl + vm.tableName +"/update";
                let json = JSON.stringify(vm.forgetForm);
                $.ajax({
                    type: "POST",
                    url: url,
                    contentType: "application/json",
                    data:json,
                    beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                    success: function(res){
                        if(res.code == 0){
                            alert('修改成功')
                            window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
                        }else{
                            alert(res.msg)
                        }
                    },
                });
            },
        }
    });
    function roleChange(){
        var options = document.getElementById("roleSelect").options;
        var index = document.getElementById("roleSelect").selectedIndex;
        var colVal = options[index].value;
        vm.tableName = colVal;
    }


    function ready() {
    }
    document.addEventListener("DOMContentLoaded", ready);
</script>

</body>

</html>
