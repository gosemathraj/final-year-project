<!DOCTYPE html>
<html>
<head>
	<title>GameBadger | Gamified learning</title>
        <script type="text/javascript" src="../js/jquery-1.11.1.js"></script>
<style type="text/css">

	/*@font-face {
            font-family: myFirstFont;
	    src: url('/lastattempt/css/fonts/LuckiestGuy.ttf');
	}*/

	@font-face {
            font-family: gooddog;
            src: url('/lastattempt/css/fonts/GoodDog.otf');
	}
        
        @font-face {
            font-family: gamified;
            src: url('/lastattempt/css/fonts/Gamified.ttf');
	}
       
        @font-face {
            font-family: pricedow;
            src: url('/lastattempt/css/fonts/pricedow.ttf');
	}
	
	.section {
		/*background: #555555;*/
		height: 600px;
		margin: 17px;
	}

	.container {
		background-color: #34495e;
		width: 527px;
		margin-left: auto;
		margin-right: auto;
		height: 283px;
		border-style: double;
		border-width: 10px;
		margin-top: 150px;
	}

	.signup_form {
		width: 500px;	
		height: 500px;
		margin-left: auto;
		margin-right: auto;
	}

	h2 {
		background: #ed7271;
		text-align: center;
		font-family: pricedow;
	}

	h3 {
		font-family: gooddog;
		display: block;
		margin: 0;
		float: left;
		padding: 0;
		font-weight: lighter;
		font-size: 24px;
                font-weight: bold;
	}

	input {
		display: block;
		float: left;
	}

	input[type=text]:focus {
		box-shadow: 0 0 10px rgba(81, 203, 238, 1);
	}
        
        input[type=password]:focus {
		box-shadow: 0 0 10px rgba(81, 203, 238, 1);
	}

	.one {
		height: 40px;
	}

	.two {
		height: 40px;
	}

	.three {
		height: 40px;
	}

	.four {
		height: 40px;
	}
        
        .five {
                height: 40px;
        }

	.form {
		margin-left: auto;
                margin-right: auto;
                width: 382px;
	}

	.one > input {
   		margin-left: 96px;
	}

	.two > input {
   		margin-left: 98px;
	}

	.three > input {
   		margin-left: 30px;
	}

	.four > input {
   		margin-left: 131px;
	}
        
        .five > input {
   		margin-left: 131px;
	}
        #error_message{
            background-color: rgb(200, 55, 55);text-align: center;font-size: 13px;padding: 3px 0px;
        }

</style>
<script>
    $(document).ready(function(){
        $('#login').click(function(){
            $('#error_message').hide();
            var user = $('#user').val();
            var pass = $('#pass').val();
            if(user === '' || pass === '') {
                $('#error_message').html('Please fill in required fields');
                $('#error_message').show();
            } else {
                $('#login').val('Please wait...');
                $('#login').prop('disabled', true);
                $.ajax({
                   url:"/lastattempt/login",
                   data: {user:user, pass:pass},
                   type:'post',
                   success:function(responseText){
                       if(responseText.trim() === 'failure') {
                           $('#error_message').html('Incorrect username or password');
                           $('#error_message').show();
                       } else {
                           if(responseText.trim() === 'success') {
                               window.location.href="index.jsp";
                           }
                       }
                       $('#login').val('Login');
                       $('#login').prop('disabled', false);
                   }
                });
            }
        });
    });    
</script>
</head>
<body>

<div class="section">
	<div class="container">
		
		<h2>login</h2>	
                <div id="error_message" style="display:none"></div>
		<form class="form" action="login.jsp" method="post" >
			<div class="one">
				<h3>username</h3>
                                <input type="text" placeholder="username" id="user" name="user" value="" required>	
			</div>

			<div style="clear:both"></div>

			<div class="two">
				<h3>password</h3>
                                <input type="password" placeholder="password" id="pass" name="pass" value="" required>	
			</div>

                        <div style="clear:both"></div>
         
                        <div class="six">
				<input type="button" value="Login" id="login">	
			</div>

			<div style="clear:both"></div>
		</form>	
	</div>
</div>
</body>
</html>