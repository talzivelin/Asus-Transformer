// JavaScript Document

$(document).ready(function() {

  // target each link in the navigation div
  $('.specicons a').click(function() {
    // link that you clicked
    clicked = $(this).attr('class');

    // make sure that all the others are not active
    // except for the clicked one
    $('.specicons a').each(function() {
      if ($(this).attr('class') == clicked) {
        $(this).addClass('active');
      } else {
        $(this).removeClass('active');
      }
    });

    // prevent the default link action
    return false;
  });

});




$(document).ready(function(){
  // Feature Icons //
  
	
	$('.iconOne').click(function(){
		$('.one').show();
		$('.two, .three, .four, .five, .six').hide();
	
	});
  
	$('.iconTwo').click(function(){
		$('.two').show();
		$('.one, .three, .four, .five, .six').hide();
	
	});
  
	$('.iconThree').click(function(){
		$('.three').show();
		$('.one, .two, .four, .five, .six').hide();
	
	});
  
	$('.iconFour').click(function(){
		$('.four').show();
		$('.one, .two, .three, .five, .six').hide();

	});
  
	$('.iconFive').click(function(){
		$('.five').show();
		$('.one, .two, .three, .four, .six').hide();

	});
  
	$('.iconSix').click(function(){
		$('.six').show();
		$('.one, .two, .three, .four, .five').hide();
	
	});
	
	
	
	$('.icon01right').click(function(){
		$('.oneright').show();
		$('.tworight, .threeright, .fourright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon02right').click(function(){
		$('.tworight').show();
		$('.oneright, .threeright, .fourright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon03right').click(function(){
		$('.threeright').show();
		$('.oneright, .tworight, .fourright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon04right').click(function(){
		$('.fourright').show();
		$('.oneright, .tworight, .threeright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon05right').click(function(){
		$('.fiveright').show();
		$('.oneright, .tworight, .threeright, .fourightr, .sixright').hide();
	
	});
  
	$('.icon06right').click(function(){
		$('.sixright').show();
		$('.oneright, .tworight, .threeright, .fourright, .fiveright').hide();
	
	});
  
});

