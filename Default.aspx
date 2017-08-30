<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Request.UserAgent);
        string userAgent = Request.UserAgent.ToLower();
        if (userAgent.Contains("transformer") || userAgent.Contains("ipad"))
        {
            Response.Redirect("http://asus.developmentcmd.com/6839_2/dev/project/");
        }
    }
</script>

<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title></title>
  <meta name="description" content="">

  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" href="css/style.css">

  <script src="js/libs/modernizr-2.0.6.min.js"></script>
  <script src="js/libs/parallax.js"></script>
  <script src="js/libs/jquery-1.6.2.js"></script>
  <script type="text/javascript" src="//assets.pinterest.com/js/pinit.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js"></script>  
  <script src="js/ga_dpc_youtube.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
  
  
  
  <header></header>
  
  <!-- top gutter shadow -->
	<div id="topGutterShadow"></div>
  
  <div id="preloader">
  	<div id="wordWrapper">
	  	<div id="transform">TRANSFORM</div>
  		<div id="transformWord">
  			<img id="todolists" src="img/preloaderWords/todolists.gif" alt="todolists"/>
  			<img id="entertainment" src="img/preloaderWords/entertainment.gif" alt="entertainment" />
  			<img id="work" src="img/preloaderWords/work.gif" alt="work" />
  			<img id="play" src="img/preloaderWords/play.gif" alt="play" />
  			<img id="tablets" src="img/preloaderWords/tablets.gif" alt="tablets" />
  			<img id="productivity" src="img/preloaderWords/productivity.gif" alt="productivity" />
  			<img id="music" src="img/preloaderWords/music.gif" alt="music" />
  			<img id="movies" src="img/preloaderWords/movies.gif" alt="movies" />
  			<img id="deadlines" src="img/preloaderWords/deadlines.gif" alt="deadlines" />
  			<img id="design" src="img/preloaderWords/design.gif" alt="design" />
  			<img id="impossible" src="img/preloaderWords/impossible.gif" alt="impossible" />
  			<img id="games" src="img/preloaderWords/games.gif" alt="games" />
  			<img id="fun" src="img/preloaderWords/fun.gif" alt="fun" />
  			<img id="efficiency" src="img/preloaderWords/efficiency.gif" alt="efficiency" />
  			<img id="lightweight" src="img/preloaderWords/lightweight.gif" alt="lightweight" />
  			<img id="life" alt="life" src="img/preloaderWords/life.gif" />
  		</div>
  	</div>
  	
  	<div id="loadBarWrapper">
  		<div id="loadBar"></div>
  	</div>
  	
  	<div id="loadingText">
  		LOADING <span>0</span>&#37;
  	</div>
  </div>

	<div id="mainMask"></div>

	<div id="mainBackground"></div><!-- black background behind content -->

  <div id="main" role="main">
  
  	<!-- <div id="containerArea"></div> --><!-- useful for DEV -->
		
		<!-- hero image of computer - animates independently of parallax -->
		<div id="hero">
			<div class="absolute">
				<div id="asusAnimation1">
					<div id="imageAnimation-4" class="imageAnimation"><!-- no image animation on this layer -->
						<img src="img/asusAnimation-3/l3_24.png" />
					</div>
					<div id="imageAnimation-3" class="imageAnimation"></div>
					<div id="imageAnimation-2" class="imageAnimation"></div>
					<div id="imageAnimation-1" class="imageAnimation"></div>
					<div id="imageAnimation0" class="imageAnimation"></div>
					<div id="imageAnimation0b" class="imageAnimation"></div>
					<div id="imageAnimation1" class="imageAnimation"></div>
					<div id="imageAnimation2" class="imageAnimation"></div>
					<div id="imageAnimation3" class="imageAnimation"></div>
					<div id="imageAnimation4" class="imageAnimation">
						<img src="img/asusAnimation3/r3_24.png" />
					</div>
				</div>
			</div>
		</div>
		
		<!-- big words - animates independently of parallax -->
		<div id="bigWords">
			<div class="absolute">
				<div id="transformLifeRight">TRANSFORM LIFE</div>
			</div>
			<div class="absolute">
				<div id="transformPlay">TRANSFORM PLAY</div>
			</div>
			<div class="absolute">
				<div id="transformWork">TRANSFORM WORK</div>
			</div>
			<div class="absolute">
				<div id="transformLifeLeft">TRANSFORM LIFE</div>
			</div>
		</div>
		
		<!-- watchVideoButtons -->
		<div id="watchVideoButtons">
			<div class="absolute">
		    <a id="watchVideoLeft" class="videoleft" href="#video01">Watch Video</a>
	  	  <a id="watchVideoRight" class="videoright" href="#video02">Watch Video</a>
		  </div>
		</div>
        
        <!-- Begin Video Overlay Left -->
        <div class="overlay">
        	<div id="video01">
        	<div id="flashdiv1"><a href="http://www.youtube.com/watch?v=Hd9gBpVUOGE&hl=pt-br&fs=1" target="_blank"></a></div>
			<script type="text/javascript">
			    var params = { allowScriptAccess: "always" };
			    var atts = { id: "myplayerid1" };
			    swfobject.embedSWF("http://www.youtube.com/v/Hd9gBpVUOGE&hl=pt-br&fs=1&enablejsapi=1&playerapiid=myplayerid1", "flashdiv1", "560", "315", "8", null, null, params, atts);
            </script>
            </div>	
         </div>   
        <!-- End Video Overlay Left -->
        
        <!-- Begin Video Overlay Right -->
        <div class="overlay">
        	<div id="video02">
        	<div id="flashdiv2"><a href="http://www.youtube.com/watch?v=Hd9gBpVUOGE&hl=pt-br&fs=1" target="_blank"></a></div>
			<script type="text/javascript">
			    var params = { allowScriptAccess: "always" };
			    var atts = { id: "myplayerid2" };
			    swfobject.embedSWF("http://www.youtube.com/v/Hd9gBpVUOGE&hl=pt-br&fs=1&enablejsapi=1&playerapiid=myplayerid2", "flashdiv2", "560", "315", "8", null, null, params, atts);
            </script>
            </div>
         </div>   
        <!-- End Video Overlay Right -->
		
		<div id="layer0" class="parallaxed" rel="1">
        	<div class="frame0"></div>
			<div class="frame1">
            <!-- Begin Transformer Pad Header -->
                <div class="asus_tran_pad_header"></div>
                <!-- End Transformer Pad Header -->      

                <!-- Begin Features -->
                <div class="featureslist">
                    <div class="specicons">
                             <a class="icon01 iconOne active"></a>
                             <a class="icon02 iconTwo"></a>
                             <a class="icon03 iconThree"></a>
                             <a class="icon04 iconFour"></a>
                             <a class="icon05 iconFive"></a>
                             <a class="icon06 iconSix"></a>
                        </div>
                    
                    <div class="feature one show">
                    	<h1>Features and Specifications</h1>
                        <ul>
                            <li>Operating System: Android&#8482; 4.0 (Ice Cream Sandwich) </li>
                            <li>Display: 10.1-inch WXGA IPS capacitive pressure-sensing multi-touch display with 178&#176; viewing angle (1280 x 800)</li>
                            <li>Chipset: NVIDIA<sup>&#174;</sup> Tegra<sup>&#174;</sup> 3 Quad Core mobile processor </li>
                            <li>Wireless: 802.11 b/g/n </li>
                            <li>Memory: 1 GB DDR3</li>
                            <li>Storage: 32 GB eMMC flash</li>
                            <li>Camera: 1.2 megapixel  (front); 8.0 megapixel (rear)</li>
                            <li>Speakers: Built-in stereo speakers with ASUS SonicMaster&#8482; technology</li>
                            <li>Card Reader: Micro SD card reader</li>
                            <li>Input/ Output: 1 x Micro HDMI, 2-in-1 audio jack (headphone/mic-in jack), internal mic</li>
                            <li>Battery: 22 W/h li-polymer battery (up to 10 hours)<sup>1</sup> </li>
                            <li>Dimensions: 10.35 x 7.12 x 0.39 (W x D x H)</li>
                            <li>Weight: 1.4lbs</li>
                            <li>Color: Blue (red and white coming soon)</li>
                        </ul>
                        <span>1 Actual battery life varies with usage. Operation lifetime subject to product model, normal usage conditions and configurations.</span>
                    </div>
                    
                    <div class="feature two hide">
                    	<h1>Android&#8482; Operating System</h1>
                        <ul>
                            <li>Android 4.0 Ice Cream Sandwich OS</li>
                            <li>Easy to use and upgrade</li>
                            <li>Wi-Fi Direct* - Connect directly to other Wi-Fi Direct compatible devices at the touch of a button</li>
                            <li>Built-in photo editing - Edit photos, no additional apps required</li>
                            <li>Offline web browsing - Read your favorite sites without an Internet connection</li>
                        </ul>
                    </div>
                    
                    <div class="feature three hide">
                     	<h1>Polaris&#8482; Office</h1>
                        <ul>
                            <li>Open and edit Microsoft<sup>&#174;</sup> Word documents, PowerPoint presentations and Excel documents</li>
                            <li>Unprecedented productivity - Available keyboard docking station transforms the device from a tablet to a functional, lightweight laptop</li>
                        </ul>
                    </div>
                    
                    <div class="feature four hide">
                   	    <h1>SuperNote</h1>
                        <ul>
                            <li>Your notes, your way - Make notes by typing with the onscreen or keyboard dock, or write directly onscreen</li>
                            <li>Picture this - Make notes or draw directly on relevant photos or documents </li>
                            <li>Paintbook - Advanced illustration program turns the Transformer into a canvas, including robust icon and paintbrush options</li>
                            <li>None shall pass - Keep private notes private with password protection</li>
                        </ul>
                    </div>
                    
                    <div class="feature five hide">
                     	<h1>MyLibrary</h1>
                        <ul>
                            <li>A library at your fingertips - 1-click Google Bookstore access and asus@vibe</li>
                            <li>Read more - ePub and PDF support</li>
                        </ul>
                    </div>
                    
                    <div class="feature six hide">
                    	<h1>MyCloud</h1>
                        <ul>
                            <li>Your content, anywhere - Access photos, music documents and more, anytime and anywhere</li>
                            <li>Free your drive - Keep your tablet uncluttered and running optimally by storing little-used files in the cloud</li>
                        </ul>
                    </div>
                
                </div>
                <!-- End Features -->

                <!-- Begin Share -->  
                  <div class="share">
                    <ul>
                   		<a class="twitterShare" onClick="return popup(this,'examplea', '600', '352')" href="http://twitter.com/intent/tweet?text=Embrace+your+productive+side.+Check+out+the+new+ASUS+Transformer+Pad:+http://asustablets.us/+%23everysideofyou+%23leftbrainFTW"><li class="twitter"></li></a>
                       <a onClick="return popup(this,'examplea', '640', '406')" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Fwww.asustablets.us"><li class="facebook"></li></a>
                        <a class="pinterestShare" onClick="return popup(this,'examplea', '600', '515')" href="http://pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.asustablets.us%2F&media=http://t2.gstatic.com/images?q=tbn:ANd9GcTGoaCZClozNuQoFM0oyUIiiosDv9FrjvE2vEihJ79RYPgmm0e4&description=As pleasing to the eye as is to the to-do list. Meet the new ASUS Transformer Pad: http://asustablets.us/ #foreverysideofyou&width=734&height=760" class="pin-it-button" count-layout="none"><li class="pinterest"></li></a>
                    </ul>
                    <p>share</p>
                  </div>
                <!-- End Share -->
                
                <!-- Begin Buy Button -->
                <div class="buy"> 
                	<a href="#buy-overlay" class="buy-box"><img src="img/button_buy_now.png" alt="Buy Now" /></a>
                </div>
                
                <!-- End Buy Button -->
                
                <!-- Begin Buy Overlay -->
                <div class="overlay"> 
                 <div id="buy-overlay" class="buybox" >
					<h1>Begin the Transformation</h1>
					<h2>United States</h2>
					<ul id="buylocals">
                    	
                            <!-- ABT -->
                            <li><a href="http://www.abt.com/brand/ASUS?utm_source=mfASUS&utm_medium=mf&utm_campaign=mflink" onClick="_gaq.push(['_trackEvent','Buy Now','Abt US', '300 Series']);" target="_blank"><img src="img/buyLocals_abt.jpg" alt="Abt" width="74" height="25" /></a></li>
                            <!-- Amazon -->
                            <li><a href="http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Delectronics&field-keywords=B007P4YAPK" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Amazon US', '300 Series']);"><img src="img/buyLocals_1.jpg" alt="buyLocals_1" width="74" height="25" /></a></li>
                            <!-- American TV -->
                            <li><a href="http://www.americantv.com/pages/asus-eee_prime-TF300T.jsp" onClick="_gaq.push(['_trackEvent','Buy Now','American TV US', '300 Series']);" target="_blank"><img src="img/buyLocals_amtv.jpg" alt="amtv" width="74" height="25" /></a></li>
                            <!-- Brandsmart -->
                            <li><a href="http://www.brandsmartusa.com/Product/159688-Asus-TF300T-B1-BL-10-1-32Gb-Transformer-Prime-Tablet" onClick="_gaq.push(['_trackEvent','Buy Now','BrandSmart US', '300 Series']);" target="_blank"><img src="img/buyLocals_brandsmart.jpg" alt="Brandsmart" width="74" height="25" /></a></li>
                            <!-- Best Buy -->
                            <li><a href="http://www.bestbuy.com/site/Asus+-+Eee+Pad+Transformer+Tablet+with+16GB+Memory+-+Blue/5089952.p?id=1218610024403&skuId=5089952&st=5089952&cp=1&lp=1" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Best Buy US', '300 Series']);"><img src="img/buyLocals_2.jpg" alt="buyLocals_2" width="74" height="25" /></a></li>
                            <!-- BJs -->
                            <li><a href="http://www.bjs.com/asus-transformer-pad-tf300t-101-android-tablet-with-nvidia-tegra-3-processor-1gb-ddr3-32gb-flash---blue.product.217665" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','BJs US', '300 Series']);"><img src="img/buyLocals_bjs.jpg" alt="BJs" width="74" height="25" /></a></li>
                            <!-- Central Computer -->
                            <li><a href="http://www.centralcomputers.com/commerce/catalog/product.jsp?product_id=83052&czuid=1334870852984" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Central Computers US', '300 Series']);"><img src="img/buyLocals_centralcomp.jpg" alt="Central Computers" width="74" height="25" /></a></li>
                            <!-- Electronic Express -->
                            <li><a href="http://www.electronicexpress.com" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Electronic Express US', '300 Series']);"><img src="img/buyLocals_electronicexpress.jpg" alt="Electronic Express" width="74" height="25" /></a></li>
                            <!-- GameStop -->
                            <li><a href="http://www.gamestop.com/android/tablets/asus-tf300t-10-in-32gb-blue/100250" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','GameStop US', '300 Series']);"><img src="img/buyLocals_gamestop.jpg" alt="GameStop" width="74" height="25" /></a></li>
                            <!-- Nebraska Furniture Mart -->
                            <li><a href="http://www.nfm.com/DetailsPage.aspx?ProductId=35479252" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Nebraska Furniture Mart US', '300 Series']);"><img src="img/buyLocals_nebraskafurnituremart.jpg" alt="Nebraska Furniture Mart" width="74" height="25" /></a></li>
														<!-- New Egg -->
                            <li><a href="http://www.newegg.com/Product/Product.aspx?Item=34-230-394" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Newegg.com US', '300 Series']);"><img src="img/buyLocals_7.jpg" alt="buyLocals_7" width="74" height="25" /></a></li>
                            <!-- Office Depot -->
                            <li><a href="http://www.officedepot.com/a/products/450853/ASUS-Transformer-TF300T-B1-BL-101/" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Office Depot US', '300 Series']);"><img src="img/buyLocals_officedepot.jpg" alt="Office Depot" width="74" height="25" /></a></li>
														<!-- PC Richard -->
														<li><a href="http://www.pcrichard.com/catalog/product.jsp?modelNo=TF300TB1BL" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','PC Richard US', '300 Series']);"><img src="img/buyLocals_pcrichard.jpg" alt="PC Richard" width="74" height="25" /></a></li>
														<!-- Tiger -->
														<li><a href="http://www.tigerdirect.com/applications/searchtools/item-details.asp?EdpNo=2339671" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Tiger US', '300 Series']);"><img src="img/buyLocals_tiger.jpg" alt="Tiger" width="74" height="25" /></a></li>
														<!-- Sams Club -->
														<li><a href="http://www.samsclub.com/sams/shop/product.jsp?productId=prod6650404" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Sams Clib US', '300 Series']);"><img src="img/buyLocals_samsclub.jpg" alt="Sams Club" width="74" height="25" /></a></li>
													</ul>
						<br><br>
						<h2>Canada</h2>
							<ul id="buylocals">
													<!-- Memory Express -->
													<li><a href="http://www.memoryexpress.com/Promos/Brands/asus/TF300.cm.aspx" target="_blank" onClick="_gaq.push(['_trackEvent','Buy Now','Memory Express CA', '300 Series']);"><img src="img/buyLocals_memoryexpress.jpg" alt="buyLocals_memoryexpress" width="74" height="25" /></a></li>
                    </ul><br><br><br><br>
				
				</div>   <!--End buy-box -->
             </div>
                
                <!-- End Buy Overlay -->

                <!-- Begin Story -->
                <div class="story">
                        <h1>asus story</h1>
                        <p>ASUS designs and manufactures innovative products to meet the needs of today's digital home, office and person. These products include displays, desktop and all-in-one PCs... <a class='discoverasus' href="#discoverasus">read more</a></p>
                  
                  </div>
                <!-- End Story -->
                
                
                
                 <!-- begin email form -->
                <div id="emailContainer-left">
									<form name="emailForm" action="http://promos.asus.com/us/event/TF300/thanks.asp" id="emailForm-left" method="post" target="email">
       							<input type="text" class="required" name="email" id="email" placeholder="enter email address"  />
        						<input type="submit" name="submit-btn" id="submit-btn" />
    							</form>
    							
									<div style='display:none'>
										<div id='inline_mail'>
											<div id="inner-mail"></div>
										</div>
									</div>
								</div>
					<!--End emailContainer -->
                  
								<!-- Begin Overlays -->
                        <div class="overlay"> 
                          <div id='discoverasus' class="storyoverlay">
                                <img src="img/discoverasus.jpg">
                                <div>
                                    <h1>A portfolio of reliable innovation</h1>
                                    <p>ASUS designs and manufactures innovative products to meet the needs of today's digital home, office and person. These products include displays, desktop and all-in-one PCs, notebooks, netbooks, tablets, servers, multimedia, motherboards, graphics cards, wireless solutions, networking devices and mobile phones. With a firm commitment to the highest standards—and your peace of mind—ASUS puts these products through rigorous testing. This dedication was applauded with 3,886 awards won in 2011 alone, and PC World ranked ASUS the #1 Windows-based desktop PC in terms of reliability.*</p>
                                    <h1>Inspired leadership and design</h1>
                                    <p>The company slogan, "Inspiring Innovation, Persistent Perfection," is exemplified by Jonney Shih, the visionary chairman and founder of ASUS who invented an entirely new computing category with the trendsetting Eee PC netbook series. Named one of the 100 Most Creative People in Business in 2010 by Fast Company, Mr. Shih is supported by a dedicated research and development team, as well as designers within ASUS Design HQ in Taipei. These designers are dedicated to generating ideas through annual brainstorming sessions and implementing those ideas to provide the best customer experience—creating products people love to use.</p>
                                    <h1>Substantial expertise</h1>
                                    <p>ASUS focuses on not only the outer appeal of products, but also on the substance inside them. Because of its expertise in component design and engineering, and its strength in integration, you can be sure that your ASUS PC is built upon the best components—like its best-selling motherboards. Today, one in every three computers houses an ASUS motherboard, and ASUS ships more than 20 million of them every year.</p>
                                    <h3>* Highest Windows-based desktop PC brand in PCWorld.com's Service and Reliability Report 2011.</h3>
                                </div>
                           </div> 
                      </div>
                   
<!-- End Overlays -->

            </div>
			<div class="frame2"></div>
			<div class="frame3"></div>
			<div class="frame4"></div>
			<div class="frame5"></div>
			<div class="frame6"></div>
			<div class="frame7"></div>
			<div class="frame8"></div>
			<div class="frame9">
            
            <!-- Begin Share -->  
                  <div class="share shareright">
                    <p>share</p>
                    <ul>
                   		<a class="twitterShare" onClick="return popup(this,'examplea', '600', '352')" href="http://twitter.com/intent/tweet?text=Embrace+your+creative+side.+Check+out+the+new+ASUS+Transformer+Pad:+http://asustablets.us/+%23everysideofyou+%23rightbrainFTW"><li class="twitter"></li></a>
                        <a class="facebookShare" onClick="return popup(this,'examplea', '640', '406')" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Fwww.asustablets.us"><li class="facebook"></li></a>
                        <a class="pinterestShare" onClick="return popup(this,'examplea', '600', '515')" href="http://pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.asustablets.us%2F&media=http://t2.gstatic.com/images?q=tbn:ANd9GcTGoaCZClozNuQoFM0oyUIiiosDv9FrjvE2vEihJ79RYPgmm0e4&description=As pleasing to the eye as is to the to-do list. Meet the new ASUS Transformer Pad: http://asustablets.us/ #foreverysideofyou&width=734&height=760" class="pin-it-button" count-layout="none"><li class="pinterest"></li></a>
                    </ul>
                  </div>
                <!-- End Share -->
                
                
                <!-- Begin Buy Button -->
                <div class="buy buyright">
                	<a href="#buy-overlay" class="buy-box"><img src="img/button_buy_now_right.png" alt="Buy Now" /></a>
                </div>
                
                <!--Begin Buy Button Overlay -->
                <!-- End Buy Button -->

                <!-- Begin Story -->
                <div class="story storyright">
                        <h1>asus story</h1>
                        <p>ASUS designs and manufactures innovative products to meet the needs of today's digital home, office and person. These products include displays, desktop and all-in-one PCs... <a class='discoverasus' href="#discoverasus">read more</a></p>
                  </div>
                <!-- End Story -->
<!--  Begin Design Overlay -->

<div class="overlay"> 
                          <div id='designstory' class="storyoverlay">
                                <img src="img/designstory.jpg">
                                <div>
                                    <h1>Designing the Transformer Pad TF300</h1>
                                    <p>Designed from the ground up to redefine mobile entertainment and productivity, the new Transformer Pad is as breathtaking to hold in the hands, as it is to behold with the eyes. Not only is it our slimmest and lightest tablet, it's also outfitted with high performance components for an unparalleled tablet experience.</p>
                                    <h1>A Sleek Tablet Starts With Sleek Manufacturing</h1>
                                    <p>The new Transformer Pad TF300 is less than an inch thick. No easy feat considering how much technology is packed into it. So much so that redesigning the tablet also meant we redesigning its manufacturing and assembly. As a result, the Transformer Pad represents a triumph of engineering skill, outstanding performance and head-turning aesthetics.</p>
                                    <h1>Where Beauty and Productivity Come Together</h1>
                                    <p>When it came to designing the Transformer Pad's Mobile Dock we went with "Less is More." The dock is smaller, thinner and uses fewer parts to offer a smooth, reliable pairing with the tablet.</p>
                                    <h1>An Experience Like No Other</h1>
                                    <p>The Transformer Pad's MyWave adaptive user interface offers simplified operation and readability, which integrates hardware and software into an intuitive user experience.</p>
                                    <ul>
                                    <li>Magazine Readability – The Transformer Pad experience is modeled after a magazine. Style, layouts, transition effects, and operation gestures mimic those of a magazine, so the tablet experience is intuitive and natural.</li>
                                    <li>Functional Live Wallpaper – Wallpapers with integrated system information combine practicality and beauty. Watch a whale swim gracefully through ocean waves, the height of which indicates remaining battery power.</li>
                                    </ul>
                                </div>
                           </div> 
                      </div>      
<!-- End Design Overlay ->

            	<!-- Begin Transformer Pad Header -->
                <div class="asus_tran_pad_header_right"></div>
                <!-- End Transformer Pad Header -->      

                <!-- Begin Features -->
                <div class="featureslistright">
                    <div class="speciconsright">
                             <a class="icon01right iconOneright active"></a>
                             <a class="icon02right iconTworight"></a>
                             <a class="icon03right iconThreeright"></a>
                             <a class="icon04right iconFourright"></a>
                             <a class="icon05right iconFiveright"></a>
                             <a class="icon06right iconSixright"></a>
                        </div>
                    
                    <div class="featureright oneright show">
                    	<h1>Features and Specifications</h1>
                        <ul>
                            <li>Operating System: Android&#8482; 4.0 (Ice Cream Sandwich) </li>
                            <li>Display: 10.1-inch WXGA IPS capacitive pressure-sensing multi-touch display with 178&#176; viewing angle (1280 x 800)</li>
                            <li>Chipset: NVIDIA<sup>&#174;</sup> Tegra<sup>&#174;</sup> 3 Quad Core mobile processor </li>
                            <li>Wireless: 802.11 b/g/n </li>
                            <li>Memory: 1 GB DDR3</li>
                            <li>Storage: 32 GB eMMC flash</li>
                            <li>Camera: 1.2 megapixel  (front); 8.0 megapixel (rear)</li>
                            <li>Speakers: Built-in stereo speakers with ASUS SonicMaster&#8482; technology</li>
                            <li>Card Reader: Micro SD card reader</li>
                            <li>Input/ Output: 1 x Micro HDMI, 2-in-1 audio jack (headphone/mic-in jack), internal mic</li>
                            <li>Battery: 22 W/h li-polymer battery (up to 10 hours)<sup>1</sup> </li>
                            <li>Dimensions: 10.35 x 7.12 x 0.39 (W x D x H)</li>
                            <li>Weight: 1.4lbs</li>
                            <li>Color: Blue (red and white coming soon)</li>
                        </ul>
                        <span>1 Actual battery life varies with usage. Operation lifetime subject to product model, normal usage conditions and configurations.</span>
                    </div>
                    
                    <div class="featureright tworight hide">
                    	<h1>Android&#8482; Operating System</h1>
                        <ul>
                            <li>Android 4.0 Ice Cream Sandwich OS</li>
                            <li>Easy to use and upgrade</li>
                            <li>Wi-Fi Direct* - Connect directly to other Wi-Fi Direct compatible devices at the touch of a button</li>
                            <li>Built-in photo editing - Edit photos, no additional apps required</li>
                            <li>Offline web browsing - Read your favorite sites without an Internet connection</li>
                        </ul>
                    </div>
                    
                    <div class="featureright threeright hide">
                     	<h1>Polaris&#8482; Office</h1>
                        <ul>
                            <li>Open and edit Microsoft<sup>&#174;</sup> Word documents, PowerPoint presentations and Excel documents</li>
                            <li>Unprecedented productivity - Available keyboard docking station transforms the device from a tablet to a functional, lightweight laptop</li>
                        </ul>
                    </div>
                    
                    <div class="featureright fourright hide">
                   	    <h1>SuperNote</h1>
                        <ul>
                            <li>Your notes, your way - Make notes by typing with the onscreen or keyboard dock, or write directly onscreen</li>
                            <li>Picture this - Make notes or draw directly on relevant photos or documents </li>
                            <li>Paintbook - Advanced illustration program turns the Transformer into a canvas, including robust icon and paintbrush options</li>
                            <li>None shall pass - Keep private notes private with password protection</li>
                        </ul>
                    </div>
                    
                    <div class="featureright fiveright hide">
                     	<h1>MyLibrary</h1>
                        <ul>
                            <li>A library at your fingertips - 1-click Google Bookstore access and asus@vibe</li>
                            <li>Read more - ePub and PDF support</li>
                        </ul>
                    </div>
                    
                    <div class="featureright sixright hide">
                    	<h1>MyCloud</h1>
                        <ul>
                            <li>Your content, anywhere - Access photos, music documents and more, anytime and anywhere</li>
                            <li>Free your drive - Keep your tablet uncluttered and running optimally by storing little-used files in the cloud</li>
                        </ul>
                    </div>
                
                </div>
                <!-- End Features -->
                
                
                
                <!-- start email form -->
               <div id="emailContainer-right">
							<form name="emailForm" id="emailForm-right" action="http://promos.asus.com/us/event/TF300/thanks.asp" method="post" target="email">
       						<input type="text" class="required" name="email" placeholder="enter email address"  />
        					<input type="submit" name="submit-btn" id="submit-btn" />
    						</form>
								
							</div>
							<!--End emailContainer -->
								
             </div>
             	<div class="frame10"></div>
		</div>
        
		<!-- top content layer -->
		<div id="layer1" class="parallaxed" rel="1">
      <div class="frame0"></div>
			<div class="frame1"></div>
			<div class="frame2">
            
                <!-- Begin Callout --> 	
                <div class="callout callout01">
                    <h1>Keep in touch from Anywhere</h1>
                    <h2>with front and rear cameras.</h2>
                    <p>No matter where your business takes you, take the ASUS Transformer Pad TF300. Its 1.2 megapixel front camera is ideal for impromptu videoconferencing, and the 8MP, F2.2 aperture rear camera lets you take in—and capture—the sights and sounds of whatever city you find yourself in. </p>
                	<!-- <p>&nbsp;</p> -->
                </div>
                <!-- End Callout -->
                
                <!-- Begin Sights Image 2 -->
                <div class="background_sights2"><img src="img/sights2.png" alt="" /></div>
                <!-- End SIghts Image 2 -->
                
                <!-- Begin Do it Callout --> 	
                <div class="todo">
                    <img src="img/todoIcns.png" width="305" height="78" alt="From &quot;To-Do&quot; to &quot;Done and Done.&quot;">
                    <h1>From "To-Do" to "Done and Done."</h1>
                    <p>Take on your to-do list with the exclusive ASUS Launcher. Think of it as your Taking-Care-of-Business-Hub where all of the Transformer's productivity apps are available at the touch of a button. MyNet, MyLibrary and MyCloud enable you to manage content, access online services and connect devices with a few simple taps.  </p>
                </div>
                <!-- End Do it Callout -->
                
            </div>
			<div class="frame3">
            
                <!-- Begin Callout --> 	
                <div class="callout callout02">
                    <h1>Lock in the Productivity</h1>
                    <h2>with the optional mobile dock and keyboard.</h2>
                    <p>Transform your definition of mobile productivity and lightweight performance with the optional ASUS Transformer Pad TF300 Mobile Dock. Its innovative design not only delivers the efficiency of a keyboard and trackpad, it also delivers all-day productivity by increasing the tablet's battery life by up to 15 hours<sup>1</sup>. Which means the Transformer won&#39;t call it a day until you do.</p>
                    <p class="callout_footnote"><sup>1</sup>Actual battery life varies with usage. Operation lifetime subject to product model, normal usage conditions and configurations.</p>
                </div>
                <!-- End Callout -->
                
            </div>
			<div class="frame4">
                
            
                <!-- Begin Callout --> 	
                <div class="callout callout03">
                    <h1>Do More Like Never Before</h1>
                    <h2>with Android™ 4.0 Ice Cream Sandwich OS.</h2>
                    <p>Featuring Adobe<sup>&#174;</sup> Flash<sup>&#174;</sup>&#42; support, two times faster Web browsing and over 500,000 downloadable applications, the Android&trade; 4.0 Ice Cream Sandwich OS puts a world of productivity at your fingertips.</p>
                    <p class="callout_footnote">&#42; Adobe<sup>&#174;</sup> Flash<sup>&#174;</sup> update required from Android Market.</p>
                </div>
                <!-- End Callout -->
                
               
            
            </div>
			
			<!-- home frame -->
			<div class="frame5">
				
			</div>
			
			
			<div class="frame6">
            	<!-- callout -->
           		<div class="callout callout04">
                    <h1>Stand Out From the Crowd</h1>
                    <h2>with sleek style and bold colors.</h2>
                    <p>At less than half an inch thick and lighter than most notebooks, the ASUS Transformer Pad TF300 fits comfortably in hands and handbags alike. Though, with a crafted rear cover featuring a concentric design, a non-slip surface and a choice of three colors*, you'll be showing it off more often than packing it away. </p>
                    <br>
                    <div style="background:#0F0; width:100%">	
                    	<p style="margin-right: 20px; float:left; padding:0px 0 0; margin-top:3px" class="callout_footnote">*TF300 only. </p>
                        <p class="selectcolornooverlay">CHOOSE COLOR ></p>
                            <ul class="colorpicker">
                                <a class='inline' href="#colorselector"><li class="color01"><img src="img/pixel.gif" width="1" height="17"></li></a>
                                <a class='inline' href="#colorselector"><li class="color02"><img src="img/pixel.gif" width="1" height="17"></li></a>
                                <a class='inline' href="#colorselector"><li class="color03"><img src="img/pixel.gif" width="1" height="17"></li></a>
                                
                       		</ul>
                    </div><br>
                   <div class="overlay">  
                    <div id="colorselector" style="width:100%; height:452px">
                        <div id="largecolorimage"> 
                        <h1>TF300T</h1>
                            <img id="colorswap" src="img/tabletcolor01.png">
                        </div>
                        
                        <div class="colorpickerbottombar">
                            <p class="colorpicketfootnote"> *Available on TF300 only.</p>
                            <p class="selectcolor">CHOOSE COLOR ></p>
                            <ul class="colorpicker">
                                <li class="color01"><img src="img/pixel.gif" width="1" height="17"></li>
                                <li class="color02"><img src="img/pixel.gif" width="1" height="17"></li>
                                <li class="color03"><img src="img/pixel.gif" width="1" height="17"></li>
                            </ul>
                        </div>
                    </div>    
                </div>     
				</div>                	<!-- Story callout -->
                <div class="aboutcallout">
					<img src="img/aboutasusdesign.png" width="303" height="77" alt="From To-Do to Done and Done.">
					<p><a class='designstory' href="#designstory">> Learn more about ASUS Design</a></p>
				</div>
            </div>
			<div class="frame7">
                    <div class="callout callout05">
               			<h1>Level Up the Fun</h1>
                        <h2>on the NVIDIA<sup>&reg;</sup> Tegra<sup>&reg;</sup> 3 Quad Core processor.</h2>
                        <p>Transform entertainment with the new ASUS Transformer Pad TF300. Featuring an NVIDIA<sup>&reg;</sup> Tegra<sup>&reg;</sup> 3 Quad Core mobile processor, a 12-core GPU and HDMI connectivity, movies and games look—and play at—their best. The Transformer Pad even makes accessing entertainment easy with asus@vibe, a one-stop-shop for movies, music, eBooks, games and more.</p>
          				<p class="callout_footnote">*Brand and product names mentioned are trademarks of their respective companies.</p>
        			</div> 
                         <img src="img/bgnvidia.png"  class="background_nvidia">
                         <img src="img/bgtwitter.png"  alt="Twitter" class="background_twitter">
                         </div>		
			<div class="frame8">
           	  <div class="callout callout06">
					<h1>Give Your Ears a Treat</h1>
                    <h2>with ASUS SonicMaster&trade; technology.</h2>
  				  <p>Featuring ASUS SonicMaster&trade; technology, the ASUS Transformer Pad TF300 delivers unprecedented audio performance. From its innovative audio processing to its superior speaker construction, the ASUS Transformer Pad TF300 provides a rich, expansive audio experience. So music, games and movies sound incredible.</p>
				</div>
            		<img src="img/bglogos.png"  class="background_logos">
            </div>
            
			<div class="frame9"></div>
            <div class="frame10"></div>
		</div>
		
		<!-- pretty stuff layer -->
		<div id="layer2" class="parallaxed" rel="1.2">
            <div class="frame0"></div>
			<div class="frame1"></div>
			<div class="frame2">
            	
                <!-- Begin Camera -->
                <div class="background_camera"><img src="img/camera.jpg" alt="Camera" /></div>
                <!-- End Camera -->
                
                <!-- Sights Image 1 -->
                <div class="background_sights1"><img src="img/sights1.jpg" alt="" /></div>
                <!-- End Sights Image 1 -->
            
            </div>
			<div class="frame3">
                
                <!-- Begin Icons -->
                <div class="background_icons"><img src="img/icons.jpg" alt="Icons" /></div>
                <!-- End Icons -->
                
                <!-- Begin Keyboard -->
                <div class="background_keyboard"><img src="img/keyboard.jpg" alt="Keyboard" /></div>
                <!-- End Keyboard -->

                
            </div>

			<div class="frame4">
                
                
                <!-- Begin MS Word Icon -->
                <div class="background_ms_word"><img src="img/ms_word.png" alt="Microsoft Word" /></div>
                <!-- End MS Word Icon -->
                
                <!-- Begin Pie Chart -->
                <div class="background_piechart"><img src="img/piechart.png" alt="Chart" /></div>
                <!-- End Pie Chart -->
                
                 <!-- Begin Large Icons -->
                <div class="background_icons_large"><img src="img/icons_large.png" alt="" /></div>
                <!-- End Large Icons -->
                
            </div>
			<div class="frame5"></div>
			<div class="frame6"></div>
			<div class="frame7">
            	<img src="img/bgshazam.png"  alt="Shazam" class="background_shazam">
                <img src="img/bgyoutube.png"  alt="YouTube" class="background_youtube">
       		 	<img src="img/bgevernote.png"  alt="Evernote" class="background_evernote">
           	    <img src="img/bgmicrophone.png"  class="background_microphone">
            </div>    
			<div class="frame8"><img src="img/bgequalizer.png" class="background_equalizer"></div>
			<div class="frame9"></div>
            <div class="frame10"></div>
		</div>
		
 		<!-- big words layer -->
		<div id="layer3" class="parallaxed" rel=".25">
            <div class="frame0"></div>
			<div class="frame1"></div>
			<div class="frame2"></div>
			<div class="frame3"></div>
			<div class="frame4"></div>
			<div class="frame5"></div>
			<div class="frame6"></div>
			<div class="frame7"></div>
			<div class="frame8"></div>
			<div class="frame9">
				<div id="transformLifeRight">TRANSFORM LIFE</div>
			</div>
            <div class="frame10"></div>
		</div>
		
		<!-- keyline layer -->
		<div id="layer4" class="parallaxed" rel="1">
        	<div class="frame0"></div>
			<div class="frame1" style="width: 13440px !important;"></div><!-- this will take up the full width of this layer -->
			<div class="frame2"></div>
			<div class="frame3"></div>
			<div class="frame4"></div>
			<div class="frame5"></div>
			<div class="frame6"></div>
			<div class="frame7"></div>
			<div class="frame8"></div>
			<div class="frame9"></div>
            <div class="frame10"></div>
		</div>
		
		<!-- background layer -->
		<div id="layer5" class="parallaxed" rel=".75">
        	<div class="frame0"></div>
			<div class="frame1" style="width: 10080px !important;"></div><!-- this will take up the full width of this layer -->
			<div class="frame2"></div>
			<div class="frame3"></div>
			<div class="frame4"></div>
			<div class="frame5"></div>
			<div class="frame6"></div>
			<div class="frame7"></div>
			<div class="frame8"></div>
			<div class="frame9"></div>
            <div class="frame10"></div>
		</div>
		
		<!-- brain layer -->
		<div id="layer6" class="parallaxed" rel=".75">
        	<div class="frame0"></div>
			<div class="frame1"></div>
			<div class="frame2"></div>
			<div class="frame3"></div>
			<div class="frame4"></div>
			<div class="frame5">
			
				<h1>For Every Side of You</h1>
				<h2>Embrace your creative and productive sides with the ASUS Transformer&mdash;it&#39;s the best of both worlds.</h2>
			
				<img id="brain" src="img/brain.png" alt="brain" />
				
				<div id="rightBrainHotArea"></div>
				<div id="leftBrainHotArea"></div>
				
				<div id="rightBrain">
					<div class="content">
						<div class="text">
							<h3>The right brain.</h3>
							<p>
								Creative. Emotional. Colorful.<br />You are a dreamer,<br />a gamer, a storyteller.
							</p>
						</div>
						
						<div class="arrow"><span class="arrowText">SCROLL</span></div>
					</div>
				</div>
				
				<div id="leftBrain">
					<div class="gradient"></div>
					<div class="content">
						<div class="arrow"><span class="arrowText">SCROLL</span></div>
						<div class="text">
							<h3>The left brain.</h3>
							<p>
								Analytical. Critical. Organized.<br />You are a productivity<br />ninja of the first degree.
							</p>
							
						</div>
					</div>
					
				</div>
				
			</div>
			<div class="frame6"></div>
			<div class="frame7"></div>
			<div class="frame8"></div>
			<div class="frame9"></div>
            <div class="frame10"></div>
		</div>
		
		<!-- REQURED - guide layer for scrolling and navigation -->
		<div id="scrollElement" rel="1">
      		<div class="frame0"><a id="frame0"></a></div>
			<div class="frame1"><a id="frame1"></a></div>
			<div class="frame2"><a id="frame2"></a></div>
			<div class="frame3"><a id="frame3"></a></div>
			<div class="frame4"><a id="frame4"></a></div>
			<div class="frame5"><a id="frame5"></a></div>
			<div class="frame6"><a id="frame6"></a></div>
			<div class="frame7"><a id="frame7"></a></div>
			<div class="frame8"><a id="frame8"></a></div>
			<div class="frame9"><a id="frame9"></a></div>
            <div class="frame10"><a id="frame10"></a></div>
		</div><!-- required element - hidden, but binds to scrollbar -->
		
		
  </div>


  
  <footer>
	 <nav>
		  <ul id="left-nav" class="sub-nav invisible">
		  	<li rel="1" id="gotoFrame1"><a rel="1">TF300 </a></li>
		  	<li rel="2" id="gotoFrame2"><a rel="2">COLLABORATION</a></li>
		  	<li rel="3" id="gotoFrame3"><a rel="3">PRODUCTIVITY</a></li>
		  	<li rel="4" id="gotoFrame4"><a rel="4">PERFORMANCE</a></li>
		  </ul> 
		  <div class="logo-block" id="gotoFrame5" rel="5"></div>
		  <ul id="right-nav" class="sub-nav-right invisible">
		  	<li rel="6" id="gotoFrame6"><a rel="6">STYLE</a></li>
		  	<li rel="7" id="gotoFrame7"><a rel="7" >ENTERTAINMENT</a></li>
		  	<li rel="8" id="gotoFrame8"><a rel="8">AUDIO</a></li>
		  	<li rel="9" id="gotoFrame9"><a rel="9">TF300 </a></li>
		 </ul>
		 <div id="footer-links">
		 	<ul>
		 		<li><a href="http://usa.asus.com/ASUS_Website_Information/Terms_of_Use/" target="_blank">Terms of Use</a></li>                     
		 		<li><a href="http://campuslife.asus.com/index/" target="_blank">Campus Life</a></li>
		 		<li><a href="http://usa.asus.com" target="_blank">ASUS.COM</a></li>
		 		<li><a href="http://commercial.asus.com/" target="_blank">ASUS COMMERCIAL</a></li>
		 	</ul>
		 </div>
	</nav> 
  </footer>
 
  <div id="subfooter"></div>
  	
  <!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> -->
  <script>      window.jQuery || document.write('<script defer src="js/libs/jquery-1.7.1.min.js"><\/script>')</script>

  <script src="js/plugins.js"></script>
  <script src="js/script.js"></script>

  <script>

      var _gaq = [['_setAccount', 'UA-30814742-1'], ['_trackPageview']];
      (function (d, t) {
          var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
          g.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js';
          s.parentNode.insertBefore(g, s)
      } (document, 'script'));
    
  </script>

  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
    <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
  <![endif]-->
    <script src="js/libs/jquery.colorbox.js"></script>
  <script src="js/colorpicker.js"></script>
  
  <script>
      try {
          function yt_callback(category, action, label, value) {
              _gaq.push(['_trackEvent', category, action, label, value]);
          }
          var ytTracker = new YoutubeTracker(false, yt_callback, true);
      } catch (e) { }
	</script>
  
    </form>
</body>
</html>
