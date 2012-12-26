<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Solomen</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="" />
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div id="page">
        <div id="header"> <a href="#"><img src="images/logo.jpg" alt="" /></a>
            <h1><a href="#">Solomen</a></h1>
        </div>
        <div id="main"><div id="main2">
                <div id="sidebar"><div id="sidebar2">
                        <div id="menu">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="enrollUser.htm">Register</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Gallery</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                </div></div><!-- sidebar --><!-- sidebar2 -->			
                <div id="content">			
                        <div class="post" align="center">
                            <jsp:include page="${pageName}" />
                        </div>
                </div><!-- content --><!-- content2 -->
                <div class="clearing">&nbsp;</div> 
                <div id="bg1">&nbsp;</div> 
        </div></div><!-- main --><!-- main2 -->
        <div id="footer">
            <p>Copyright &copy; 2011, designed by <a href="http://www.google.com/">Anil Kewat</a></p>
        </div><div id="q"></div>
    </div><!-- page -->
</body>
</html>