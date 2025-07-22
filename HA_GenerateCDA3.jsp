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
<title>Hospital - A</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style3 {
	color: #3e3e3e;
	font-style: italic;
	font-weight: bold;
	font-size: 14px;
}
.style21 {font-size: 14px; font-weight: bold; color: #333333; }
.style22 {color: #FF0000}
.style23 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style24 {color: #3e3e3e}
.style30 {color: #3e3e3e; font-weight: bold; font-size: 13px; }
.style34 {color: #FF0000; font-size: 13px; font-weight: bold; }
.style35 {color: #000000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li class="active"><a href="HA_Main.jsp">Hospital - A</a></li>
        <li><a href="HA_Login.jsp">Logout</a></li>
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
          <h2><span>Generated Report </span></h2>
          <br />
		  
         
            <%		
			
try 
	{			
		String creation_time=request.getParameter("creation_time");
		String template_id=request.getParameter("template_id");
		String language_code=request.getParameter("language_code");
		String purpose=request.getParameter("purpose");
		String patient_id=request.getParameter("patient_id");
		String patient_name=request.getParameter("patient_name");
		String patient_gender=request.getParameter("patient_gender");
		String patient_dob=request.getParameter("patient_dob");
		String author_id=request.getParameter("author_id");
		String author_name=request.getParameter("author_name");
		String author_org=request.getParameter("author_org");
		String org_name=request.getParameter("org_name");
		String org_addrs=request.getParameter("org_addrs");
		String org_phno=request.getParameter("org_phno");
		
		
		
		String payers=request.getParameter("payers");
		String advance=request.getParameter("advance");
		String support=request.getParameter("support");
		String functional_status=request.getParameter("functional_status");
		String problems=request.getParameter("problems");
		String family_history=request.getParameter("family_history");
		String social_history=request.getParameter("social_history");
		String allergies=request.getParameter("allergies");
		String medications=request.getParameter("medications");
		String medical_equipment=request.getParameter("medical_equipment");
		String vital_signs=request.getParameter("vital_signs");
		String results=request.getParameter("results");
		String procedures=request.getParameter("procedures");
		String encounters=request.getParameter("encounters");
		String plan_of_care=request.getParameter("plan_of_care");
		
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
      	


		
		KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
		Cipher encoder = Cipher.getInstance("RSA");
		KeyPair kp = kg.generateKeyPair();
		Key pubKey = kp.getPublic();
		byte[] pub = pubKey.getEncoded();
		String pk = String.valueOf(pub);
		
	    String rank="0";
		
		Statement st=connection.createStatement();
		
		String strQuery2 = "insert into transaction(user,fname,task,dt) values('Hospital A','"+patient_name+"','Upload','"+dt+"')";
		st.executeUpdate(strQuery2);
		
		
		st.executeUpdate("insert into cloudserver(patient_name,hospital,creation_time,template_id,language_code,purpose,patient_id,patient_gender,patient_dob,author_id,author_name,author_org,org_name,org_addrs,org_phno,payers,advance,support,functional_status,problems,family_history,social_history,allergies,medications,medical_equipment,vital_signs,results,procedures,encounters,plan_of_care)values ('"+patient_name+"','hospital_a','"+creation_time+"','"+template_id+"','"+language_code+"','"+purpose+"','"+patient_id+"','"+patient_gender+"','"+patient_dob+"','"+author_id+"','"+author_name+"','"+author_org+"','"+org_name+"','"+org_addrs+"','"+org_phno+"','"+payers+"','"+advance+"','"+support+"','"+functional_status+"','"+problems+"','"+family_history+"','"+social_history+"','"+allergies+"','"+medications+"','"+medical_equipment+"','"+vital_signs+"','"+results+"','"+procedures+"','"+encounters+"','"+plan_of_care+"')");
	     
				
				
		%>
                    </p>
                    <h3 >&nbsp;</h3>
                    <h3 >CDA Uploaded Sucessfully !</h3>
                    <p class="style35">&nbsp;</p>
                    <p align="right" class="style35"><a href="HA_Main.jsp">Back</a></p>
                    <%
		
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
<p>&nbsp;</p>
          <p align="justify"></p>
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
		<li><a href="HA_Main.jsp">Home</a></li>
		<li><a href="HA_Login.jsp">Logout</a></li>
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
