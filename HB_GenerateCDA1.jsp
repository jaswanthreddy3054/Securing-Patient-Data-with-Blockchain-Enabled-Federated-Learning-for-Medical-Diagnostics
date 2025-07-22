<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hospital - B</title>
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
.style11 {color: #3e3e3e; font-weight: bold; font-size: 12; }
.style12 {font-size: 12}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
        <li class="active"><a href="HB_Main.jsp">Hospital - B </a></li>
        <li><a href="HB_Login.jsp">Logout</a></li>
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
          <h2><span>generate document </span></h2><br />
		  
		            <form id="form1" name="form1" method="post" action="HB_GenerateCDA2.jsp">
          <p align="justify"><span class="style3">Document Information </span><br />
============================================================================== </p>
<%		
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
		
		
		
		%>
                <input type="hidden" name="creation_time" value="<%=creation_time%>" />
				<input type="hidden" name="template_id" value="<%=template_id%>" />
				<input type="hidden" name="language_code" value="<%=language_code%>" />
				<input type="hidden" name="purpose" value="<%=purpose%>" />
				<input type="hidden" name="patient_id" value="<%=patient_id%>" />
				<input type="hidden" name="patient_name" value="<%=patient_name%>" />
				<input type="hidden" name="patient_gender" value="<%=patient_gender%>" />
				<input type="hidden" name="patient_dob" value="<%=patient_dob%>" />
				<input type="hidden" name="author_id" value="<%=author_id%>" />
				<input type="hidden" name="author_name" value="<%=author_name%>" />
				<input type="hidden" name="author_org" value="<%=author_org%>" />
				<input type="hidden" name="org_name" value="<%=org_name%>" />
				<input type="hidden" name="org_addrs" value="<%=org_addrs%>" />
				<input type="hidden" name="org_phno" value="<%=org_phno%>" />
				
		
		
		
          <table width="506" style="border-collapse:collapse" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
 
              <td width="167" height="32"><div align="left"><span class="style11">Payers  : </span></div></td>
              <td width="339"><input  type="text" name="payers"  />
              <span class="style12"></span></td>
            </tr>
            <tr>
              <td height="30"><div align="left"><span class="style11">Advance Directives   : </span></div></td>
              <td><span class="style12">
                <input type="text" name="advance" />
              </span></td>
            </tr>
            <tr>
              <td height="30"><div align="left"><span class="style11">Support  : </span></div></td>
              <td><span class="style12">
                <input type="text" name="support" />
              </span></td>
            </tr>
            <tr>
              <td height="30"><div align="left"><span class="style11">Functional Status  : </span></div></td>
              <td><span class="style12">
                <input type="text" name="functional_status" />
              </span></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Problems : </span></div></td>
              <td><textarea name="problems" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Family History   : </span></div></td>
              <td><textarea name="family_history" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Social History   : </span></div></td>
              <td><textarea name="social_history" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11"> Allergies : </span></div></td>
              <td><textarea name="allergies" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Medications  : </span></div></td>
              <td><span class="style12">
                <label>
                <textarea name="medications" cols="35"></textarea>
                </label>
              </span></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Medical Equipment   : </span></div></td>
              <td><textarea name="medical_equipment" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Vital Signs   : </span></div></td>
              <td><textarea name="vital_signs" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Results  : </span></div></td>
              <td><textarea name="results" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="50"><div align="left"><span class="style11">Procedures  : </span></div></td>
              <td><textarea name="procedures" cols="35"></textarea></td>
            </tr>
            <tr>
              <td height="30"><div align="left"><span class="style11">Encounters  : </span></div></td>
              <td><span class="style12">
                <input type="text" name="encounters" />
              </span></td>
            </tr>
            <tr>
              <td height="60"><div align="left"><span class="style11">Plan of Care: </span></div></td>
              <td><textarea name="plan_of_care" cols="35" rows="3"></textarea></td>
            </tr>
            <tr>
              <td height="29"><span class="style12"></span></td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <p align="right">Page 2 of 2 </p>
          <div align="center">
                <input type="submit" name="Submit" value="Upload" />
                </div>
            </label>
          </form>
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
		<li><a href="HB_Main.jsp">Home</a></li>
		<li><a href="HB_Login.jsp">Logout</a></li>
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
