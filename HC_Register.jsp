<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Health Care Service Provider</title>
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
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="U_Login.jsp">End User </a></li>
        <li><a href="HA_Login.jsp">Hospital-A </a></li>
        <li><a href="HB_Login.jsp">Hospital-B </a></li>
        <li><a href="C_Login.jsp">Cloud</a></li>
        <li class="active"><a href="HC_Login.jsp">Health Care Service Provider</a></li>
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
          <h2><span>Health Care Service Provider Register </span></h2>
          <form action="HC_RegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><br />
            <br />
            </label>
            <table width="590" height="524" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="259" scope="row"><div align="left"> Name (required) : </div></td>
                <td width="343"><input id="name" name="userid" class="text" /></td>
              </tr>
              <tr>
                <td ><div align="left">Password (required) : </div></td>
                <td><input type="password" id="password" name="pass" class="text" /></td>
              </tr>
              <tr>
                <td scope="row"><div align="left">Email Address (required) : </div></td>
                <td><input id="email" name="email" class="text" /></td>
              </tr>
              <tr>
                <td scope="row"><div align="left">Mobile Number (required) : </div></td>
                <td><input id="mobile" name="mobile" class="text" /></td>
              </tr>
              <tr>
                <td scope="row"><label for="label"> </label>
                    <label for="label">
                    <div align="left">Your Address : </div>
                  </label></td>
                <td><textarea name="address" cols="45" id="address"></textarea></td>
              </tr>
              <tr>
                <td scope="row"><label for="label"> </label>
                    <label for="label">
                    <div align="left">Date of Birth (required) : </div>
                  </label></td>
                <td><input id="dob" name="dob" class="text" /></td>
              </tr>
              <tr>
                <td scope="row"><div align="left">Select Gender (required) : </div></td>
                <td><select id="s1" name="gender" class="text">
                    <option>-Select-</option>
                    <option>Male</option>
                    <option>Female</option>
                </select></td>
              </tr>
              <tr>
                <td scope="row"><label for="label"> </label>
                    <label for="label">
                    <div align="left">Enter Pincode (required) : </div>
                  </label></td>
                <td><input id="pincode" name="pincode" class="text" /></td>
              </tr>
              <tr>
                <td scope="row"><label for="location"> </label>
                    <label for="location">
                    <div align="left">Enter Location (required) : </div>
                  </label></td>
                <td><input id="loc" name="location" class="text" /></td>
              </tr>
              <tr>
                <td scope="row"><label for="label"> </label>
                    <label for="label">
                    <div align="left">Select Profile Picture (required) : </div>
                  </label></td>
                <td><input type="file" id="pic" name="pic" class="text" /></td>
              </tr>
              <tr>
                <td height="79" scope="row">&nbsp;</td>
                <td><input name="submit" type="submit" value="REGISTER" /></td>
              </tr>
            </table>
            <p align="right"><a href="HC_Login.jsp">Back</a></p>
          </form>
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
				<li><a href="index.html">Home</a></li>
				<li><a href="U_Login.jsp">End User </a></li>
				<li><a href="HA_Login.jsp">Hospital - A </a></li>
				<li><a href="HB_Login.jsp">Hospital - B </a></li>
				<li><a href="C_Login.jsp">Cloud Server</a></li>
				<li><a href="HC_Login.jsp">Health Care Service Provider</a></li>
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
