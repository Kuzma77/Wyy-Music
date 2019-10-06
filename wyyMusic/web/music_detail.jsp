<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/10/6
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>

<%@ page import="com.bo.entity.Music" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>歌曲详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';  /* project id 1434175 */
            src: url('//at.alicdn.com/t/font_1434175_ukdbvf7y94.eot');
            src: url('//at.alicdn.com/t/font_1434175_ukdbvf7y94.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1434175_ukdbvf7y94.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1434175_ukdbvf7y94.woff') format('woff'),
            url('//at.alicdn.com/t/font_1434175_ukdbvf7y94.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1434175_ukdbvf7y94.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;}
        h2, h3, h4{
            color: rgb(73, 73, 73);
        }
        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }
        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }
        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(155, 154, 143);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .search-btn img {
            width: 50%;
            height: 50%;
        }
        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }
        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }
        .col-6 {
            height: 650px;
            padding-right: 10px;
        }
        .col-6 img {
            width: 60%;
            height: 50%;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<%
    Music music = (Music) request.getAttribute("music");
    pageContext.setAttribute("music", music);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>寻找知音</h2>
    <input type="text" placeholder="歌曲名/歌手名" class="search-input">
    <div class="search-btn">
        <i class="iconfont">&#xe604;</i>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${music.name}</h3>
            <h4>${music.author}</h4>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/img/${music.cover}" alt="">
                </div>
                <div class="col-4">

                    <p>歌名：安河桥</p>

                    <p>  演唱：宋冬野</p>

                    <p>  作词：宋冬野</p>

                    <p>   作曲：宋冬野</p>

                    <p>   让我再看你一遍</p>

                    <p>  从南到北</p>

                    <p>   像是被五环路蒙住的双眼</p>

                    <p>   请你再讲一遍</p>

                    <p>   关于那天</p>

                    <p>   抱着盒子的姑娘</p>

                    <p>   和擦汗的男人</p>

                    <p>   我知道 那些夏天</p>

                    <p>    就像青春一样回不来</p>

                    <p>   代替梦想的也只能是勉为其难</p>

                    <p>   我知道 吹过的牛逼</p>

                    <p>   也会随青春一笑了之</p>

                    <p>   让我困在城市里</p>

                    <p>   纪念你</p>

                    <p>   让我再尝一口</p>

                    <p>   秋天的酒</p>

                    <p>  一直往南方开</p>

                    <p>   不会太久</p>

                    <p>   让我再听一遍</p>

                    <p>   最美的那一句</p>

                    <p>   你回家了</p>

                    <p>   我在等你呢</p>

                    <p>   我知道</p>

                    <p>   那些夏天就像青春一样回不来</p>

                    <p>  代替梦想的</p>

                    <p>   也只能是勉为其难</p>

                    <p>   我知道</p>

                    <p>   吹过的牛逼也会随青春一笑了之</p>

                    <p>   让我困在城市里 纪念你</p>

                    <p>   我知道</p>

                    <p>   那些夏天就像你一样回不来</p>

                    <p>   我已不会再对谁</p>

                    <p>   满怀期待</p>

                    <p>   我知道</p>

                    <p>   这个世界每天都有太多遗憾</p>

                    <p>   所以 你好 再见</p>
                </div>
            </div>
        </div>
        <div class="col-4">
            <h3>热门推荐</h3>
            <hr>
            <img src="${pageContext.request.contextPath}/img/v.jpg" alt="">
            <img src="${pageContext.request.contextPath}/img/view.jpg" alt="">
            <img src="${pageContext.request.contextPath}/img/109951164356370853.jpg" alt="">
        </div>
    </div>

</div>
</body>
</html>