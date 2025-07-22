<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%=application.getAttribute("docname")%>  (Doctor)</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style49 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style49 {color: #FF0000; font-weight: bold; }
.style55 {color: #3e3e3e}
.style63 {color: #25BACE; font-size: 14px; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li class="active"><a href="HC_Main.jsp">Hi <%=application.getAttribute("docname")%> !!  ( Health Care Service Povider )</a></li>
        <li><a href="HC_Login.jsp">Logout</a></li>
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
          <h2>Reply Letter For Report</h2><%String patient =request.getParameter("patient_name");
		String docname =(String)application.getAttribute("docname");
			%>
          <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{				
						
					String hospital=request.getParameter("hospital");
					String doctor=(String)application.getAttribute("docname");
					String patient_name=request.getParameter("pname");
					
					String diagnosis_ref=request.getParameter("select");
					String diagnosis_rep=request.getParameter("select2");
					String illness_ref=request.getParameter("select3");
					String illness_rep=request.getParameter("select4");
					String medication_ref=request.getParameter("select5");
					String medication_rep=request.getParameter("select6");
					String labratory_ref=request.getParameter("select7");
					String labratory_rep=request.getParameter("select8");
					String radiology_ref=request.getParameter("select9");
					String radiology_rep=request.getParameter("select10");
					String pathology_ref=request.getParameter("select11");
					String pathology_rep=request.getParameter("select12");
					String assessment_ref=request.getParameter("select13");
					String assessment_rep=request.getParameter("select14");
					String surgical_ref=request.getParameter("select15");
					String surgical_rep=request.getParameter("select16");
					String relevant_ref=request.getParameter("select17");
					String relevant_rep=request.getParameter("select18");
					String reason_ref=request.getParameter("select19");
					String reason_rep=request.getParameter("select20");
					String procedure_ref=request.getParameter("select21");
					String procedure_rep=request.getParameter("select22");
					String evaluation_ref=request.getParameter("select23");
					String evaluation_rep=request.getParameter("select24");
					String plan_ref=request.getParameter("select25");
					String plan_rep=request.getParameter("select26");
					
				
				String query="Select *from cda_reply_letter where patient_name='"+patient_name+"' and hospital='"+hospital+"' and doctor='"+doctor+"'"; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				if ( rs.next() )
				{
						%><h3 align="justify">Report Already Sent !!</h3><%
				}
				else
				{	
					String query1="insert into cda_reply_letter(patient_name,hospital,doctor,diagnosis_ref,diagnosis_rep,illness_ref,illness_rep,medication_ref,medication_rep,labratory_ref,labratory_rep,radiology_ref,radiology_rep,pathology_ref,pathology_rep,assessment_ref,assessment_rep,surgical_ref,surgical_rep,relevant_ref,relevant_rep,reason_ref,reason_rep,procedure_ref,procedure_rep,evaluation_ref,evaluation_rep,plan_ref,plan_rep) values('"+patient_name+"','"+hospital+"','"+doctor+"','"+diagnosis_ref+"','"+diagnosis_rep+"','"+illness_ref+"','"+illness_rep+"','"+medication_ref+"','"+medication_rep+"','"+labratory_ref+"','"+labratory_rep+"','"+radiology_ref+"','"+radiology_rep+"','"+pathology_ref+"','"+pathology_rep+"','"+assessment_ref+"','"+assessment_rep+"','"+surgical_ref+"','"+surgical_rep+"','"+relevant_ref+"','"+relevant_rep+"','"+reason_ref+"','"+reason_rep+"','"+procedure_ref+"','"+procedure_rep+"','"+evaluation_ref+"','"+evaluation_rep+"','"+plan_ref+"','"+plan_rep+"')"; 
					
					Statement st1=connection.createStatement();
					int rs1=st1.executeUpdate(query1);
					if(rs1==1)
					{
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
					
					String strQuery21 ="insert into transaction(user,fname,task,dt) values('"+docname+"','"+patient_name+"','Reply Letter','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery21);
						%><h3 align="justify">Report Sent Sucessfully !!</h3><%
					}
				}
	
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
	      
          <label>
          </label>
          <p align="right"><a href="HC_Reply_Letter.jsp">Back</a></p>
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
		<li><a href="HC_Main.jsp">Home</a></li>
		<li><a href="HC_Login.jsp">Logout</a></li>
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
