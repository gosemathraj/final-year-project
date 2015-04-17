<%-- 
    Document   : inorder1
    Created on : 20 Mar, 2015, 1:44:17 AM
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
        
        <style>
            
            .section_one {
                height: 300px;  
                width: 800px;
            }
            
            hr {
                margin: 0px;
                width: 0px;
            }
            
            .container {
                margin: 5px;
                width: 700px;
                margin-left: auto;
                margin-right: auto;
            }
            
            .left_container {
                margin: 2px;
                width: 500px;
            }
            
            .img_container {
                background: url("../images/inorder2.png");
                height:  200px;
                width: 255px;
            }
            
            #one,#two,#three,#four {
                height: 50px;
            }
            
            #node1 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                margin-left: 108px;
                margin-top: 3px;
            }
            
            #node21 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 40px;
                margin-top: 1px;
                
            }
            
            #node22 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 101px;
                margin-top: 1px;

            }
            
            #node31 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 6px;
                margin-top: 2px;
                
            }
            
            #node32 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 33px;
                margin-top: 2px;

            }
            
            #node33 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 101px;
                margin-top: 3px;

            }
            
            #node41 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 40px;
                margin-top:  3px;

            }
            
            #node42 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 33px;
                margin-top: 3px;

            }
            
            #node43 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
                margin-left: 34px;
                margin-top: 3px;

            }
            
            #section_two {
                height: 100px;
                width: 800px;
                display: block;
            }
            
            #section_two_container{
                margin-left: auto;
                margin-right: auto;
                width: 700px;
                height: 90px;
            }
            
            #slot1,#slot2,#slot3,#slot4,#slot5,#slot6,#slot7,#slot8 {
                width: 50px;    
                height: 50px;
                float: left;
            }
            
            #s1 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
            #s2 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
            #s3 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
            #s4 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
            #s5 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
            #s6 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
            #s7 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
            #s8 {
                background: none repeat scroll 0 0 red;
                border-radius: 22px;
                height: 35px;
                width: 35px;
                float: left;
            }
            
        </style>
        
        <script type="text/javascript">
$(init);
function init() 
{
    
$("#node1").data('number',"F").draggable({
    cursor: 'move',
    revert: true
});

$("#node21").data('number',"B").draggable({
    cursor: 'move',
    revert: true
});

$("#node22").data('number',"G").draggable({
    cursor: 'move',
    revert: true
});

$("#node31").data('number',"A").draggable({
    cursor: 'move',
    revert: true
});

$("#node32").data('number',"D").draggable({
    cursor: 'move',
    revert: true
});

$("#node33").data('number',"I").draggable({
    cursor: 'move',
    revert: true   
});

$("#node41").data('number',"C").draggable({
    cursor: 'move',
    revert: true
});

$("#node42").data('number',"D").draggable({
    cursor: 'move',
    revert: true
});

$("#node43").data('number',"H").draggable({
    cursor: 'move',
    revert: true 
});

$("#s1").data('number',"A").droppable({
    drop: handleCardDrop   
});

$("#s2").data('number',"B").droppable({
    drop: handleCardDrop
});

$("#s3").data('number',"C").droppable({
   drop: handleCardDrop 
});

$("#s4").data('number',"D").droppable({
    drop: handleCardDrop
});

$("#s5").data('number',"E").droppable({
    drop: handleCardDrop
});

$("#s6").data('number',"F").droppable({
    drop: handleCardDrop
});

$("#s7").data('number',"G").droppable({
    drop: handleCardDrop
});

$("#s8").data('number',"H").droppable({
    drop: handleCardDrop
});

$("#s9").data('number',"I").droppable({
    drop: handleCardDrop
});



function handleCardDrop( event, ui ) {
  var slotNumber = $(this).data( 'number' );
  console.log("dragged is "+ slotNumber);
  var cardNumber = ui.draggable.data( 'number' );
  console.log("dropped is "+cardNumber);
 
  if ( slotNumber == cardNumber ) {
    ui.draggable.addClass( 'correct' );
    ui.draggable.draggable( 'disable' );
    $(this).droppable( 'disable' );
    ui.draggable.position( { of: $(this), my: 'left top', at: 'left top' } );
    ui.draggable.draggable( 'option', 'revert', false );
    /*correctdrag++;
    points_earned = points_earned + 10;
    updatescore();
    console.log("correct drag is "+correctdrag);*/
  }

 /* if( slotNumber !== cardNumber){
    bad++;
    updatebad();
    //alert("bad job");
  }*/

}
}
    </script>
    </head>
    <body>
        
        <div class="section_one">
            <div class="container">
                <div class="left_container">
                    <div class="img_container"><hr>
                        <div id="one">
                            <div id="node1">F</div>
                        </div>
                        
                        <div id="two">
                            <div id="node21"></div>
                            <div id="node22"></div>
                        </div>
                        
                        <div style="clear:both;"></div>
                        
                        <div id="three">
                            <div id="node31"></div>
                            <div id="node32"></div>
                            <div id="node33"></div>
                        </div>
                        
                        <div style="clear:both;"></div>
                        
                        <div id="four">
                            <div id="node41"></div>
                            <div id="node42"></div>
                            <div id="node43"></div>
                        </div>
                        
                        <div style="clear:both;"></div>
                    </div>
                </div>
                
                <div class="right_container">
                
                </div>
            </div>
        </div>
        
        <div id="section_two">
            <div id="section_two_container">
                <div id="slots">
                    <div id="slot1">
                        <div id="s1">
                        </div>
                    </div>
                    
                    <div id="slot2">
                        <div id="s2">
                        </div>
                    </div>
                    
                    <div id="slot3">
                        <div id="s3">
                        </div>
                    </div>
                    
                    <div id="slot4">
                        <div id="s4">
                        </div>
                    </div>
                    <div id="slot5">
                        <div id="s5">
                        </div>
                    </div>
                    
                    <div id="slot6">
                        <div id="s6">
                        </div>
                    </div>
                    
                    <div id="slot7">
                        <div id="s7">
                        </div>
                    </div>
                    
                    <div id="slot8">
                        <div id="s8">
                        </div>
                    </div>
                    
                    <div id="slot1">
                        <div id="s1">
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
        
    </body>
</html>
