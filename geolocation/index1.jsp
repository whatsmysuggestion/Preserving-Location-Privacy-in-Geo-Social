<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8" />
	<title>Preserving Location Privacy in Geo-Social
Applications</title>
	<meta name="keywords" content="avocado template, free template, minimal layout, html css" />
	<meta name="description" content="Avocado is free template with minimal layout using yellow background and green color menu. Page content is centered in both horizontal and vertical aligns." />

	<!-- favicon-->
	<link rel="shortcut icon" href="./favicon.png" />		
		
	<!-- 960 grid-->
	<link rel="stylesheet" href="./css/960_24_col.css" />
		
	<!-- templatemo style-->
	<link rel="stylesheet" href="./templatemo_style.css" />
		
	<!-- jquery plugin -->
	<script language="javascript" type="text/javascript" src="datetimepicker.js">



</script>
	<script src='./js/jquery.min.js'></script>
	<script src='./js/jquery-ui.min.js'></script>
		
	<!-- google map -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
		
	<!-- templatemo config -->
	<script src="./js/templatemo_config.js"></script>
        
    <script>
	function clearText(field)
	{
		if (field.defaultValue == field.value) field.value = '';
		else if (field.value == '') field.value = field.defaultValue;
	}
	</script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<style type="text/css">
body {
    margin: 0;
    padding: 0;
    font-family: "Gill sans", sans-serif;
    background-color: #fff;
    color: #000;
}
div#bd {
    position: relative;
}
div#gmap {
    width: 100%;
    height: 400px;
}
.style4 {
	color: #FF0000;
	font-weight: bold;
	font-size: 16pt;
}
</style>

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
var map;
var marker=false;
function initialize() {
  var myLatlng = new google.maps.LatLng(13.053721679021347,80.22521737216266);
  
  var myOptions = {
    zoom: 16,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
	
  }
  
  map = new google.maps.Map(document.getElementById("gmap"), myOptions);
  
  marker = new google.maps.Marker({
      	position: myLatlng, 
      	map: map
  	});
	
  google.maps.event.addListener(map, 'center_changed', function() {
  	var location = map.getCenter();
	document.getElementById("lat").innerHTML = location.lat();
	document.getElementById("lon").innerHTML = location.lng();
    placeMarker(location);
  });
  google.maps.event.addListener(map, 'zoom_changed', function() {
  	zoomLevel = map.getZoom();
	document.getElementById("zoom_level").innerHTML = zoomLevel;
  });
  google.maps.event.addListener(marker, 'dblclick', function() {
    zoomLevel = map.getZoom()+1;
    if (zoomLevel == 20) {
     zoomLevel = 10;
   	}    
	document.getElementById("zoom_level").innerHTML = zoomLevel; 
	map.setZoom(zoomLevel);
	 
  });
  
   document.getElementById("zoom_level").innerHTML = 16; 
  document.getElementById("lat").innerHTML = 13.053721679021347;
  document.getElementById("lon").innerHTML = 80.22521737216266;
  
}
  
function placeMarker(location) {
  var clickedLocation = new google.maps.LatLng(location);
  marker.setPosition(location);
}
window.onload = function(){initialize();};

</script>


</head>

<style type="text/css">

.button {
	background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#FFFFFF;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
</style>
<style type="text/css">
.a{
background-color:#C4DF8C;
border-color:red;


}
.c{
background-color:#666666;
border-color:red;


}
.d{
background-color:#FFCC00;
border-color:red;


}

#b:hover{
background-color:#CC9999;
}
</style>



<body>
			<div class="container_24">
					<div class="grid_24 alpha omega" id="banner">
							<div class="grid_18 alpha">
								
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      
      <p><font size="5" ><b>Preserving Location Privacy in Geo-Social Applications</b></font> 
      </p>
    </div>
							<div class="grid_6 omega">
								<form action="index.html">
									<input name="search" type="text" id="search" onfocus="clearText(this)" onblur="clearText(this)"   value="Home..." maxlength="40" />
								</form>
							</div>
                            <a href="http://www.clipartlogo.com/free/tattoo-letter-alphabet.html" title="tattoo letter alphabet clipart from www.clipartlogo.com" class="content_top"  target="_blank"><img src="images/content_top.png"  title="tattoo letter alphabet clipart" /></a>
					</div>
					
                            
							
								<h1 align="center"><font size="2"><b>
								
								<marquee hspace=20 vspace=20 width=250  align=middle>Send index to proxy!</marquee>
								</b></font></h1>
                                    <table width="840" height="287">
 
    <tr> 
      <td align="center" width="504"> <div id="bd"> 
          <div id="gmap"></div>
          lat:<span id="lat"></span> lon:<span id="lon"></span><br/>
          zoom level: <span id="zoom_level"></span> </div></td>
		  
		  
		  
		  <td width="243">
		  
		  <form action="index2.jsp" method="get" >
									<table bgcolor="#000000" width="243" height="109" align="center"><tr><td><font size="3" color="#FFCC00"><b>Name</b></font>
									 </td>
									 <td><input type="text" name="name" class="a"></td></tr>
									 <tr><td><font size="3" color="#FFCC00"><b>Lattitude</b></font></td>
									 <td><input type="text" name="lat" class="a"></td>
									 </tr>
									 <tr><td><font size="3" color="#FFCC00"><b>Longitude</b></font></td>
									 <td><input type="text" name="lng" class="a"></td>
									 </tr>
									 <tr><td  align="center"colspan="2"><input type="submit" name="Submit" class="c"></td>
									 </tr>
									 </table>
								</form>
		  
		  </td>
    </tr>
  </table>
									
                                 
                             
                               	</div>
					</div>
							
                           
							
							
					</div>
                    
					<div class="grid_6 omega">
						<div class="grid_6 alpha omega">
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p></p>
	  
    <p><img src="favicon.png"><a  href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="3" color="#000000"><b> 
      Home</b></font></a></p>
    <p> <img src="favicon.png"><a  href="user.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="3" color="#000000"><b> 
      Back</b></font></a> </p>
  </div>
						</div>
                    
				<div class="grid_24 alpha omega" id="footer" >
					</div>
		</div>
</body>
<script type='text/javascript' src='js/logging.js'></script>
</html>