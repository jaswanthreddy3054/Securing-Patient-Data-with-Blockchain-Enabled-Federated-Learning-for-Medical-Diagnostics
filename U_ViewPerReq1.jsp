<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%=application.getAttribute("uname")%>  (User)</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {color: #5f5f5f}
.style8 {font-size: 13px}
.style9 {font-size: 14px}
.style15 {color: #fff;
	font-weight: bold;
}
.style16 {font-size: 12px;
	color: #6d6d6d;
}
.style19 {font-size: 12px}
.style17 {font-size: 14; }
.style27 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li class="active"><a href="U_Main.jsp">Hi <%=application.getAttribute("uname")%> !! (Patient) </a></li>
        <li><a href="U_Login.jsp">Logout</a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Securing Patient Data With Blockchain-Enabled Federated Learning For Medical Diagnostics</a></h1>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Request View Permission For Patient Reports </span></h2>
          <p>&nbsp;</p>
          <p>
            <%
			  
			  try 
			  {

String doc = request.getParameter("t142");
String pname = request.getParameter("t14");
String uname=(String)application.getAttribute("uname");

SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String dt = strDate + "   " + strTime;

				String query1="select * from request where user='"+uname+"' and pname='"+pname+"' and view_per='Requested'"; 
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(query1);
				if ( rs1.next())
				{
					%>
</p>
          <p class="style27">Request Already Sent To Cloud !! </p>
          <p><a href="U_Main.jsp" class="style19">Back</a></p>
          <p>
            <%	
				}
				else
				{
					String query2="select * from cloudserver  where patient_name='"+pname+"' "; 
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(query2);
					if ( rs2.next())
					{
						String query4="select * from request where user='"+uname+"' and  pname='"+pname+"' ";
						ResultSet rs4 = connection.createStatement().executeQuery(query4);
						if(rs4.next())
						{
						
							String query5="update request set view_per='Requested' where user='"+uname+"' and  pname='"+pname+"'";
							connection.createStatement().executeUpdate(query5);
							
							%>
          </p>
          <p class="style27">Request Sent To Cloud !! </p>
          <p><a href="U_Main.jsp" class="style19">Back</a></p>
          <p>
            <%
					
						}
						else
						{
						
						
							String query3="insert into request(user,pname,view_per) values('"+uname+"','"+pname+"','Requested')";
							connection.createStatement().executeUpdate(query3);
							
							%>
          </p>
          <p class="style27">Request Sent To Cloud !! </p>
          <p><a href="U_Main.jsp" class="style19">Back</a></p>
          <p>
            <%
						}
					}
					else
					{
						%>
          </p>
          <p class="style27">Patient Records  Doesn't Exist !! </p>
          <p><a href="U_Main.jsp" class="style19">Back</a></p>
          <p>
            <%
					}
				}
			connection.close();
	}
	catch (Exception e)
	{
		out.print(e);
	}
		
  %>
          </p>
          <p>&nbsp;</p>
        </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" />
            </span>
          </form>
          <div class="clr"></div>
        </div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
		<li><a href="U_Main.jsp">Home</a></li>
		<li><a href="U_Search.jsp">Search  </a></li>
		<li><a href="U_Login.jsp">Logout</a></li>
		</ul>
        </div>
        <div class="gadget"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>Health Information Exchange</h2>
        <img src="images/pix1.jpg" width="58" height="58" alt="" /> <img src="images/pix2.jpg" width="58" height="58" alt="" /> <img src="images/pix3.jpg" width="58" height="58" alt="" /> <img src="images/pix4.jpg" width="58" height="58" alt="" /> <img src="images/pix5.jpg" width="58" height="58" alt="" /> <img src="images/pix6.jpg" width="58" height="58" alt="" /> </div>
      <div class="col c2">
        <h2>Hospital</h2>
        <p align="justify">To ensure interoperability of HIE, the number of HIS that supports Cloud Needs to be sufficiently large. The structure of is very complex and the production of correct Hospital Related Documentsis hard to achieve without deep understanding of the Cloud Standardsand sufficient experience with it. </p>
      </div>
      <div class="col c3">
        <h2>Cloud Computing</h2>
        <img src="images/white.jpg" width="66" height="66" alt="" />
        <p align="justify">          The Hospital Related Documentspertaining to a patient is generated at the clinic where the patient is diagnosed. The generated Hospital Related Documentscan be sent to other clinics after patient’s consent is acquired.</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
