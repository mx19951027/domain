<%--
  Created by IntelliJ IDEA.
  User: Dell2
  Date: 2018/5/31
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 轮播 -->
<section id="main_carousel" class="carousel slide" data-ride="carousel">
    <div class="container">
        <!-- 下面的小点点，活动指示器 -->
        <ol class="carousel-indicators">
            <li data-target="#main_carousel" data-slide-to="0" class="active"></li>
            <li data-target="#main_carousel" data-slide-to="1"></li>
            <li data-target="#main_carousel" data-slide-to="2"></li>
            <li data-target="#main_carousel" data-slide-to="3"></li>
        </ol>
        <!-- 轮播项 -->
        <div class="carousel-inner" role="listbox">
            <div class="item active" data-image-lg="/images/slide_01_2000x410.jpg" data-image-xs="/images/slide_01_640x340.jpg"></div>
            <div class="item" data-image-lg="/images/slide_02_2000x410.jpg" data-image-xs="/images/slide_02_640x340.jpg"></div>
            <div class="item" data-image-lg="/images/slide_03_2000x410.jpg" data-image-xs="/images/slide_03_640x340.jpg"></div>
            <div class="item" data-image-lg="/images/slide_04_2000x410.jpg" data-image-xs="/images/slide_04_640x340.jpg"></div>
        </div>
        <!-- 控制按钮 -->
        <a class="left carousel-control" href="#main_carousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#main_carousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>
<!-- /轮播 -->
<section class="main-content">
    <div class="container">
        <div class="body-news col-md-5">
            <div class="news-nav">新闻动态</div>
            <div class="news-body"></div>
        </div>
        <div class="body-notice col-md-7">
            <div class="notice-nav">公告通知</div>
            <div class="notice-body"></div>
        </div>
    </div>
</section>
</body>
</html>
