<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>College Of Pharmacy</title>
<meta name="keywords" content="free css template, orange bar, XHTML, CSS" />
<meta name="description" content="Orange Bar is a free CSS template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="templatemo_image_fader.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <style type="text/css">
        .desc { color:#6b6b6b;}
        .desc a {color:#0092dd;}
        
        .dropdown dd, .dropdown dt, .dropdown ul { margin:0px; padding:0px; }
        .dropdown dd { position:relative; }
        .dropdown a, .dropdown a:visited { color:#816c5b; text-decoration:none; outline:none;}
        .dropdown a:hover { color:#5d4617;}
        .dropdown dt a:hover { color:#5d4617; border: 1px solid #d0c9af;}
        .dropdown dt a {background:#e4dfcb url(arrow.png) no-repeat scroll right center; display:block; padding-right:20px;
                        border:1px solid #d4ca9a; width:150px;}
        .dropdown dt a span {cursor:pointer; display:block; padding:5px;}
        .dropdown dd ul { background:#e4dfcb none repeat scroll 0 0; border:1px solid #d4ca9a; color:#C5C0B0; display:none;
                          left:0px; padding:5px 0px; position:absolute; top:2px; width:auto; min-width:170px; list-style:none;}
        .dropdown span.value { display:none;}
        .dropdown dd ul li a { padding:5px; display:block;}
        .dropdown dd ul li a:hover { background-color:#d0c9af;}
        
        .dropdown img.flag { border:none; vertical-align:middle; margin-left:10px; }
        .flagvisibility { display:none;}
        
        
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
    </script>
</head>
<body>
	<div class="templatemo_container"><!-- START of Container -->
		<div id="templatemo_header"><!-- START Of Header -->
		<table>
		<tr align="right">
			<td> 
				<div id="templatemo_logo_area" align="left">
            	<div id="templatemo_logo">
                	<a href="http://www.collegeofpharmacy.com" target="_blank">College Of Pharmacy</a></div>
              <div id="templatemo_slogan">
                	Pune, Maharashtra.
              </div>
                <div class="cleaner"></div>
            </div>
			</td>
			 <%-- <td>
				<div id="templatemo_search">
					<form action="#" method="post">
						<input type="text" value="Type your keyword" name="q" class="field"  title="email" onfocus="clearText(this)" onblur="clearText(this)" />
						<input type="submit" name="search" value = "Search" alt="Search" class="button" title="Subscribe" />
					</form>
				</div>
			</td>  --%>
			<td  colspan="10" >
				 <div id="templatemo_logo_area">
            		<dl id="sample" class="dropdown">
        				<dt><a href="#"><span>Welcome!&nbsp;${user.getUserName()}</span></a></dt>
        				<dd>
            				<ul>
                				<li><a href="#">Sign Out</a></li>
            				</ul>
        				</dd>
    				</dl>
    			</div>
			 </td>
		</tr>
    	</table>
			<div id="templatemo_menu">
				<ul>
                    <li class="current"><a href="#">Home</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="#">Faculty</a></li>
                    <li><a href="#">Student</a></li>                        
					<li><a href="#">Administration</a></li>
					<li><a href="http://www.collegeofpharamcy.com" target="_parent">Events</a></li>	
                	<li><a href="#">Contact</a></li>	
            	</ul>
			</div>
            
        </div><!-- end of header -->