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
.style21 {font-size: 14px; font-weight: bold; color: #333333; }
.style22 {color: #FF0000}
.style49 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style3 {	color: #3e3e3e;
	font-style: italic;
	font-weight: bold;
	font-size: 14px;
}
.style36 {color: #3e3e3e; font-weight: bold; font-size: 12px; }
.style38 {color: #3e3e3e; font-weight: bold; }
.style48 {font-size: 11px; font-weight: bold; color: #FF0000; }
.style49 {color: #FF0000; font-weight: bold; }
.style51 {
	font-size: 16px;
	font-weight: bold;
}
.style52 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style52 {color: #FF0000; font-weight: bold; }
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
          <h2>Reply Letter For  Report</h2>
          <%String patient =request.getParameter("patient_name");
			%>
          <p>&nbsp;</p>
          <p><em><strong>Reply Letter For  Report With Patient Name :</strong></em> <span class="style52"><%=patient%></span></p>
          <p align="justify">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
		
				String query="Select *from cda_reply_letter where patient_name='"+patient+"'"; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				if ( rs.next() )
				{
					i=rs.getInt(1);
					
					String patient_name=rs.getString(2);
					String hospital=rs.getString(3);
					String doctor=rs.getString(4);
					
					String diagnosis_ref=rs.getString(5);
					String diagnosis_rep=rs.getString(6);
					String illness_ref=rs.getString(7);
					String illness_rep=rs.getString(8);
					String medication_ref=rs.getString(9);
					String medication_rep=rs.getString(10);
					String labratory_ref=rs.getString(11);
					String labratory_rep=rs.getString(12);
					String radiology_ref=rs.getString(13);
					String radiology_rep=rs.getString(14);
					String pathology_ref=rs.getString(15);
					String pathology_rep=rs.getString(16);
					String assessment_ref=rs.getString(17);
					String assessment_rep=rs.getString(18);
					String surgical_ref=rs.getString(19);
					String surgical_rep=rs.getString(20);
					String relevant_ref=rs.getString(21);
					String relevant_rep=rs.getString(22);
					String reason_ref=rs.getString(23);
					String reason_rep=rs.getString(24);
					String procedure_ref=rs.getString(25);
					String procedure_rep=rs.getString(26);
					String evaluation_ref=rs.getString(27);
					String evaluation_rep=rs.getString(28);
					String plan_ref=rs.getString(29);
					String plan_rep=rs.getString(30);
					
					
					%>
          </p>
          <p align="justify"><em><strong>Doctor Name :</strong></em> <span class="style52"><%=doctor%></span></p>
          <table width="589" border="1" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
            <tr>
              <th width="241" height="45" bgcolor="#666666" scope="col"><span class="style63">Sections In Body </span></th>
              <th width="170" bgcolor="#666666" scope="col"><span class="style63"> Referral Letter </span></th>
              <th width="170" bgcolor="#666666" scope="col"><span class="style63"> Reply Letter </span></th>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Diagnosis</span></th>
              <td><div align="center"><%=diagnosis_ref%></div></td>
              <td><div align="center"><%=diagnosis_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">History Of Past Illness </span></th>
              <td><div align="center"><%=illness_ref%></div></td>
              <td><div align="center"><%=illness_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">History Of Medication Use </span></th>
              <td><div align="center"><%=medication_ref%></div></td>
              <td><div align="center"><%=medication_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Labratory Studies </span></th>
              <td><div align="center"><%=labratory_ref%></div></td>
              <td><div align="center"><%=labratory_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Radiology Studies </span></th>
              <td><div align="center"><%=radiology_ref%></div></td>
              <td><div align="center"><%=radiology_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Pathology Studies </span></th>
              <td><div align="center"><%=pathology_ref%></div></td>
              <td><div align="center"><%=pathology_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Function Status Assessment </span></th>
              <td><div align="center"><%=assessment_ref%></div></td>
              <td><div align="center"><%=assessment_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Surgical Operation Note </span></th>
              <td><div align="center"><%=surgical_ref%></div></td>
              <td><div align="center"><%=surgical_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Relevant Diagnostic Tests </span></th>
              <td><div align="center"><%=relevant_ref%></div></td>
              <td><div align="center"><%=relevant_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Reason For Referral </span></th>
              <td><div align="center"><%=reason_ref%></div></td>
              <td><div align="center"><%=reason_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Special Treatments And Procedures </span></th>
              <td><div align="center"><%=procedure_ref%></div></td>
              <td><div align="center"><%=procedure_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Subsequent Evaluation Note </span></th>
              <td><div align="center"><%=evaluation_ref%></div></td>
              <td><div align="center"><%=evaluation_rep%></div></td>
            </tr>
            <tr>
              <th height="35" bgcolor="#E1E1E1" scope="row"><span class="style55">Plan Of Treatment </span></th>
              <td><div align="center"><%=plan_ref%></div></td>
              <td><div align="center"><%=plan_rep%></div></td>
            </tr>
          </table>
          <%
				
				}
	
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
          </p>
          <label> </label>
<p align="right"><a href="HC_View_Reply_Letter.jsp">Back</a></p>
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
