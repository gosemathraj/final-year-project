<%-- 
    Document   : bubblesort
    Created on : Feb 22, 2015, 5:55:03 PM
    Author     : admin
--%>

<!--%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--%
if (session.getAttribute("user") == null) {
    response.sendRedirect("login.html");
}
%-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
 
        <script type="text/javascript" src="../js/jquery-min.js"></script>
        <script type="text/javascript" src="../js/googlejquery-min.js"></script>
        <script type="text/javascript" src="../js/bpopup.min.js"></script>
        <link rel="stylesheet" href="../css/drag.css">

<script type="text/javascript">
    
    
    
    function bubble(){
        countdown('countdown');
        
        $('#cardPile').show();
        $('#cardSlots').show();
        $('#countdown').show();
        $('#header_two').show();
        $('#missed').show();
        $('#game-initials').hide();
    }
    
    var interval;
    var minutes = 1;
    var seconds = 5;
    var temp_minutes;
    var temp_seconds;
    var e4,e2,e6,bad=0;
    var p1,p2,p3;

    function countdown(element) {
        interval = setInterval(function() {
            var el = document.getElementById(element);
            if(seconds == 0) {
                if(minutes == 0) {
                    //el.innerHTML = "countdown's over!"; 
                    //alert("Time out lol");
                    $('#time_out').bPopup({
            easing: 'easeOutBack',
            speed: 450,
            transition: 'slideDown'
        });
                    clearInterval(interval);
                    return;
                } else {
                    minutes--;
                    seconds = 60;
                }
            }
            if(minutes > 0) {
                var minute_text = minutes ;//(minutes > 1 ? ' minutes' : ' minute');
            } else {
                var minute_text = '00';
            }
            seconds--;
            var second_text = seconds > 1 ? 'seconds' : 'second';
            el.innerHTML = minute_text + ':' + seconds ;//+ ' ' + second_text + ' remaining';
            
        }, 1000);
    }

// card game logic start

var correctCards = 0;
var points_earned = 0; 
var temp1 = new Array(101);
var randomcounter = 0;
var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
$( init );
 
function init() 

{
 
  // Hide the success message
  $('#successMessage').hide();
  $('#successMessage').css( {
    left: '580px',
    top: '250px',
    width: 0,
    height: 0
  } );
 
  // Create the pile of shuffled cards
  var n = Math.floor((Math.random() * 10) + 1);
  e2 = document.getElementById("score");
  e2.innerHTML = 'pass ::   ' + n;
  
  e4 = document.getElementById("scorecard");
  e4.innerHTML = 'score ::   ' + points_earned;
  
  e6 = document.getElementById("missed");
  e6.innerHTML = 'missed ::   ' + bad;

  for(var i=1;i<=100;i++){
    temp1[i] = 1;
  }
  while(true){
    var n1 = Math.floor((Math.random() * 100) + 1);
    console.log("n1 is "+n1);
    console.log("random counter is "+randomcounter);
    if(temp1[n1]===0){
      continue;
    }else{
      temp1[n1] = 0;
      numbers[randomcounter++] = n1;
    }
    if(randomcounter===10){
      break;
    }
  }

  console.log("lol is "+temp1)

  console.log("final numbers are "+numbers);

  var numbers1 = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
  //var words = [ 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten' ];
  //numbers.sort( function() { return Math.random() - .5 } );
  
  for(var i=0;i<10;i++){
  numbers1[i] = numbers[i];
  //console.log(numbers1[i]);
  }
 
 var counter=0;
 var temp;
 
 function bubbleSort(a)
{
    for(var i=0;i<n;i++){
    for(var j=0;j<9;j++){
      if(a[j]>a[j+1]){
        temp=a[j];
        a[j]=a[j+1];
        a[j+1]=temp;
      }
    }
  }
}

console.log(counter);
 
bubbleSort(numbers1);
console.log(numbers1);
 
 for(var i=0;i<10;i++){
  console.log(numbers1[i]);
 }
 
 
 
 
  for ( var i=0; i<10; i++ ) {
    $('<div>' + numbers[i] + '</div>').data( 'number', numbers[i] ).attr( 'id', 'card'+numbers[i] ).appendTo( '#cardPile' ).draggable( {
      containment: '#content',
      stack: '#cardPile div',
      cursor: 'move',
      revert: true
    } );
  }
  
  
 
  // Create the card slots
  
  for ( var i=1; i<=10; i++ ) {
    $('<div>' + numbers1[i-1] + '</div>').data( 'number', numbers1[i-1] ).appendTo( '#cardSlots' ).droppable( {
      accept: '#cardPile div',
      hoverClass: 'hovered',
      drop: handleCardDrop
    } );
  }
 
}

/*if(seconds===0 && minutes===0){
    alert("Time out lol");
}*/
function handleCardDrop( event, ui ) {
  var slotNumber = $(this).data( 'number' );
  console.log(slotNumber);
  var cardNumber = ui.draggable.data( 'number' );
  console.log(cardNumber);
 
  // If the card was dropped to the correct slot,
  // change the card colour, position it directly
  // on top of the slot, and prevent it being dragged
  // again
 
  if ( slotNumber == cardNumber ) {
    ui.draggable.addClass( 'correct' );
    ui.draggable.draggable( 'disable' );
    $(this).droppable( 'disable' );
    ui.draggable.position( { of: $(this), my: 'left top', at: 'left top' } );
    ui.draggable.draggable( 'option', 'revert', false );
    correctCards++;
    points_earned = points_earned + 10;
    updatescore();
  }

  if( slotNumber !== cardNumber){
    //ui.draggable.draggable( 'option', 'revert', true );
    //alert("wrong");
    bad++;
    updatebad();
    //sbad++;
  }
   
  // If all the cards have been placed correctly then display a message
  // and reset the cards for another go
 

  console.log("points are "+points_earned);

  if ( correctCards == 10 ) {
    /*$('#successMessage').show();
    $('#successMessage').animate( {
      left: '175px',
      top: '92px',
      width: '320px',
      height: '115px',
      opacity: 1
    } );*/
    //alert("good job");
    
   temp_minutes = minutes;
   temp_seconds = seconds;
   clearInterval(interval);
   $('#pop_score').bPopup({
	easing: 'easeOutBack', //uses jQuery easing plugin
        speed: 450,
        transition: 'slideDown'
    });
    
    /*if(minutes==0 && seconds==0){
        $('time_out').bpopup({
            easing: 'easeOutBack',
            speed: 450,
            transition: 'slideDown'
        });
    }*/
            
  }
  
  function updatescore() {
      e4.innerHTML = 'score ::   ' + points_earned;
  }
  
  function updatebad() {
      e6.innerHTML = 'missed ::   ' + bad;
  }
  
  p1 = document.getElementById("popup_score");
  p1.innerHTML = 'score ::   ' + points_earned;
  
  p2 = document.getElementById("popup_missed");
  p2.innerHTML = 'missed ::   ' + bad;
  
  p3 = document.getElementById("popup_time");
  p3.innerHTML = 'time ::   ' + temp_minutes+':'+temp_seconds;
  
  /*function ajaxreq() 
    {

        $.ajax({
            url: "update.jsp",
            type: "POST",
            data: { 'points': points_earned },                   
            success: function(data)
                        {
                            alert(data);                                    
                        }
        });
    }*/
//end of if
}
</script>

<style>

@font-face {
  font-family: LuckiestGuy;
  src:url(../css/fonts/LuckiestGuy.ttf);
}

@font-face {
  font-family: gamified;
  src:url(../css/fonts/Gamified.ttf);
}
.bubble h3 {
  font-family: LuckiestGuy;
}
</style>
</head>
<body>

        <div id="content">
            <div class="header">
                <div class="bubble">
                   <h3>Bubble Sort</h3>
                </div>
            </div>
            
            
            
            <div id="header_two" style="display:none;">
                <div id="score">
                    
                </div>
                
                <div id="scorecard">
                  
                </div>
            </div>
            
            <div style="clear:both;"></div>
            <div id='header_three'>
                <div id="missed" style="display:none">
                </div>
                <div id="countdown" style="display:none">
                </div>
            </div>
            <div style="clear:both;"></div>
            <div id="cardPile" style="display:none;"> </div>
            <div id="cardSlots" style="display:none;"> </div>
            
            <div id="game-initials" >
                <div class="container">
                    <div class="first-line"><a onclick="bubble();" style="cursor:pointer;">Play</a>
                    </div>
                
                    <div class="first-line">
                        <a><p>How to play</p></a>
                    </div>
                
                    <div class="first-line">
                        <a><p>About</p></a>
                    </div>         
                </div>
            </div>
        </div>
    
    <div id='pop_score' style="display:none;">
        <div id="popup_container">
            <div id="popup_goodjob">
                <p>! ! ! Good job ! ! !</p>
            </div>
            <div id="popup_missed"></div>
            <div id="popup_time"></div>
            <div id="popup_score"></div>
            <div id="popup_nextlevel">
                <button id="popup_button">next level</button>
            </div>
        </div>
    </div>
    
    <div id="time_out" style="display: none">
        <div id="timeout_container">
            <div id="timeout_header">
                <h3>timeout lol try again</h3>
            </div>
        </div>
    </div>

    </body>
</html>

