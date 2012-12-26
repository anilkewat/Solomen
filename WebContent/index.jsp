<%@include file="header.jsp" %>
		<div id="templatemo_image_fader">
        	 <script type="text/javascript">
//new fadeshow(IMAGES_ARRAY_NAME, slideshow_width, slideshow_height, borderwidth, delay, pause (0=no, 1=yes), optionalRandomOrder)
new fadeshow(fadeimages, 960, 240, 1, 2000, 1, "R")
			</script>
        </div>
		<div align="right">
				<form>
					<table>
						<tr><td><p>User Name</p></td><td><input type="text" name="username" class="field"  title="username" onfocus="clearText(this)" onblur="clearText(this)" /></td></tr>
						<tr><td><p>Password</p></td><td><input type="password" name="password" class="field"  title="password" onfocus="clearText(this)" onblur="clearText(this)"  /></td></tr>
						<tr><td colspan="2" align="right"><p><a href="register.htm">Register/Forgot Password</a></p><input type="submit" class="button" title="Register" /></td></tr>
					</table>
				</form>
		</div>
<%@include file="footer.jsp" %>