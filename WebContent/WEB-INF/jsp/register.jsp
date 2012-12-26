<%@include file="../../header.jsp" %>
				<div id="content">
					<div class="post" align="center">
						<h2>Register User</h2>
						<form:form method="post" action="saveUser.htm"  commandName="user">
							<Table>
								<tbody>
									<tr>
										<td><form:label path="userName" >User Name:</form:label></td>
										<td><form:input path="userName" /></td>
									</tr>
									<tr>
										<td colspan="2">&nbsp;</td>
									</tr>
									<tr>
										<td><form:label path="password">Password:</form:label></td>
										<td><form:password path="password" /></td>
									</tr>
									<tr>
										<td colspan="2">&nbsp;</td>
									</tr>
									<tr>
										<td>Confirm Password:</td>
										<td><input type="password" name="confirmPassword" /></td>
									</tr>
									<tr>
										<td colspan="2">&nbsp;</td>
									</tr>
									<tr>
										<td><form:label path="emailId">Email ID:</form:label></td>
										<td><input type="text" name="emailId" /></td>
									</tr>
									<tr>
										<td colspan="2">&nbsp;</td>
									</tr>
									<tr align="right">
										<td colspan="2" align="right"><input type="submit"
											value="Register" /></td>
									</tr>
								</tbody>
							</Table>
						</form:form>
					</div>
				</div>
<%@include file="../../footer.jsp" %>