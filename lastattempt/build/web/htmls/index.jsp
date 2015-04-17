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


</style>
<script>
 
 $(window).load(function(){
 $("#loader").fadeOut(6000);

 });
 

</script>
</head>
<body>
<div id="loader"></div>
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
                        Excep <span style="color:white;">Tion</span>
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
                <li id="list"><a href="../htmls/algorithms.jsp">ALGORITHMS</a></li>
                <li id="list"><a href="#">CODING</a></li>
                <li id="list"><a href="../getallaptitudes">APTITUDE</a></li>
                <li id="list"><a href="#">About us</a></li>
            </ul>
        </div>
    </div>
</div>
                    
<div id="section_one">
<div id="section">
	<div class="container_161 clearfix">
		<div class="container">
			<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<h2>Warm welcome</h2>
					<p>Make learning fun with the gamified environment.so <span style="color:red">join</span> the adventure and start the race</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="../images/trophy.png" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Java Badger</h2>
					<p>Let's play java</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="../images/java_badge.png" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Easy management</h2>
					<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="../images/trophy.png" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Quality Control</h2>
					<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="../images/java_badge.png" alt="image01" /></div>
				</div>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
		</div>
		<div class="grid">
                    <div class="grid_container">
                        <div class="grid_top">
                            <!--div class="grid_text">
                                <h3 style="margin-top:0px;">Top scorer</h3>
                            </div-->
                            <div class="pin1">
                                <img src="../images/pin3.jpg">
                            </div>
                            
                            <!--div class="pin2">
                                <img src="../images/pin3.jpg">
                            </div>
                            
                            <div class="pin3">
                                <img src="../images/pin3.jpg">
                            </div-->
                        </div>
                        
                        <div class="grid_basecontainer">
                            
                        </div>
                    </div>
 		</div>
	</div>
</div>
</div>


<div style="clear:both"></div>

<div id="section_two">
<div class="base_section">
	<div class="base_container">
            <div class="base_leftcontainer">
                <div id="base_left_top">
                    <div id="title">
                        <h2>Our Featured Games</h2>
                    </div>
                </div>
                <div id="left_bg">
                    <div class="base_left_first">
                        <div class="box">
                            <div class="box_container_one">
                                <a href="bubblesort.jsp" onclick="checklogin();"><h3></h3></a>
                            </div>
                            <div id="footer">
                                <h4>bubblesort</h4>
                            </div>
                        </div>

                        <div class="box">
                            <div class="box_container_two">
                                <a href="bubblesort.jsp"><h3></h3></a>
                            </div>
                            <div id="footer">
                                <h4>crossword</h4>
                            </div>
                        </div>

                        <div class="box">
                            <div class="box_container_three">
                                <a href="bubblesort.jsp"><h3></h3></a>
                            </div>
                            <div id="footer">
                                <h4>hill climb</h4>
                            </div>
                        </div>

                        <!--div class="box">
                            <a href="bubblesort.jsp"><h3>Bubblesort</h3></a>
                        </div-->
                    </div>
                    <div style="clear:both"></div>
                    <div class="base_left_second">
                        <div class="box">
                            <div class="box_container_one">
                                <a href="bubblesort.jsp" onclick="checklogin();"><h3></h3></a>
                            </div>
                            <div id="footer">
                                <h4>inorder</h4>
                            </div>
                        </div>

                        <div class="box">
                            <div class="box_container_two">
                                <a href="bubblesort.jsp"><h3></h3></a>
                            </div>
                            <div id="footer">
                                <h4>kruskal</h4>
                            </div>
                        </div>

                        <div class="box">
                            <div class="box_container_three">
                                <a href="bubblesort.jsp"><h3></h3></a>
                            </div>
                            <div id="footer">
                                <h4>prims</h4>
                            </div>
                        </div>

                        <!--div class="box">
                            <a href="bubblesort.jsp"><h3>Bubblesort</h3></a>
                        </div-->
                    </div>
                    
                </div>
            </div>
            <div id="base_rightcontainer">
                <div id="base_top_right">
                    <div id="title_right">
                        <h2>LeaderBoard</h2>
                    </div>
                </div>
                    
                <div id="right_bg">
                    <div id="top5">
                        <h4>Top 5 performers</h4>
                    </div>
                    
                    <div id="inner_right_bg" class="nano">
                        <div id="first_topper">

                        </div>
                        <div id="second_topper">

                        </div>
                        <div id="third_topper">

                        </div>
                        <div id="fourth_topper">

                        </div>
                        <div id="fifth_topper">
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
</div>
    
<div class="next_section">
    <div class="next_sectioncontainer">
    
    </div>
</div>

<div class="next_section_one">
    <div class="next_sectioncontainer_one">
    
    </div>
</div>
    
<!--script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script-->
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.cslider.js"></script>
<script type="text/javascript">
	$(function() {
			
		$('#da-slider').cslider({
			autoplay	: true,
			bgincrement	: 450
			});
			
		});
                
        function checklogin(){
            
        }

            
/*
 $(window).load(function(){
 $("#loader").fadeOut("slow");
 });
*/
</script>	


</body>
</html>