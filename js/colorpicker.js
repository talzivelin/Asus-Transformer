 $(document).ready(function() {

  // target each link in the navigation div
  $('.colorpicker li').click(function() {
    // link that you clicked
    clicked = $(this).attr('class');

    // make sure that all the others are not active
    // except for the clicked one
    $('.colorpicker li').each(function() {
      if ($(this).attr('class') == clicked) {
        $(this).addClass('active');
      } else {
        $(this).removeClass('active');
      }
    });

   
  });

});

 $(document).ready(function() {
 $('.color01').click(function() {
	 $('#colorswap').attr('src','img/tabletcolor01.png');
	
});

 $('.color02').click(function() {
	$('#colorswap').removeClass('');
    $('#colorswap').attr('src','img/tabletcolor02.png');
	
});

 $('.color03').click(function() {
	$('#colorswap').removeClass('');
   $('#colorswap').attr('src','img/tabletcolor03.png');
	
});
});

//Overlays

$(document).ready(function(){
				//Examples of how to assign the ColorBox event to elements
				$(".youtube").colorbox({iframe:true, innerWidth:639, innerHeight:390});
				 $(".discoverasus").colorbox({inline:true, width:"874"});
				$(".designstory").colorbox({inline:true, width:"874"});
				$(".colorselector").colorbox({inline:true, width:"50%"});
				$(".inline").colorbox({inline:true, width:"640px"});
				$(".buy-box").colorbox({inline:true, innerWidth:627});
				$(".videoleft").colorbox({inline:true, width:"570px"});
				$(".videoright").colorbox({inline:true, width:"570px"});
			
			});

<!--  Small WIndow Popup -->
function popup(mylink, windowname, width, height)
{
if (! window.focus)return true;
var href;
if (typeof(mylink) == 'string')
   href=mylink;
else
   href=mylink.href;
window.open(href, windowname, 'width='+ width +',height='+ height +',scrollbars=no');
return false;
}
