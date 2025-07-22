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
<title>Cloud </title>
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
.style23 {color: #666666; font-weight: bold;}
.style25 {color: #3f3f3f;
	font-weight: bold;
}
.style31 {color: #6d6d6d; }
.style32 {color: #515473}
.style35 {color: #515455; font-weight: bold; }
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
          <h2> Doctor Details </h2>
          <p align="justify">&nbsp;</p>
          <table width="510" height="311" border="1" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <%
						String doname = request.getParameter("name");
						//int uid = Integer.parseInt(mid);
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from healthcare_sp where name='"+doname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								//s6=rs.getString(8);
								//s7=rs.getString(9);
								//s8=rs.getString(8);
								
								
								
								
								
					%>
            <tr>
              <td rowspan="8" ><div style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="ownprofileimage.jsp?imgid=<%=i%>" style="width:200px; height:230px;" />
              </div></td>
            </tr>
            <tr>
              <td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style25 style32" style="margin-left:20px;">Name:</div></td>
              <td  width="300" valign="middle" height="40" style="color:#000000;"><div align="left" class="style31" style="margin-left:20px;">
                  <%out.println(s1);%>
              </div></td>
            </tr>
            <tr>
              <td  width="120" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style35" style="margin-left:20px;">E-Mail:</div></td>
              <td  width="72" valign="middle" height="40" style="color:#000000;"><div align="left" class="style31" style="margin-left:20px;">
                  <%out.println(s2);%>
              </div></td>
            </tr>
            <tr>
              <td  width="100" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style35" style="margin-left:20px;">Mobile:</div></td>
              <td  width="82" valign="middle" height="40"><div align="left" class="style31" style="margin-left:20px;">
                  <%out.println(s3);%>
              </div></td>
            </tr>
            <tr>
              <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style35" style="margin-left:20px;">Date Of Birth:</div></td>
              <td  width="82" align="left" valign="middle" height="40"><div align="left" class="style31" style="margin-left:20px;">
                  <%out.println(s5);%>
              </div></td>
            </tr>
            <tr>
              <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " class="style35" style="margin-left:20px;">Address:</div></td>
              <td  width="82" align="left" valign="middle" height="40"><div align="left" class="style31" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div></td>
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="justify">&nbsp;</p>
          <p align="right"><a href="C_Main.jsp">Back</a></p>
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
