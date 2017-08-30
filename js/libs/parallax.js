/* Author: CMD Agency */

/**
* Class Parallax
* @param obj params
*   params.startFrame - the frame of id to display first
*   params.width - width of top-level frame
*   params.height - height of top-level frame
*   params.gutter - width of space between frames and on each end of top layer
*   params.offset - minimum left margin
*   params.yOffset - minimum top padding
*/
function Parallax(params) { 
	
	var self = this;
	self.startFrame = params.startFrame;
	self.width = params.width;
	self.height = params.height;
	self.gutter = params.gutter;
	self.offset = params.offset;
	self.yOffset = params.yOffset;
	self.navOffset = 75;
	self.smallScrollIncrement = params.smallScrollIncrement;
	self.largeScrollIncrement = params.largeScrollIncrement;
	
	self.asusAnimation1 = null;	
	
	/**
	* calculateOffset()
	* sets offsets, which is used to center content in window
	*/
	self.calculateOffset = function() { 
		var browserWidth = $(window).width();
		// offset helps us center the content in the window
		self.offset = (browserWidth - self.width) / 2;
		if (self.offset < 0) { 
			self.offset = 0;
		}
		
		var browserHeight = $(window).height();
		self.yOffset = ((browserHeight - self.height - $('nav').height()) / 2) + (self.navOffset / 2);
		if (self.yOffset < 0) { 
			self.yOffset = 0;
		}
	}	
	
	/**
	* preloader()
	*/
	self.preloader = function() { 

		var total = $('#main img').length;
	  var loaded = 0;
  	var percentage = loaded/total*100;
  	var words = ['deadlines', 'design', 'efficiency', 'entertainment', 'fun', 'games', 'impossible', 'lightweight', 'movies', 'music', 'play', 'productivity', 'tablets', 'todolists', 'work'];
  	var wordsPaths = new Array();
  	$(words).each(function(index, value) { 
  		wordsPaths.push('img/preloaderWords/' + value + '.gif');
  	});
  	var wordsFinal = 'life';
  	wordsPaths.push('img/preloaderWords/' + wordsFinal + '.gif');
  	
  	// set paths for other images to preload
  	// preloader
  	var otherImages = new Array();
		otherImages.push('img/transform.gif');
  	otherImages.push('img/preloader_bar_empty.jpg');
  	otherImages.push('img/preloader_bar_full.jpg');
  	// color swatch picker
  	otherImages.push('img/tabletcolor01.png');
		otherImages.push('img/tabletcolor02.png');
		otherImages.push('img/tabletcolor03.png');
		// nav
		otherImages.push('img/right-list-bg.png');
		otherImages.push('img/left-list-bg.png');
		otherImages.push('img/nav-bg-box_spHorzR.png');
		otherImages.push('img/nav-bg-box_spHorzR.png');
		otherImages.push('img/nav-bg-box_spHorz.png');
		otherImages.push('img/nav-bg-box_spHorz.png');
		otherImages.push('img/logo.png');
		otherImages.push('img/footerList_bullet.png');
		// feature list
		otherImages.push('img/featureIcn01_selected.png');
		otherImages.push('img/featureIcn02_selected.png');
		otherImages.push('img/featureIcn03_selected.png');
		otherImages.push('img/featureIcn04_selected.png');
		otherImages.push('img/featureIcn05_selected.png');
		otherImages.push('img/featureIcn06_selected.png');
		// share
		otherImages.push('img/twitterHover.png');
		otherImages.push('img/facebookHover.png');
		otherImages.push('img/pinterestHover.png');
		// other
		otherImages.push('img/background.jpg');
		otherImages.push('img/line.png');
	
		// randomize the words
		words = words.sort(function() {return 0.5 - Math.random()}) //Array elements now scrambled
		wordCount = words.length;
		
		// preload images required for preloader
		$.imgpreload(wordsPaths, {
		
			all: function() { 
			
				$('#main img').imgpreload({
					each: function()
					{	
						
						loaded++;
						percentage = Math.round(loaded/total*100);
						//update percentage bar
						$('#preloader #loadBar').css({width: percentage+"%"});
						// update percentage text
						$('#preloader #loadingText span').text(percentage);
						
						// determine which word to show
						if (percentage <= 80) { 
							var wordIndex = Math.floor(wordCount * percentage * .01) - 1;
							if (wordIndex < 0) wordIndex = 0;	
							var wordToDisplay = words[wordIndex];
						} else { 
							var wordToDisplay = wordsFinal;
						}
						
						$('#transformWord img').hide();
						$('#transformWord img#' + wordToDisplay).show();

					},
					all: function()
					{
						setTimeout(function() { 
							$('#preloader').hide();
							// display those pesky animations that often show up on the preloader
							$('#hero, #bigWords, #watchVideoButtons').css({'visibility': 'visible'});
							$('.sub-nav, .sub-nav-right').removeClass('invisible');
						}, 1000);
						
						
						// preload CSS images
						$.imgpreload(otherImages);
					}
				});	
		
			}
		
		});
		
		
	}

	self.setup = function(newExperience) { 
	
		self.calculateOffset();
	
		if (typeof(newExperience) != null) { 
			if (newExperience == 1) { 
				
			} else { 
				newExperience = 0;
			}
		} else { 
			newExperience = 0;
		}
		
		// move dev view area according to offsets
		$('#containerArea').css({left: self.offset});
		$('#containerArea').css({top: self.yOffset});
		// move frame anchors according to offset
		$('#scrollElement div a').css({left: (-1 * self.offset)});
		$('#scrollElement div a').css({top: (-1 * self.yOffset)});
		
		// move layers down according to yOffset
		$('.parallaxed').css({top: self.yOffset});
		
		// position non-parallaxed elements
		self.positionNonParallaxElements();
		
		// set left positions of frames
		$('.parallaxed, #scrollElement').each(function() { 
			var rate = $(this).attr('rel');
			
			var elements = $('> div', $(this)).length;
			
			for (var i = 0; i <= elements; i ++) { 
				var xPos = ((self.width + self.gutter) * i * rate);
				xPos -= (self.width * .75 * rate); // account for reduced size of frame 0
				
				// apply offset (so that we can center this whole thing
				xPos += self.offset;
				$('.frame' + (i), $(this)).css({left: xPos});
			}
		});
		
		
		
		// unbind any existing scroll events
		$(document).unbind('scroll');
		 $(document).scroll(function() { 
		
			//seek in animation
			var animationStart = 0
		
			// get percentage of scroll element hidden
			var width = $('#scrollElement').width();
			var scrollLeft = $(window).scrollLeft();
				
			// get left positions of the elements
			$('.parallaxed').each(function() { 
				var left = 0 - (scrollLeft * $(this).attr('rel'));
				$(this).stop(1, 1).animate({'left': left}, 500);
			});
			
			

			// manage navigation
			self.manageNavigation(scrollLeft);
			
			
			
		}); 
		
		// handle interactions 
		self.manageInteractionEvents();
		
		// load our custom animations
		self.asusAnimation1();
		self.transformLifeRightAnimation();
		self.transformPlayAnimation();
		self.transformWorkAnimation();
		self.transformLifeLeftAnimation();
		self.watchVideoLeftAnimation();
		self.watchVideoRightAnimation();
		
		
		// start preloader
		self.preloader();
		
		// go to the correct frame on load
		if (newExperience) { 
			self.gotoFrame(self.startFrame);
		}
	
	}
	
	
	/* scrollRight - scrolls right by set increment */
	self.scrollRight = function () { 
		$(window).scrollLeft($(window).scrollLeft() + self.smallScrollIncrement);
	}
	
	/* scroll left */
	self.scrollLeft = function() { 
		$(window).scrollLeft($(window).scrollLeft() - self.smallScrollIncrement);
	}
	
	//scroll right fast
	self.scrollRightFast = function() { 
		$(window).scrollLeft($(window).scrollLeft() + self.largeScrollIncrement);
	}
	
	// scroll left fast
	self.scrollLeftFast = function() { 
		$(window).scrollLeft($(window).scrollLeft() - self.largeScrollIncrement);
	}
	
	/**
	* positionNonParallaxElements()
	*/
	self.positionNonParallaxElements = function() { 
		// set dimensions and position of header, footer, and subfooter
		$('header').css({ width: self.width + self.gutter + self.gutter, height: self.yOffset });
		$('footer').css({top: self.height + self.yOffset - (self.navOffset)});
		$('#subfooter').css({ top: self.height + self.yOffset + $('footer').height() - self.navOffset, height: self.yOffset });
		
		$('#mainBackground').css({top: self.yOffset, height: self.height - self.navOffset });
		$('#mainMask').css({top: self.yOffset, height: self.height - self.navOffset }); // hides the setup process
		
		// set dimensions and position of preloader
		$('#preloader').css({ top: self.yOffset });
		
		// set dimensions and position of topGutterShadow
		$('#topGutterShadow').css({ top: self.yOffset});
		
		// set position and width of hero and hero action container
		$('#hero').css({width: self.width, left: self.offset, height: self.height, top: self.yOffset, height: self.height});
		// set position and width of big words container
		$('#bigWords').css({width: self.width, left: self.offset, height: self.height, top: self.yOffset, height: self.height});
		// set position of video buttons
		$('#watchVideoButtons').css({width: self.width, left: self.offset, height: self.height, top: self.yOffset, height: self.height});
		
	}
	
	/**
	* gotoFrame() - navigates by ID to a frame in the guide nav
	* @param int frame
	*/
	self.gotoFrame = function(frame) { 
		$('body').scrollTo('#frame' + frame, 500, {
			axis: 'x',
			onAfter: function() { 
				setTimeout(function() { // give a little time for animations to stop
					$('.parallaxed').show();
					$('#containerArea').show();
					$('#mainMask').hide();
				}, 800);	
			}
		});
	}
	
	/**
	* manageInteractionEvents() - manage how events like keystrokes and mouse wheel control experience; handle nav clicks
	*/
	self.manageInteractionEvents = function() { 
	
		// click events for nav
		$('nav > ul.sub-nav li, nav > ul.sub-nav-right li, nav > div.logo-block').unbind('click');
		$('nav > ul.sub-nav li, nav > ul.sub-nav-right li, nav > div.logo-block').click(function() {
			var frameRel = $(this).attr('rel');
			$('body').scrollTo($('#frame' + frameRel), 1000);
		 });
		
		// keystroke events
		$(document).unbind('keydown'); // unbind any existing  keydown events
		
		$(document).bind('keydown', 'up', function() { 
			self.scrollLeft();
			return false;
		});
		
		$(document).bind('keydown', 'down', function() { 
			self.scrollRight();
			return false;
		});
		
		$(document).bind('keydown', 'right', function() { 
			self.scrollRight();
			return false;
		});
		
		$(document).bind('keydown', 'left', function() { 
			self.scrollLeft();
			return false;
		});
		
		//$(document).unbind('mousewheel'); // unbind any existing mousewheel events
		
		$('body').bind('mousewheel', function(event, delta) {  // handle up, down, left, right mousewheels
			
			var isTwoFingerHorizontalScroll = 0;
			
			// handle two-figer trackpad horizontal scrolling
			//chrome
			if (typeof(event.originalEvent.wheelDeltaX) != 'undefined') {
				if (event.originalEvent.wheelDeltaX != 0) { 
					isTwoFingerHorizontalScroll = 1;
				} 
			// firefox
			} else if (typeof(event.originalEvent.axis) != 'undefined') { 
				if (event.originalEvent.axis == 1) { 
					isTwoFingerHorizontalScroll = 1;
				} 
			} 
			
			if (isTwoFingerHorizontalScroll == 0) { 
				
				if (event.preventDefault) {
					event.preventDefault();
				} else { 
					event.returnValue = false;
				}
				
				// works in Chrome
				$('body').stop().animate({
					scrollLeft: $('body').scrollLeft() + (-delta * 100)
				}, 'slow');
				
				// works in Firefox
				$('html').stop().animate({
					scrollLeft: $('html').scrollLeft() + (-delta * 200)
				}, 'slow');
			
			}
			
			
		});


	}
	
	
	// scroll right
	self.scrollRight = function () { 
		$(window).scrollLeft($(window).scrollLeft() + 100);
	}
	
	// scroll left
	self.scrollLeft = function() { 
		$(window).scrollLeft($(window).scrollLeft() - 100);
	}
	
	// scroll left fast
	self.scrollLeftFast = function() { 
		//$(window).scrollLeft($(window).scrollLeft() - 100);
	}
	
	/**
	* manageNavigation() - called on scroll
	* @param int scrollLeft
	*/
	self.manageNavigation = function(scrollLeft) { 

		// manage navigation				
		var counter = 0;
		$('#scrollElement > div').each(function() { 
			
			// get left positions of all frames in guide layer
			var leftPos = $(this).css('left');
			leftPos = leftPos.replace('px', '');
			
			// define ranges
			var rangeMin = leftPos - (self.gutter / 2) - self.offset;
			var rangeMax = leftPos + self.width + (self.gutter / 2) - self.offset;
	
			// add class to correct nav element when item in range
			if ((scrollLeft >= rangeMin && (scrollLeft <= rangeMax))) { 
				$('nav > ul.sub-nav li, nav > ul.sub-nav-right li').removeClass('current');
				$('li#gotoFrame' + counter).addClass('current');
			} else { 
				$('li#gotoFrame' + counter).removeClass('current');
			}
			
			counter ++;
		});
		
		
	}
	
	/**
	* getFramePosition - gets the x position of a frame relative to the top-level layer
	* @param int frame - the frame id
	* @return int framePos - in pixels
	*/
	self.getFramePosition = function(frame) { 
		var framePos = $('#scrollElement .frame' + frame).css('left');
		framePos = framePos.replace('px', '');
		framePos -= self.offset;
		return framePos;
	}
	
	/**
	* imageAnimateSetup - populate divs with images, set default styles, and control animation behavior
	* @param jqueryElement container - the element that will contain the image as a background
	* @param int numPics - the number of pics we have to display
	* @param string imageFileBase - the base of the image file name
	* @param string id - the unique name for this animtion sequence
	* @param int startPos - scroll position at which to start animation
	* @param int swapRate - how many pixels between each image change
	* @param bool reverse - reverse the order of image display
	*/
	self.imageAnimateSetup = function(container, numPics, imageFileBase, id, startPos, swapRate, reverse) { 
		if (typeof(reverse) == 'null') { 
			reverse = 0;
		}
	
		if (!reverse) { 
			for (var i = 0; i < numPics; i ++) { 
				container.append('<img src="img/' + imageFileBase + self.zeroPad(i, 2) + '.png" class="animatedImage" id="' + id + '_' + i + '" />');
			}
		} else { 
			for (var i = numPics - 1; i >= 0; i --) { 
				container.append('<img src="img/' + imageFileBase + self.zeroPad(i, 2) + '.png" class="animatedImage" id="' + id + '_' + i + '" />');
			}
		}
		
		$(window).scroll(function() { 
			var scrollLeft = $(document).scrollLeft();
			// animation image swap 
			
			var imageNum = Math.round((scrollLeft - startPos) / swapRate);
			
			if (reverse) { 
				imageNum = numPics - imageNum - 1;
			}

			var imageMarker = imageNum;
			var urlMarker = "url(img/" + imageFileBase + imageNum;
			$('.animatedImage', container).removeClass('current');
			if((imageMarker >= 0) && (imageMarker <= numPics)) {
				$('#' + id + '_' + imageMarker, container).addClass('current');
			} 
		})
	}
	
	/**
	* zeroPad - adds zero padding to integers
	* @param int number - number to pad
	* @param int places - total number of places
	* @return string - padded number
	*/
	self.zeroPad = function(num, places) {
	  var zero = places - num.toString().length + 1;
	  return Array(+(zero > 0 && zero)).join("0") + num;
	}

	/**
	* watchVideoLeftAnimation - animate the left video play button
	*/
	self.watchVideoLeftAnimation = function() { 
		var wayPoints = [
			{ scrollStart: self.getFramePosition(0), scrollEnd: self.getFramePosition(1), startXPos: 1750, startYPos: -23, endXPos: 297, endYPos: -22 },
			{ scrollStart: self.getFramePosition(1) + 1, scrollEnd: self.getFramePosition(2), startXPos: 297, startYPos: -22, endXPos: -364, endYPos: -23 },
			{ scrollStart: self.getFramePosition(2) + 1, scrollEnd: self.getFramePosition(10), startXPos: -364, startYPos: -23, endXPos: -364, endYPos: -23 }
		];
		$('#watchVideoLeft').hide();
		
		$(document).scroll(function() { 
	
			var scrollLeft = $(document).scrollLeft();
			$('#watchVideoLeft').hide();
			if ((scrollLeft <= self.getFramePosition(1) + 200) && (scrollLeft <= self.getFramePosition(2))) { 
				$('#watchVideoLeft').show();
			}
			// do the animation
			var newPos = self.animationCalc(scrollLeft, wayPoints);
			$('#watchVideoLeft').stop(1,1).animate({left: newPos.x, top: newPos.y});
	
		});	
			
	}
	
	/**
	* watchVideoRightAnimation - animate the right video play button
	*/
	self.watchVideoRightAnimation = function() { 
		var wayPoints = [
			{ scrollStart: self.getFramePosition(0) + 1, scrollEnd: self.getFramePosition(8), startXPos: -30, startYPos: -23, endXPos: -30, endYPos: -23 },
			{ scrollStart: self.getFramePosition(8) + 1, scrollEnd: self.getFramePosition(9), startXPos: -30, startYPos: -23, endXPos: -130, endYPos: -78 },
			{ scrollStart: self.getFramePosition(9) + 1, scrollEnd: self.getFramePosition(10), startXPos: -142, startYPos: -78, endXPos: -1600, endYPos: -75 }
		];
		$('#watchVideoRight').hide();
		
		$(document).scroll(function() { 
	
			var scrollLeft = $(document).scrollLeft();
			$('#watchVideoRight').hide();
			if ((scrollLeft >= self.getFramePosition(9) - 200) && (scrollLeft <= self.getFramePosition(10) + 200)) { 
				$('#watchVideoRight').show();
			}
			// do the animation
			var newPos = self.animationCalc(scrollLeft, wayPoints);
			$('#watchVideoRight').stop(1,1).animate({left: newPos.x, top: newPos.y});
	
		});	
			
	}
	
	/**
	* asusAnimation1 - animate the computer from frame 1 to frame 9
	*/
	self.asusAnimation1 = function() { 
		
		var startFrame = 1;
		var endFrame = 10;
	
		// set up image animations
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation-3'), 25, 'asusAnimation-3/l3_', 'asus-3', self.getFramePosition(1), 60, 1);
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation-2'), 25, 'asusAnimation-2/l2_', 'asus-2', self.getFramePosition(2), 60, 1);
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation-1'), 25, 'asusAnimation-1/l1_', 'asus-1', self.getFramePosition(3), 60, 1);
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation0'), 25, 'asusAnimation0/l0_', 'asus0', self.getFramePosition(4), 60, 1);
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation0b'), 25, 'asusAnimation0b/r0_', 'asus0b', self.getFramePosition(5), 60);
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation1'), 25, 'asusAnimation1/r1_', 'asus1', self.getFramePosition(6), 60);
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation2'), 25, 'asusAnimation2/r2_', 'asus2', self.getFramePosition(7), 60);
		self.imageAnimateSetup($('#asusAnimation1 #imageAnimation3'), 25, 'asusAnimation3/r3_', 'asus3', self.getFramePosition(8), 60);
		
		// animate positions
		var wayPoints = [
			{ scrollStart: self.getFramePosition(0), scrollEnd: self.getFramePosition(1), startXPos: 1750, startYPos: -23, endXPos: 307, endYPos: -22 },
			{ scrollStart: self.getFramePosition(1) + 1, scrollEnd: self.getFramePosition(2), startXPos: 307, startYPos: -22, endXPos: -204, endYPos: -23 },
			{ scrollStart: self.getFramePosition(2) + 1, scrollEnd: self.getFramePosition(3), startXPos: -204, startYPos: -23, endXPos: -94, endYPos: -66 },
			{ scrollStart: self.getFramePosition(3) + 1, scrollEnd: self.getFramePosition(4), startXPos: -94, startYPos: -66, endXPos: -109, endYPos: -83 },
			{ scrollStart: self.getFramePosition(4) + 1, scrollEnd: self.getFramePosition(5), startXPos: -109, startYPos: -83, endXPos: -102, endYPos: 620 },
			{ scrollStart: self.getFramePosition(5), scrollEnd: self.getFramePosition(6), startXPos: -102, startYPos: 620, endXPos: -130, endYPos: -55 },
			{ scrollStart: self.getFramePosition(6), scrollEnd: self.getFramePosition(7), startXPos: -130, startYPos: -55, endXPos: 190, endYPos: -10 },
			{ scrollStart: self.getFramePosition(7) + 1, scrollEnd: self.getFramePosition(8), startXPos: 190, startYPos: -10, endXPos: -8, endYPos: -63 },
			{ scrollStart: self.getFramePosition(8) + 1, scrollEnd: self.getFramePosition(9), startXPos: -8, startYPos: -63, endXPos: -140, endYPos: -78 },
			{ scrollStart: self.getFramePosition(9) + 1, scrollEnd: self.getFramePosition(10), startXPos: -140, startYPos: -78, endXPos: -1600, endYPos: -75 }
		];
		
		var showPos = self.getFramePosition(startFrame);
		var hidePos = self.getFramePosition(endFrame) + 1;
		
		$(document).scroll(function() { 
		
			var scrollLeft = $(window).scrollLeft();
			
			// show/hide image animations
			$('.imageAnimation').hide();
			
			// left side
			if ((scrollLeft >= self.getFramePosition(4)) && (scrollLeft < self.getFramePosition(5))) { 
				$('#imageAnimation0').show();
			} else if ((scrollLeft >= self.getFramePosition(3)) && (scrollLeft < self.getFramePosition(4))) { 
				$('#imageAnimation-1').show();
			} else if ((scrollLeft >= self.getFramePosition(2)) && (scrollLeft < self.getFramePosition(3))) { 
				$('#imageAnimation-2').show();
			} else if ((scrollLeft >= self.getFramePosition(1)) && (scrollLeft < self.getFramePosition(2))) { 
				$('#imageAnimation-3').show();
			} else if ((scrollLeft >= self.getFramePosition(0)) && (scrollLeft < self.getFramePosition(1))) {
				$('#imageAnimation-4').show();
			} 
			
			// right side
			if ((scrollLeft > self.getFramePosition(5) + 1) && (scrollLeft < self.getFramePosition(6))) { 
				$('#imageAnimation0b').show();
			} else if ((scrollLeft >= self.getFramePosition(6)) && (scrollLeft <= self.getFramePosition(7) + 1)) { 
				$('#imageAnimation1').show();
			} else if ((scrollLeft > self.getFramePosition(7) + 1) && (scrollLeft <= self.getFramePosition(8) + 1)) { 
				$('#imageAnimation2').show();
			} else if ((scrollLeft > self.getFramePosition(8) + 1) && (scrollLeft <= self.getFramePosition(9))) { 
				$('#imageAnimation3').show();
			} else if ((scrollLeft > self.getFramePosition(9)) && (scrollLeft <= self.getFramePosition(10))) { 
				$('#imageAnimation4').show();
			}

			// do the animation
			var newPos = self.animationCalc(scrollLeft, wayPoints);
			$('#asusAnimation1').stop(1,1).animate({left: newPos.x, top: newPos.y});

		});

	}	
	
	/**
	* transformLifeRightAnimation - animate "transform" life from frame 8 to frame 9
	*/
	self.transformLifeRightAnimation = function() { 
		
		var startFrame = 8;
		var endFrame = 10;
	
		var wayPoints = [
			{ scrollStart: self.getFramePosition(8) + 1, scrollEnd: self.getFramePosition(9), startXPos: 1700, startYPos: 85, endXPos: -301, endYPos: 85 },
			{ scrollStart: self.getFramePosition(9) + 1, scrollEnd: self.getFramePosition(10), startXPos: -301, startYPos: 85, endXPos: -1400, endYPos: 85 }
		];
		
		var showPos = self.getFramePosition(startFrame) + 1;
		var hidePos = self.getFramePosition(endFrame) + 1;
		
		$(document).scroll(function() { 
			var scrollLeft = $(window).scrollLeft();
			$('#transformLifeRight').hide();
			
			var newPos = self.animationCalc(scrollLeft, wayPoints);
			$('#transformLifeRight').stop(1,1).animate({left: newPos.x, top: newPos.y})
			
			if ((scrollLeft < showPos) || (scrollLeft > hidePos)) { 
				$('#transformLifeRight').hide();
			} else if ((scrollLeft >= showPos) && (scrollLeft <= hidePos)) {
				$('#transformLifeRight').show();
			}
		});
	}
	
	/**
	* transformLifeLeftAnimation - animate "transform" life from frame 1 to frame 2
	*/
	self.transformLifeLeftAnimation = function() { 
		$('#transformLifeLeft').css({left: -1000, top: 155 });
	
		var startFrame = 0;
		var endFrame = 10;
	
		var wayPoints = [
			{ scrollStart: self.getFramePosition(2) + 1, scrollEnd: self.getFramePosition(10), startXPos: -1000, startYPos: 135, endXPos: -1000, endYPos: 135 }, // this should not be necessary, but we're finding the left position of this element to be unruly otherwise
			{ scrollStart: self.getFramePosition(1), scrollEnd: self.getFramePosition(2), startXPos: 1070, startYPos: 135, endXPos: -1000, endYPos: 135 },
			{ scrollStart: self.getFramePosition(0), scrollEnd: self.getFramePosition(1), startXPos: 1800, startYPos: 135, endXPos: 1070, endYPos: 135 }
		];
		
		var showPos = self.getFramePosition(startFrame);
		var hidePos = self.getFramePosition(endFrame) + 1;
		
		$(document).scroll(function() { 
			var scrollLeft = $(window).scrollLeft();
			$('#transformLifeLeft').hide();
			
			var newPos = self.animationCalc(scrollLeft, wayPoints);
			$('#transformLifeLeft').stop(1,1).animate({left: newPos.x, top: newPos.y})
			
			if (scrollLeft > self.getFramePosition(2)) { 
				$('#transformLifeLeft').hide();
			} else { 
				$('#transformLifeLeft').show();
			}
		});
	}
	
	/**
	* transformPlayAnimation - animate "transform play"
	*/
	self.transformPlayAnimation = function() { 
		$('#transformPlay').css({ left: 1450, top: 405 });
	
		var startFrame = 0;
		var endFrame = 10;
	
		// animate position
		var wayPoints = [
			{ scrollStart: self.getFramePosition(0), scrollEnd: self.getFramePosition(5), startXPos: 1450, startYPos: 390, endXPos: 1450, endYPos: 390 }, // prevent object from appearing on frame 5
			{ scrollStart: self.getFramePosition(5), scrollEnd: self.getFramePosition(6), startXPos: 1450, startYPos: 390, endXPos: 43, endYPos: 390 },
			{ scrollStart: self.getFramePosition(6) + 1, scrollEnd: self.getFramePosition(7), startXPos: 43, startYPos: 390, endXPos: -38, endYPos: 390 },
			{ scrollStart: self.getFramePosition(7) + 1, scrollEnd: self.getFramePosition(8), startXPos: -38, startYPos: 390, endXPos: -66, endYPos: 390 },
			{ scrollStart: self.getFramePosition(8) + 1, scrollEnd: self.getFramePosition(9), startXPos: -66, startYPos: 390, endXPos: -1067, endYPos: 390 },
		];
		
		var showPos = self.getFramePosition(startFrame);
		var hidePos = self.getFramePosition(endFrame) + 1;
		
		$(document).scroll(function() { 
			var scrollLeft = $(window).scrollLeft();
			$('#transformPlay').hide();
			
			var newPos = self.animationCalc(scrollLeft, wayPoints);
			$('#transformPlay').stop(1,1).animate({left: newPos.x, top: newPos.y})
			
			/*
			if ((scrollLeft < showPos) || (scrollLeft > hidePos)) { 
				$('#transformPlay').hide();
			} else if ((scrollLeft >= showPos) && (scrollLeft <= hidePos)) {
				$('#transformPlay').show();
			}
			*/
			
			if ((scrollLeft > self.getFramePosition(5)) && (scrollLeft < self.getFramePosition(9))) { 
				$('#transformPlay').show();
			} else { 
				$('#transformPlay').hide();
			}
		});
	}
	
	/**
	* transformWorkAnimation - animate "transform work"
	*/
	self.transformWorkAnimation = function() { 
	
		var startFrame = 2;
		var endFrame = 5;
	
		// animate position
		var wayPoints = [
			{ scrollStart: self.getFramePosition(2) + 1, scrollEnd: self.getFramePosition(3), startXPos: 1438, startYPos: 395, endXPos: 539, endYPos: 395 },
			{ scrollStart: self.getFramePosition(3) + 1, scrollEnd: self.getFramePosition(4), startXPos: 539, startYPos: 395, endXPos: 125, endYPos: 395 },
			{ scrollStart: self.getFramePosition(4) + 1, scrollEnd: self.getFramePosition(5) - 1, startXPos: 125, startYPos: 395, endXPos: -1000, endYPos: 395 },
		];
		
		var showPos = self.getFramePosition(startFrame);
		var hidePos = self.getFramePosition(endFrame) - 100; // the 100 offset is used to prevent flashing on frame five for unknown reason
		
		$(document).scroll(function() { 
			var scrollLeft = $(window).scrollLeft();
			$('#transformWork').hide();
			
			var newPos = self.animationCalc(scrollLeft, wayPoints);
			$('#transformWork').stop(1,1).animate({left: newPos.x, top: newPos.y})
			
			if ((scrollLeft < showPos) || (scrollLeft > hidePos)) { 
				$('#transformWork').hide();
			} else if ((scrollLeft >= showPos) && (scrollLeft <= hidePos)) {
				$('#transformWork').show();
			}
		});
	}
	
	
	/**
	* animationCalc - describes the animation of an object, using a linear algebra equation
	* @param int xin - the current left scroll position
	* @param array wayPoints - an array of objects:
	* 	int scrollStart - the position of the left scroll when animation is to start
	* 	int scrollEnd - the position of the left scroll with animation is to end
	* 	int startXPos - the x value of the animated object's start position
	* 	int startYPos - the y value of the animated object's start position
	* 	int endXPos - the x value of the animated object's end position
	* 	int endYPos - the y value of the animated object's end position
	*  @return obj - x and y positions
	*/
	self.animationCalc = function(xin, wayPoints) { 
	
		var startXPos;
		var startYPos;
		var endXPos;
		var endYPos;
		var slope;
		var rate;
		var xout;
		var offset;
		var yout;
		var xDiff;

		$(wayPoints).each(function(index, wayPoint) { 
			if ((xin > wayPoint.scrollStart) && (xin <= wayPoint.scrollEnd)) { 
				startXPos =  wayPoint.startXPos;
				startYPos = wayPoint.startYPos;
				endXPos = wayPoint.endXPos;
				endYPos = wayPoint.endYPos;
				
				// prevent a divide-by-zero error from occuring
				if (endXPos == startXPos) { 
					xDiff = 1;
				} else { 
					xDiff = endXPos - startXPos;
				}
				
				slope = (endYPos - startYPos) / (endXPos - startXPos);
				rate = ((endXPos - (startXPos))) / (wayPoint.scrollEnd - wayPoint.scrollStart);
				xout = ((xin - wayPoint.scrollStart) * rate) + startXPos;
				offset = slope * endXPos + (endYPos * -1);
				yout = slope * xout - offset;

			}	
		});
		
		return { x: xout, y: yout };

	}

}