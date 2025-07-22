<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style10 {font-size: 16px}
.style11 {color: #26C3D4}
.style12 {color: #22BAC8}
.style13 {color: #25C0D2}
.style14 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li class="active"><a href="C_Main.jsp">Cloud</a></li>
        <li><a href="C_Login.jsp">Logout</a></li>
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
          <h2><span>Send Reports </span></h2>
          <p align="justify">&nbsp;</p>
          <p align="justify"><span class="style10">
            <%
String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0;
try
{
	String id=request.getParameter("id");
	String doctor=request.getParameter("doctor");
	
	
	if(doctor.equalsIgnoreCase("-select-"))
	{
		%>
            <strong><span class="style11">Select Doctor</span> To Continue !! </strong></span>
            <span class="style10">
            <%
	}
	else
	{
		String query="Select *from cloudserver where id='"+id+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		if ( rs.next() )
		{
			i=rs.getInt(1);
			s2=rs.getString(2);
			s3=rs.getString(3);
			s5=rs.getString(5);
		}
		String query2="Select *from doc_reports where patient='"+s2+"'"; 
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(query2);
			if ( rs2.next() )
			{
				String as_doc=rs2.getString(3);
				%>
				<strong>Report with <span class="style14">Template ID : <%=s5%></span>  <span class="style12">Already Assigned To Dr . <%=as_doc%></span>  !! </strong></span>
				<span class="style10">
				<%	
			}
			else
			{
				Statement st1=connection.createStatement();
				String query1="insert into doc_reports(patient,doctor,cda_status)values('"+s2+"','"+doctor+"','Assigned') ";
				int r=st1.executeUpdate(query1);
				if(r==1)
				{
					%>
		<strong>Report with <span class="style14">Template ID : <%=s5%></span>  <span class="style13">Assigned Sucessfully To Dr . <%=doctor%>  </span>!! </strong></span>
					<span class="style10">
					<%
				}
				
				
			}
	}					connection.close();

}
catch(Exception e)
{
out.println(e);
}

%>
            </span></p>
          <p align="right"><a href="C_Send_CDA_Reports.jsp">Back</a></p>
        </div>
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
		<li><a href="C_Main.jsp">Home</a></li>
		<li><a href="C_Login.jsp">Logout</a></li>
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