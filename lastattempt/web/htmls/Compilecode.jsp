<%-- 
    Document   : Compilecode
    Created on : 18 Mar, 2015, 10:34:23 PM
    Author     : rajesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../js/jquery-1.11.1.js" type="text/javascript"></script>
        <style>
        
            textarea {
                resize: none;
            }
            
            #container_two {
               float: left;
               height: 500px;
               width: 500px;
            }
            
            .container_one {
                float: left;
                width: 500px;
                height: 500px;
                border-style: solid;
            }
        </style>
        <script>
        $(document).ready(function() {
	$('#txtarea').blur(function(event) {
		var txt = $('#txtarea').val();
		$.ajax({
                    url:'/lastattempt/compilerun',
                    data : {txtarea : txt},
                    success :function(responseText) {
			$('#container_two').html(responseText);
                    }
		});
            });
        });
        </script>
    </head>
    <body>
        <h1>Compile and run your code here</h1>
        <div class="section_one">
            <div class="container_one">
                <form>
                    <div class="txtarea">
                        <textarea id="txtarea" name="txtarea" class="txtarea_input" rows="10" cols="40"></textarea>
                    </div>
                </form>
            </div>
            
            <div id="container_two">
            </div>
        </div>
    </body>
</html>
