<%-- 
    Document   : apptitude.jsp
    Created on : 24 Mar, 2015, 6:22:07 PM
    Author     : rajesh
--%>

<%@page import="vo.UserInfo"%>
<%@page import="vo.AptitudeVO"%>
<%@page import="vo.Getapti"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   if (request.getSession().getAttribute("username") == null) {
        response.sendRedirect("/lastattempt/htmls/login.jsp");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BadgerKing || Gamified learning</title>
	<link rel="shortcut icon"  href="/lastattempt/images/dice1.png">
	<link rel="stylesheet" href="/lastattempt/css/style.css">  
        <link rel="stylesheet" type="text/css" href="../css/style2.css" />
        <script type="text/javascript" src="/lastattempt/js/jquery-min.js"></script>
        <script type="text/javascript" src="/lastattempt/js/googlejquery-min.js"></script>
        <script type="text/javascript" src="/lastattempt/js/bpopup_updated.js"></script>
        <script type="text/javascript" src="/lastattempt/js/jqueryform.js"></script>
        <script type="text/javascript" src="/lastattempt/js/Vague.js"></script>
        <script>
            
        </script>
        
        <style>
            
            @font-face {
                font-family: gamified;
                src: url('/lastattempt/css/fonts/Gamified.ttf');
            }
            
            #section_one {
                width: 500px;
                margin-left: auto;
                margin-right: auto;
                background: whitesmoke;
                margin-top: 35px;
                /*display: block;
                left: 426.5px;
                position: absolute;
                top: 61.5px;
                z-index: 9999;
                opacity: 1;*/
            }
            
            #container_one {
                margin: 5px;
                background: #222;
            }
            
            #header_one {
                height: 60px;
                background: #df265d;
            }
            
            #inner_header {
                margin: 2px;
            }
            
            #close_button {
                float: right;
                display: block;
                padding-top: 12px;
                margin-right: 12px;
            }
            
            #preview_button {
                float: right;
                display: block;
                padding-top: 13px;
                margin-right: 26px;
            }
            
            textarea {
                //font-family: gamified;
                font-size: 12px;
                resize: none;
                width: 482px;
                height: 200px;
            }
            
            #second {
                margin-left: 25px;
                background: none repeat scroll 0% 0% transparent;
            }
            
            #file {
                background: none repeat scroll 0% 0% transparent;
                width: 200px;
                border-radius: 0px;
                margin-top: 7px;
                height: 30px;
            }
            
            #left_three {
                float: left
            }
            
            #right_three {
                float: left;
            }
            
            #left_first {
                margin-top: 14px;
                margin-left: 23px;
            }
            
            #error_message {
                text-align: center;
                height: 15px;
                line-height: 34px;
                color: orange;
            }
            
            #content {
                margin-left: auto;
                margin-right: auto;
                //overflow: hidden;
                display: block;
                padding: 1px;
                width: 500px;
                //background: none repeat scroll 0% 0% #8A3000;
            }
            
            #ques {
                //height: 500px;
                background: none repeat scroll 0% 0% #F5F5F5;
                display: block;
                margin: 20px 14px 18px;
                overflow: hidden;
            }
            
            #inner_ques {
                margin-top: 26px;
                margin-right: 22px;
                margin-left: 22px;
            }
            
            #ques_image {
                border-style: none;
                height: 166px;
            }
            
            #question {
                font-size: 20px;
                -webkit-touch-callout: none;
                -webkit-user-select: none;
                -khtml-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                 user-select: none;
            }
            
            .question {
                font-size: 20px;
            }
            
            #image_display {
                //border-style: double;
                width: 150px;
                height: 150px;
                margin-left: auto;
                margin-right: auto;
                margin-top: 7px;;
            }
            
            #option_container {
                height: 200px;
                overflow: hidden;
                margin-top: 6px;
                border-style: none;
                background: #C7D4D4;
            }
            
            #first_option_header {
                margin: 41px auto 28px;
                height: 45px;
                width: 350px;
            }
            
            #first_option {
                float: left;
            }
            
            #second_option {
                float: right;
            }
            
            #left_second {
                margin-top: 16px;
                margin-left: 23px;
            }
            
            #left_third {
                margin-top: 16px;
                margin-left: 23px;
            }
            
            #left_fourth {
                margin-top: 16px;
                margin-left: 23px;
            }
            
            #one {
                margin-top: 14px;
                margin-left: 33px;
            }
            
            #two {
                margin-top: 16px;
                margin-left: 33px;
            }
            
            #third {
                margin-top: 16px;
                margin-left: 33px;
            }
            
            #correctans {
                margin-left: 22px;
                margin-top: 14px;
                height: 31px;
            }
            
            #second_option_header {
                margin: 21px auto 5px;
                height: 45px;
                width: 350px;
            }
            
            #third_option {
                float: left;
            }
            
            #fourth_option {
                float: right;
            }
            
            hr {
                margin: 0px;
            }
            
            input {
                height: 38px;
                width: 142px;
                border: medium none;
                background: none repeat scroll 0% 0% whitesmoke;
                border-radius: 23px;
            }
            
            /*input:focus {
                background: pink;
            }*/
            
            input:hover {
                background: pink;
            }
            
            .grid_7, .ul {
                font-weight: 400;
                text-transform: uppercase;
            }
            
            header {
                background: none repeat fixed 0px 0px #000;
                height: 95px;
                position: relative;
                width: 100%;
                z-index: 0;
            }
            
            #post_something {
                width: 102px;
                height: 31px;
                margin-top: 13px;
                background: none;
                color: white;
                border-style: solid;
                border-width: 2px;
            }
            
            .ip {
                border-radius: 0px;
                width: 200px; 
            }
            
            #aptisubmit {
                margin-left: 17px;
                margin-top: 14px;
            }
            
            #submit_post {
                padding-bottom: 11px;
            }
            
            #postman_information {
                margin-top: 8px;
                background: none repeat scroll 0% 0% #7E7E70;
                overflow: hidden;
                //margin-bottom: 14px;
            }
            
            #inner_pinformation {
                
            }
            
            #post_section {
                width: 150px;
                float: right;
            }
            
            #postman_image {
                margin-top: 13px;
                margin-left: 11px;
                float: left;   
            }
            
            #postman_details {
                float: left;
                margin-top: 15px;
                margin-left: 7px;
            }
            
            #posted_by {
                font-size: 7px;
                color  : green;
            }
            
            #postman_name {
                font-size: 7px;
                //margin-top: 13px;
                //margin-left: 6px;   
            }
            
            h2 {
                margin: 0px;
                padding: 0px;
            }
            
            #title {
                width: 482px;
                margin: 4px auto 2px;
            }
            
            #cool_title {
                width: 100%;
                border-radius: 0px;
            }
            
            select {
                background: none repeat scroll 0% 0% whitesmoke;
                height: 30px;
                width: 200px;
                border: medium none;
            }
            
            figure {
                margin: 0px;
                padding: 0px;
            }
            
            #apti_info {
                float: left;
                margin-top: 17px;
                margin-left: 17px;
            }
            
            #inner_aptiinfo {
                height: 47px;
                width: 136px;
            }
            
            #apti_difficulty {
                font-size: 7px;
                float: left;
            }
            
            #coins_image {
                float: left;
                margin-top: 2px;
            }
            
            #apti_points {
                float: left;
                margin-left: 6px;
                margin-top: 3px;
            }
            
            #apti_points1 {
                width: 30px;
                height: 30px;
                float: left;
                font-size: 8px;
                margin-top: 3px;   
            }
            
            a {
                text-decoration: none;
                color: black;
            }
            
            #tryitbutton {
                float: left;
                width: 43px;
                height: 17px;
                font-size: 11px;
                background: none repeat scroll 0% 0% transparent;
                font-weight: 800;
                color: #DDA0DD;
            }
            
            #tryit {
                height: 30px;
                width: 42px;
                float: left;   
            }
            
        </style>
              
        <script type="text/javascript">
        function hello(){
        $('#hello').bPopup({
                modalClose: false,
                easing: 'easeOutBack', //uses jQuery easing plugin
                speed: 450,
                transition: 'slideDown'
            });
        }
        
        function popup(){
            $('#section_one').bPopup({
                modalClose: false,
                easing: 'easeOutBack', //uses jQuery easing plugin
                speed: 450,
                transition: 'slideDown'
            });
        }
        
        function closeBPopup() {
            $('#section_one').bPopup().close(); 
        };
        
        $(document).ready(function(){
            $('#post_something').live('click', function(){
               $('#section_one').bPopup({
                    modalClose : false,
                    easing: 'easeOutBack', //uses jQuery easing plugin
                    speed: 450,
                    transition: 'slideDown'
                }); 
            }); 
                
        });
        
        /*$(document).ready(function() {
            $('#aptisubmit').click(function(event) {		
                var file = ("#file").val();
                var post = ("#post").val();
                var option1 = ("#option1").val();
                var option2 = ("#option2").val();
                var option3 = ("#option3").val();
                var option4 = ("#option4").val();
                var category = ("#category").val();
                var points = ("#points").val();
                var correctans = ("#correctans").val();
		$.ajax({
                    url:'/lastattempt/apti',
                    data : {file:file,
                            post:post,
                            option1:option1,
                            option2:option2,
                            option3:option3,
                            option4:option4,
                            category:category,
                            points:points,
                            correctans:correctans
                            },
                    enctype:'multipart/form-data',
                    type:'post',
                    success :function(responseText) {
			if(responseText.trim()=='success'){
                            alert("posted successfully");
                        }
                    }
		});
            });
        });*/
    
        $(document).ready(function() {
            $('#actual_form').ajaxForm({
                success: function(msg) {
                    //window.location='/lastattempt/getallaptitudes';
                    alert("hi");
                }
            });
        });
        
        function check(aptiSeq, ans) {
            $.ajax({
               url:'checkans',
               data:{aptiSeq:aptiSeq, ans:ans},
               success:function(response) {
                   alert(response);
               }
            });
        }
        
        function lost(aptino){
            //alert("'#option_container'+aptino+");
           /*var vague = $(".questionblur").Vague({intensity:0});
           vague.blur();*/

            $("#"+aptino).bPopup({
                modalClose: false,
                easing: 'easeOutBack', //uses jQuery easing plugin
                speed: 450,
                transition: 'slideDown'
            });
        }        

        
        </script>
    </head>
    <body>
        
   <header>  <!--start of header-->
	<div class="container_16 clearfix">
		<h2 id="logo" class="grid_7">
			<span><img src="/lastattempt/images/dice1.png"></span>
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
                        <div id="postit" style="float:left;">
                            <input type="button" value="New Post" id="post_something" name="post_something"/>
                        </div>
                        <div class="username" style="margin: 20px 15px;float: left;">
                            <c:out value="${userinfo.username}"></c:out>
                        </div>
                        <div class="profilepic" style="float: left;margin-left: 8px;margin-top: 7px;">
                            <img alt="" src="/lastattempt/images/${userinfo.pictureUrl}" width="45" height="45" style="border-radius:30px;">
                        </div>
                    <% } %>
                    </div>
		</nav>
	</div>
   </header> 
   <!--end of header-->
   
       <!--start of post aptitude central section-->
       
       <div id="section_one" style="display:none;">
           <div id="container_one">
                <div id="header_one">
                    <div id="inner_header">
                        <div id="close_button">
                            <button id="close" onclick="closeBPopup();">close</button>
                        </div>
                        <div id="preview_button">
                            <button id="preview" >preview</button>
                        </div>
                    </div>
                </div> <!--end of header one-->
                   <div style="clear:both;"></div>
                   
                   <div id="form">
                       <form  id="actual_form"  action="/lastattempt/apti" method="post" enctype="multipart/form-data">
                           <div id="success_message" style="display: none;">Question posted successfully</div>
                           <div id="title">
                               <input type="text" id="cool_title" name="cool_title" placeholder="Give a title">
                           </div>
                           <div id="first">
                               <textarea id="post" name="post" cols="50" rows="10" placeholder="Post your question here...." required></textarea>
                           </div>
                           
                           <div id="second">
                                <div id="image_add">
                                    <input type="file" id="file" name="file">
                                </div>
                           </div>
                           
                           <div id="three">
                               <div id="inner_three">
                                   <div id="left_three">
                                       <div id="left_first">
                                            <input type="text" class="ip" id="option1" name="option1" placeholder="option 1"  required>                                          
                                       </div>
                                       
                                       <div id="left_second">
                                            <input type="text" class="ip" id="option2" name="option2" placeholder="option 2" required>                                          
                                       </div>
                                       
                                       <div id="left_third">
                                            <input type="text" class="ip" id="option3" name="option3" placeholder="option 3"  required>                                          
                                       </div>
                                       
                                       <div id="left_fourth">
                                            <input type="text"   class="ip" id="option4" name="option4" placeholder="option 4"  required>                                          
                                       </div>
                                   </div>
                                   
                                   <div id="right_three">
                                       <div id="right_category">
                                           <div id="one">
                                               <input type="text"  class="ip" id="category" name="category" placeholder="select category"  required>
                                           </div>
                                           
                                           <div id="two">
                                               <input type="text" class="ip" id="points" name="points" placeholder="points"  required>
                                           </div>
                                           
                                           <div id="third">
                                               <select name="difficulty" id="difficulty" required>
                                                   <option selected disabled>Select Difficulty</option>
                                                    <option value="Easy">Easy</option>
                                                    <option value="Medium">Medium</option>
                                                    <option value="Hard">Hard</option>
                                                    <option value="Expert">Expert</option>
                                                </select>
                                           </div>
                                       </div> <!--end of right category-->
                                   </div>  <!--end of right_three-->
                               </div>   <!--inner three-->
                               
                               <div style="clear: both;"></div>
                                   
                               <select name="correctans" id="correctans" required>
                                   <option selected disabled>Select Correct Option</option>
                                   <option value="1">Option 1</option>
                                   <option value="2">Option 2</option>
                                   <option value="3">Option 3</option>
                                   <option value="4">Option 4</option>
                               </select>
                               
                               <div style="clear: both;"></div>
                               <div id="submit_post">
                                   <input type="submit" value="post it" id="aptisubmit">
                               </div>
                           </div> <!--three-->  
                       </form> <!--end of form-->  
                   </div>
           </div>
       </div>
       <!--end of post aptitude central section-->
       
       <!--start of content of aptitude-->
       
       <div id="content">
            <c:forEach var="aptitude" items="${aptitudes}" >
                <div id="ques" class="ques">
                    <div id="inner_ques">
                        <figure class="questionblur">
                                <div id="ques_image">
                                    <div id="question" >
                                        ${aptitude.desc}
                                    </div>

                                    <c:if test="${aptitude.imageUrl ne null && aptitude.imageUrl ne ''}">
                                        <div id="image_display">
                                            <img width="100" height="100" src="getimage?fileName=${aptitude.imageUrl}" alt=""/>
                                        </div>
                                    </c:if>
                                </div>
                            </figure>
                        
                            <div id="${aptitude.aptiSeq}" style="display:none;">
                            <div id="option_container">
                                <div id="first_option_header">
                                    <div id="first_option">A.
                                        <input type="button" value="${aptitude.opt1}" onclick="check(${aptitude.aptiSeq}, 1)">
                                    </div>
                                    <div id="second_option">B.
                                        <input type="button" value="${aptitude.opt2}" onclick="check(${aptitude.aptiSeq}, 2)">
                                    </div>
                                </div>
                            
                                <div style="clear:both;"></div>
                                
                                <div id="second_option_header">
                                    <div id="third_option">C.
                                        <input type="button" value="${aptitude.opt3}" onclick="check(${aptitude.aptiSeq}, 3)">
                                    </div>
                                    <div id="fourth_option">D.
                                        <input type="button" value="${aptitude.opt4}" onclick="check(${aptitude.aptiSeq}, 4)">
                                    </div>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            </div>
                        
                    </div> <!--end of inner question-->
                                    
                    <div id="postman_information">
                        <div id="inner_pinformation">
                            <div id="post_section">
                                <div id="postman_image">
                                    <img alt=" " src="/lastattempt/images/${aptitude.postman}" width="40" height="40" style="border-radius:30px;">
                                </div>
                                <div id="postman_details">
                                    <div id="posted_by">
                                        <h2>posted by:</h2>
                                    </div>
                                    <div id="postman_name">
                                        <h2>${aptitude.postedBy}</h2>
                                    </div>
                                </div>
                            </div>

                            <div id="apti_info">
                                <div id="inner_aptiinfo">
                                    <div id="apti_difficulty">
                                        <h2><span style="color:green">Difficulty : </span>${aptitude.difficulty}</h2>
                                    </div>
                                
                                    
                                    <div style="clear:both;">
                                    
                                    <div id="apti_points">
                                        <div id="coins_image">
                                            <img src="/lastattempt/images/coins1.jpeg" width="15" height="15">
                                        </div>
                                        <div id="apti_points1">
                                            <h2>${aptitude.points}</h2>
                                        </div>
                                        <div id="tryit">
                                            <input type="button" onclick="lost(${aptitude.aptiSeq})" id="tryitbutton" value="Try it">
                                        </div>
                                    </div>
                                 
                                </div>
                            </div>
                        </div>
                    </div> <!--end of postman information-->             
                </div> <!--end of ques-->
                <div style="clear:both;"></div>        
            </c:forEach>
        </div> <!--end of content of aptitude-->
        
        <!--start of apti popup-->
        
        <div id="apti_popup" style="display:none">
            <div id="inner_apti_popup">helloejhejhejhejddfdbfdfhdfgdhgf
                <div id="apti_popup_left">
                    <div id="popup_question">
                        <h2>${popup_aptitude.desc}</h2>
                    </div>
                    
              
                        <div id="popup_option_container">
                            <div id="option1_division">
                                <div id="first_popup_option">
                                    <input type="button" value="${popup_aptitude.opt1}" onclick="check(${popup_aptitude.aptiSeq}, 1)">
                                </div>
                                <div id="second_popup_option">
                                    <input type="button" value="${popup_aptitude.opt2}" onclick="check(${popup_aptitude.aptiSeq}, 2)">
                                </div>
                            </div>
                            <div style="clear:both;"></div>
                            <div id="option2_division">
                                <div id="third_popup_option">
                                    <input type="button" value="${popup_aptitude.opt3}" onclick="check(${popup_aptitude.aptiSeq}, 3)">
                                </div>
                                <div id="fourth_popup_option">
                                    <input type="button" value="${popup_aptitude.opt4}" onclick="check(${popup_aptitude.aptiSeq}, 4)">
                                </div>
                            </div>
                        </div>
                    
                </div>
                <div id="apti_popup_right">
                    <div id="inner_apti_popup_right">
                        
                    </div>
                </div>
            </div>
        </div>
        <div id="hello">
            <h1>hi this is response to popup</h1>
        </div>
        <script>
        var vague = $(".questionblur").Vague({intensity:3});
	vague.blur();
        </script>
    </body>
</html>