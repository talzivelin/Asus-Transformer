var Parallax = new Parallax({
	startFrame: 5,
	width: 960,
	//height: 645,
	height: 592,
	gutter: 480,
	offset: 0,
	yOffset: 0,
	smallScrollIncrement: 50,
	largeScrollIncrement: 100,
});


$(document).ready(function() { 

	Parallax.setup(1); // send in 1 to indicate that we want to move to startFrame now
	// recalculate everything on window resize
	$(window).resize(function() {
		Parallax.setup(); // send in nothing or 0 stay where we are at in experience
	});
	
	
	// brain hover behavior
	$('#leftBrainHotArea, #leftBrain p, #leftBrain h3, #leftBrain div, #leftBrain span').hover( // additional selectors are needed for IE9 to prevent flickering
		function() { 
			$('#leftBrain').addClass('active');
		},
		function() { 
			$('#leftBrain').removeClass('active');
		}
	);
	$('#rightBrainHotArea, #rightBrain p, #rightBrain h3, #rightBrain div, #rightBrain span').hover( // additional selectors are needed for IE9 to prevent flickering
		function() { 
			$('#rightBrain').addClass('active');
		},
		function() { 
			$('#rightBrain').removeClass('active');
		}
	);
	
 
});

//features functionality
$(document).ready(function() {

  // target each link in the navigation div
  $('.specicons a').mouseover(function() {
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



$(document).ready(function() {

  // target each link in the navigation div
  $('.speciconsright a').mouseover(function() {
    // link that you clicked
    clicked = $(this).attr('class');

    // make sure that all the others are not active
    // except for the clicked one
    $('.speciconsright a').each(function() {
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
  
	
	$('.iconOne').mouseover(function(){
		$('.one').show();
		$('.two, .three, .four, .five, .six').hide();
	
	});
  
	$('.iconTwo').mouseover(function(){
		$('.two').show();
		$('.one, .three, .four, .five, .six').hide();
	
	});
  
	$('.iconThree').mouseover(function(){
		$('.three').show();
		$('.one, .two, .four, .five, .six').hide();
	
	});
  
	$('.iconFour').mouseover(function(){
		$('.four').show();
		$('.one, .two, .three, .five, .six').hide();

	});
  
	$('.iconFive').mouseover(function(){
		$('.five').show();
		$('.one, .two, .three, .four, .six').hide();

	});
  
	$('.iconSix').mouseover(function(){
		$('.six').show();
		$('.one, .two, .three, .four, .five').hide();
	
	});
	
	
	
	$('.icon01right').mouseover(function(){
		$('.oneright').show();
		$('.tworight, .threeright, .fourright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon02right').mouseover(function(){
		$('.tworight').show();
		$('.oneright, .threeright, .fourright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon03right').mouseover(function(){
		$('.threeright').show();
		$('.oneright, .tworight, .fourright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon04right').mouseover(function(){
		$('.fourright').show();
		$('.oneright, .tworight, .threeright, .fiveright, .sixright').hide();
	
	});
  
	$('.icon05right').mouseover(function(){
		$('.fiveright').show();
		$('.oneright, .tworight, .threeright, .fourright, .sixright').hide();
	
	});
  
	$('.icon06right').mouseover(function(){
		$('.sixright').show();
		$('.oneright, .tworight, .threeright, .fourright, .fiveright').hide();
	
	});
  
});
// end features


// Google Analytics
$('.frame1 a.buy-box').click(function() { 
	_gaq.push(['_trackEvent','Buy Now Left','Buy Now Click', '300 Series']);
});
$('.frame9 a.buy-box').click(function() { 
	_gaq.push(['_trackEvent','Buy Now Right','Buy Now Click', '300 Series']);
});
$('.frame1 .twitterShare').click(function() { 
	_gaq.push(['_trackEvent','Share Left','Twitter Click', '300 Series']);
});
$('.frame1 .facebookShare').click(function() { 
	_gaq.push(['_trackEvent','Share Left','Facebook Click', '300 Series']);
});
$('.frame1 .pinterestShare').click(function() { 
	_gaq.push(['_trackEvent','Share Left','Pinterest Click', '300 Series']);
});
$('.frame9 .twitterShare').click(function() { 
	_gaq.push(['_trackEvent','Share Right','Twitter Click', '300 Series']);
});
$('.frame9 .facebookShare').click(function() { 
	_gaq.push(['_trackEvent','Share Right','Facebook Click', '300 Series']);
});
$('.frame9 .pinterestShare').click(function() { 
	_gaq.push(['_trackEvent','Share Right','Pinterest Click', '300 Series']);
});
$('ul.colorpicker a').click(function() { 
	_gaq.push(['_trackEvent','Color Picker','Color Picker Click', '300 Series']);
});
$('.frame1 .discoverasus').click(function() { 
	_gaq.push(['_trackEvent','About Left','About Click', '300 Series']);
});
$('.frame9 .discoverasus').click(function() { 
	_gaq.push(['_trackEvent','About Right','About Click', '300 Series']);
});
$('.designstory').click(function() { 
	_gaq.push(['_trackEvent','Design Story','Design Story Click', '300 Series']);
});
$('#gotoFrame1 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 1 TF300 left Click', '300 Series']);
});
$('#gotoFrame2 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 2 Collaboration Click', '300 Series']);
});
$('#gotoFrame3 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 3 Productivity Click', '300 Series']);
});
$('#gotoFrame4 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 4 Performance Click', '300 Series']);
});

$('#gotoFrame6 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 6 Style Click', '300 Series']);
});
$('#gotoFrame7 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 7 Entertainment Click', '300 Series']);
});
$('#gotoFrame8 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 8 Audio Click', '300 Series']);
});
$('#gotoFrame9 a').click(function() { 
	_gaq.push(['_trackEvent','Navigation','Frame 9 TF300 right Click', '300 Series']);
});


// email functionality
// validation parameters for Left
var validateParamsLeft = {
	onsubmit: true,
	onkeyup: false, 
	focusInvalid: false,
	onfocusout: false,
	rules: {
		email:{
			required: true,
			 email: true
		}
	},
	messages: {
		email: "<strong>WELL, THIS IS AWKWARD.</strong> <br />The email address you entered is not valid. Please enter a valid address and you&#39;ll be on your way in no time."
	},
	errorPlacement: function(error, element) {
		$("#inner-mail").html(error);
	},
	showErrors: function(errorMap, errorList){
		if (errorList.length > 0) { 
			this.defaultShowErrors();
			$("#inline_mail").colorbox({href:"#inner-mail", inline:true, width:"336px", height:"245px", open:true});
		}
		
	},
	success: function(validAddress) {
		return true;
	}
}

// validation parameters Right
var validateParamsRight = {
	onsubmit: true,
	onkeyup: false, 
	focusInvalid: false,
	onfocusout: false,
	rules: {
		email:{
			required: true,
			 email: true
		}
	},
	messages: {
		email: "<strong>WELL, THIS IS AWKWARD.</strong> <br />The email address you entered is not valid. Please enter a valid address and you&#39;ll be on your way in no time."
	},
	errorPlacement: function(error, element) {
		$("#inner-mail").html(error);
	},
	showErrors: function(errorMap, errorList){
		if (errorList.length > 0) { 
			this.defaultShowErrors();
			$("#inline_mail").colorbox({href:"#inner-mail", inline:true, width:"336px", height:"245px", open:true});
		}
		
	},
	success: function(validAddress) {
		return true;
	}
}


//Form Validation
$("#emailForm-left").validate(validateParamsLeft);
$("#emailForm-right").validate(validateParamsRight);

  
