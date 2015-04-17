<%-- 
    Document   : postorder.jsp
    Created on : 19 Mar, 2015, 11:50:06 PM
    Author     : rajesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="../js/jquery-min.js"></script>
        <script type="text/javascript" src="../js/googlejquery-min.js"></script>
        <script type="text/javascript" src="../js/bpopup.min.js"></script>
        
        <script>
            var x=2;
            var result = [2,5,11,6,7,4,9,5,2];
            function validate(){
                console.log("x is" +x);
                if(x==2){
                    var e3 = document.getElementById('#postorder');
                    e3.innerHTML = 'good';
                    /*$('#input').hide();
                    $('#input1').show();*/
                    //$('#postorder').show();
                    //showpostorder();
                   
                }
            }
            
            /*function showpostorder(){
                $('#postorder').show();
            }
    
*/            
    console.log(x);
        </script>
    </head>
    <body>
        
        <div class="section_one">
            <div class="container_one">
                <div class="container_left">
                    <div class="container_img">
                        <img src="../images/order_bg1.jpg">
                    </div>
                </div>
                <div class="container_right"></div>
            </div>
            
            <!--div class="container_two">
                <div class="inner_container_two">
                    
                    <div id="input">
                        <form name="myform"  >
                            hi
                        <input type="text" name="first_value" >
                        <input type="submit" value="submit" onclick="validate();">
                        </form>
                    </div>
                    
                    <div id="input1" >
                        <form name="myform1" onsubmit="validate1();">
                        <input type="text" name="first_value1" >
                        <input type="submit" value="submit">
                        </form>
                    </div>
                    
                    <div id="input2" style="display: none;">
                        <form name="myform2"  onsubmit="validate2();">
                        <input type="text" name="first_value2" >
                        <input type="submit" value="submit">
                        </form>
                    </div-->
                    
                    <div id="postorder" style="display: none;">
                        <div id="postorder_container">
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </body>
</html>
