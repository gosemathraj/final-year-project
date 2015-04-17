<%-- 
    Document   : index
    Created on : Feb 22, 2015, 8:49:18 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="vo.UserInfo"%>
<!DOCTYPE html>

<HTML>
<head>
	<title>BadgerKing || Gamified learning</title>

	<link rel="shortcut icon"  href="../images/dice1.png">
	<link rel="stylesheet" href="../css/style.css">
	<!--link rel="stylesheet" type="text/css" href="../css/demo.css" /-->
        <link rel="stylesheet" type="text/css" href="../css/style2.css" />
	<script type="text/javascript" src="../js/modernizr.custom.28468.js"></script>  
        <script src="../js/jquery.js"></script>

<style>
@font-face {
    font-family: gamified;
    src: url('/lastattempt/css/fonts/Thick.ttf');
}

@font-face {
    font-family: mar;
    src: url('/lastattempt/css/fonts/GoodDog.otf');
}

@font-face {
    font-family: game;
    src: url('/lastattempt/css/fonts/Game.ttf');
}

@font-face {
    font-family: pricedow;
    src: url('/lastattempt/css/fonts/pricedow.ttf');
}

@font-face {
    font-family: scramble;
    src: url('/lastattempt/css/fonts/ScrambleMixed.ttf');
}

@font-face {
    font-family: sims;
    src: url('/lastattempt/css/fonts/SimsLLHP.ttf');
}

@font-face {
    font-family: halflife;
    src: url('/lastattempt/css/fonts/halflife.ttf');
}

.da-slide h2 {
	font-family: mar;
}

.grid_7,.ul {
    font-family: myFirstFont;
    font-weight: 400;
    text-transform: uppercase;
    font-size: 100%
    
}

#loader{
 z-index:999999;
 display:block;
 position:fixed;
 top:0;
 left:0;
 width:100%;
 height:100%;
 background:url(../images/ajax-loader3.gif) 50% 50% no-repeat #ffffff;
}

#second_header {
    height: 51px;
    overflow: hidden;
}

#second_innerheader {
    height: 50px;
    margin-left: auto;
    margin-right: auto;
    background: none repeat scroll 0% 0% whitesmoke;
    width: 1109px;    
}

#block_nav {
    height: 75px;
    width: 784px;
    margin-left: auto;
    margin-right: auto;
    padding-top: 12px;   
}

#nav {
    margin-left: auto;
    margin-right: auto;
}

li {
    float: left;
    margin-right: 30px;
    margin-left: 30px;
}

ul {
    
}

#base_left_top {
    border-top-right-radius: 12px;
    border-top-left-radius: 12px;
    height: 36px;
    overflow: hidden;
    background: none repeat scroll 0% 0% #316897;
}

#title {
    margin-top: 5px;
}

#title h2 {
    margin: 0px 0px 0px 13px;
    font-size: 19px;
}

#left_bg {
    height: 323px;
    width: 580px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 17px;
    background: none repeat scroll 0% 0% whitesmoke;  
    overflow: hidden;
}

#footer {
    text-align: center;
    font-size: 10px;
    margin-top: 7px;   
}

h4 {
    margin: 0px;
}

a {
    color: #222;
}

#base_rightcontainer {
    height: 387px;
    float: left;
    background: none repeat scroll 0% 0% #DFE4E4;
    border-style: solid;
    border-width: 1px;
    border-top-right-radius: 12px;
    border-top-left-radius: 12px;
    width: 328px;
    margin-left: 77px;
}

#base_top_right {
    height: 36px;
    border-top-right-radius: 12px;
    border-top-left-radius: 12px;
    overflow: hidden;
    background: none repeat scroll 0% 0% #316897;
}

#title_right {
    margin-top: 7px;
    margin-left: 9px;
}

#title_right h2 {
    margin: 0px;
    font-size: 19px;
}

#right_bg {
    margin-right: auto;
    margin-left: auto;
    height: 327px;
    background: none repeat scroll 0% 0% #F5F5F5;
    width: 300px;
}

#top5 {
    text-align: center;
    margin-top: 16px;
    font-size: 14px;
}

#inner_right_bg {
    margin-left: auto;
    margin-right: auto;
    //background: none repeat scroll 0% 0% #F00;
    width: 282px;
    height: 300px;
    overflow-y: scroll;
    
}

#first_topper {
    height: 60px;
    border-style: solid;
    border-width: 1px;
    margin-top: 9px;
}

#second_topper {
    height: 60px;
    border-style: solid;    
    border-width: 1px;
    margin-top: 9px;
}

#third_topper {
    height: 60px;
    border-style: solid;   
    border-width: 1px;
    margin-top: 9px;
}

#fourth_topper {
    height: 60px;
    border-style: solid;    
    border-width: 1px;
    margin-top: 9px;
}

#fifth_topper {
    height: 60px;
    border-style: solid;  
    border-width: 1px;
    margin-top: 9px;
}

#section_one {
    margin-left: auto;
    margin-right: auto;
    width: 1109px;
    background: none repeat scroll 0% 0% #F5F5F5;
    height: 815px;;  
}

#inner_section_one {
    
}

#left_inner_section_one {
    float: left;
    width: 200px;
    height: 800px;
    overflow: hidden;
    background: none repeat scroll 0% 0% wheat;   
}

#inner_left_inner_section_one {
    margin-left: auto;
    margin-right: auto;
    width: 160px;   
}

#middle_inner_section_one {
    float: left;
    width: 629px;
    height: 800px;   
    overflow-y: scroll;
}

#inner_middle_inner_section_one {
    width: 600px;
    margin: 12px;
    overflow: hidden;
}

#right_inner_section_one {
    float: right;
    width: 280px;
    height: 800px;
    background: none repeat scroll 0% 0% wheat;  
}

#inner_right_inner_section_one {
    margin-left: auto;
    margin-right: auto;
    width: 250px;    
}

#inner_left_inner_section_one ul {
padding: 0px;
margin-left: 0px;  
margin-top: 9px;
}

#inner_left_inner_section_one li {
margin-left: 0px;
margin-right: 0px;
float: none;  
margin-top: 15px;
}

#algo1,#algo2,#algo3,#algo4,#algo5,#algo6,#algo7,#algo8,#algo9,#algo9,#algo10,#algo11,#algo12 {
    height: 235px;
    background: none repeat scroll 0% 0% #DFE4E4;
}

#inner_algo1 {
    margin: 12px;
    border-top-right-radius: 12px;
    overflow: hidden;
    height: 230px;
}

#algo_header1 {
    height: 35px;
    border-top-right-radius: 12px;
    background: none repeat scroll 0% 0% #95CCDC;
    margin-top: 10px;
    border-top-left-radius: 12px;
    overflow: hidden;
}

#algo_left {
    width: 127px;
    height: 100px;
    float: left;
}

#algo_right {
    height: 100px;
    margin-top: 13px;
}

#algo_footer {
    height: 27px;
    width: 537px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 28px;
}

#inner_footer {
    height: 27px;
    width: 570px;
}

#play {
    float: left;
    margin-left: 10px;
    margin-right: 10px;
    border-style: solid;
    background: none repeat scroll 0% 0% red;
    border-width: 1px;
    height: 23px;
    width: 52px;
    text-align: center;
    font-size: 10px;
    line-height: 19px;
    background: whitesmoke;
}

#demo {
    float: left;
    margin-left: 10px;
    margin-right: 10px;
    border-style: solid;
    background: none repeat scroll 0% 0% red;
    border-width: 1px;
    height: 23px;
    width: 119px;
    text-align: center;
    font-size: 10px;
    line-height: 19px;
    background: whitesmoke;
}

#quiz {
    float: left;
    margin-left: 10px;
    margin-right: 10px;
    border-style: solid;
    background: none repeat scroll 0% 0% red;
    border-width: 1px;
    height: 23px;
    width: 109px;
    text-align: center;
    font-size: 10px;
    line-height: 19px;
    background: whitesmoke;
} 

#compile {
    float: left;
    margin-left: 10px;
    margin-right: 10px;
    border-style: solid;
    background: none repeat scroll 0% 0% red;
    border-width: 1px;
    height: 23px;
    width: 94px;
    text-align: center;
    font-size: 10px;
    line-height: 19px;
    background: whitesmoke;
}

#algo {
    float: left;
    margin-left: 10px;
    margin-right: 10px;
    border-style: solid;
    background: none repeat scroll 0% 0% red;
    border-width: 1px;
    height: 23px;
    width: 52px;
    text-align: center;
    font-size: 10px;
    line-height: 19px;
    background: whitesmoke;
}

h4 {
    margin: 0px;
}

#wiki {
    font-size: 10px;
    font-weight: 800;
}

#like {
    font-size: 10px;
    margin-top: 8px;
}

#section_two {
    width: 1109px;
    margin-left: auto;
    margin-right: auto;
    background: #222;
    height: 300px;  
}
</style>
<script>
    function lol(){
$("#button").click(function() {
    $('html, #middle_inner_section_one').animate({
        scrollTop: $('#algo10').offset().top
    }, 2000);
});
    }
</script>
</head>
<body>
<!--div class="header">
	<div class="container_16 clearfix">
		<div id="logo"  class="grid_7>
			<a href="#"><img src="../images/logo.jpeg"><h2 class="luck">Badger King</h2></a>
			<p class="lucky">login</p>	
		</div>

		
	</div>
</div-->



<header>
	<div class="container_16 clearfix">
		<h2 id="logo" class="grid_7">
			<span><img src="../images/dice1.png"></span>
                        Badger <span style="color:white;">King</span>
		</h2>
		<nav id="main_nav" class="bitter grid_9">
                    <% String username = (String)session.getAttribute("username"); %>
                    <% UserInfo userinfo = (UserInfo)session.getAttribute("userinfo");%>
                    <% if(username == null || username.equals("")) {%>
                    <ul class="ul">
			<li class="active">
                            <a href="login.jsp"><button>Login</button></a>
			</li>
			<li>	
                            <a href="signup.jsp"><button>Signup !</button></a>
			</li>
                    </ul>
                    <% } else { %>
                    <div id="userinfo" style="color:white; font-size: 12px;float: right;margin-right: 10px;">
                        <div class="username" style="margin: 20px 15px;float: left;">
                            <c:out value="${userinfo.username}"></c:out>
                        </div>
                        <div class="profilepic" style="float: left;">
                            <img alt="" src="../images/${userinfo.pictureUrl}" width="60" height="60" style="border-radius:30px;">
                        </div>
                    <% } %>
                    </div>
		</nav>
	</div>
</header>
                    
<div id="second_header">
    <div id="second_innerheader">
        <div id="block_nav">
            <ul id="nav">
                <li id="list" ><a href="#">Home</a></li>
                <li id="list"><a href="#">ALGORITHMS</a></li>
                <li id="list"><a href="#">CODING</a></li>
                <li id="list"><a href="#">APTITUDE</a></li>
                <li id="list"><a href="#">About us</a></li>
            </ul>
        </div>
    </div>
</div>
                    
<div id="section_one">
    <div id="inner_section_one">
        <div id="left_inner_section_one">
            <div id="inner_left_inner_section_one">
                <div id="left_header">
                    <img src="../images/bullet.jpeg" height="10" width="10" style="float:left; margin-top: 6px;">
                    <h4 style="margin-left:16px;">Algorithms</h4>
                </div>
                <ul>
                    <li>Sorts
                        <ul style="list-style-type:circle; margin-left: 30px;">
                            <li>Bubble Sort</li>
                            <li>Insertion Sort</li>
                            <li>Quick Sort</li>
                            <li>Merge Sort</li>
                        </ul>
                    </li>
                    <li>Tree Traversal
                        <ul style="list-style-type:circle; margin-left: 30px;">
                            <li>Inorder</li>
                            <li>Preorder</li>
                            <li>Postorder</li>
                        </ul>
                    </li>
                    
                    <li>Spanning Tree
                        <ul style="list-style-type:circle; margin-left: 30px;">
                            <li>Prims algo</li>
                            <li>Kruskal algo</li>
                        </ul>
                    </li>
                    <li>N-queen</li>
                    <li>Tower of hanoi</li>
                    <li>Djkshtras algo</li>
                </ul> 
            </div>
        </div>
        <div id="middle_inner_section_one">
            <div id="inner_middle_inner_section_one">
                <div id="algo1">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo2">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo3">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo4">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo5">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo6">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo7">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo8">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo9">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
       
                <div id="algo10">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo11">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
                <div id="algo12">
                    <div id="inner_algo1">
                        <div id="algo_header1">
                            <h4 style="margin-top:6px;margin-left: 11px;">BubbleSort</h4>
                        </div>
                        <div id="algo_inner">
                        <div id="algo_left">
                            <div id="algo_image1">
                                <img src="../images/bubblesort1.jpg" >
                            </div>
                        </div>
                        <div id="algo_right">
                            <h2 style="font-family:sans-serif;font-size: 15px;font-weight: 500">Clear concepts of BubbleSort with demonstration and lightweight technical game</h2>
                            <div id="wiki"><h4>wiki</h4></div>
                            <div id="like"><h4>Like</h4></div>
                        </div>
                        </div>
                        <div id="algo_footer">
                            <div id="inner_footer">
                                <div id="play"><h4>Play</h4></div>
                                <div id="demo"><h4>Watch demo</h4></div>
                                <div id="quiz"><h4>Take quiz</div>
                                <div id="algo"><h4>Algo</h4></div>
                                <div id="compile"><h4>Compile</h4></div>
                            </div>
                        </div>
                    </div>
                </div><!--end of algo1-->
                
            </div>
        </div>
        <div id="right_inner_section_one">
            <div id="inner_right_inner_section_one">
                lol
            </div>
        </div>
    </div>
</div><!--end of section one-->
<div id="section_two">
    <div id="inner_section_two">
        
    </div>
</div>
</body>
</html>
                    
