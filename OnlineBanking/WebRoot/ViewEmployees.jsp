
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.dae.model.Profile"%>
<%@page import="com.dts.SBIBanking.dao.BranchEmmployeeDAO"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Internet Banking</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=iso-8859-1">
		<link href="../includes/style.css" rel="stylesheet" type="text/css">
		<style type="text/css">
<!--
.style1 {
	color: #D4F101
}
-->
</style>
	</head>

	<body bgcolor="004B10" leftmargin="0" topmargin="0" onLoad="goforit()">
		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td align="center" valign="middle">
					<table width="780" border="0" cellspacing="0" cellpadding="0">
						<tr>

							<td height="71" valign="bottom" background="./images/satya.JPG">
								<table width="100%" height="25" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td>
											<div align="right">

												<span id="clock"></span>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

					<table width="780" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<img src="images/ib_banner2.jpg" width="780" height="101">
							</td>
						</tr>
						<tr>
							<td align=center width=1500>
								<font color=white> <jsp:include page="Adminoptions.jsp" />
								</font>
							</td>
						</tr>
					</table>

					<table bgcolor="white" width="780" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td height="314" align="center">
								<br>



								<center>
									<h3>
										VIEW EMPLOYEES
									</h3>
								</center>
								<table>
									<tr bgcolor="#D4F101">
										<td>
											<div align="center">
												<strong>Branch Name</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>Login Name</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>First Name</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>Last Name</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>DOB</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>city</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>State</strong>
											</div>
										</td>
										<td>
											<div align="center">
												<strong>Country</strong>
											</div>
										</td>
									</tr>
									<%
										CoreList acorelist = (CoreList) request
												.getAttribute("ViewEmployees");
										Enumeration aEnumeration = acorelist.elements();
										while (aEnumeration.hasMoreElements()) {
											Profile aprofile = (Profile) aEnumeration.nextElement();
											String branchname = new BranchEmmployeeDAO()
													.getBranchname(aprofile.getLoginID());
											;
									%>
									<tr bgcolor="#3D874C">
										<td>
											<span class="style1"><%=branchname%></span>
										</td>
										<td>
											<span class="style1"><%=aprofile.getLoginID()%></span>
										</td>
										<td>
											<span class="style1"><%=aprofile.getFirstname()%></span>
										</td>
										<td>
											<span class="style1"><%=aprofile.getLastName()%></span>
										</td>
										<td>
											<span class="style1"><%=aprofile.getBirthDate1()%></span>
										</td>
										<td>
											<span class="style1"><%=aprofile.getCity()%></span>
										</td>
										<td>
											<span class="style1"><%=aprofile.getState()%></span>
										</td>
										<td>
											<span class="style1"><%=aprofile.getCountry()%></span>
										</td>
									</tr>
									<%
										}
									%>









									<table width="85%" border="0" align="center" cellpadding="2"
										cellspacing="0">

										<tr>
											<td height="18" valign="top">
												<img src="../images/trans.gif" width="5" height="5">
											</td>
										</tr>
										<tr>
											<td height="18" valign="top">
												&nbsp;
											</td>
										</tr>
									</table>

								</table>
	</body>
</html>

