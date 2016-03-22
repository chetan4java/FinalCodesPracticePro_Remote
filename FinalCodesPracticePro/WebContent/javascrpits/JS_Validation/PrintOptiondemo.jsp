<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>frmPreviewform</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="javascript">
function funcheck()
{//alert("fun");
	
	if(!( (window.event.keyCode==9)||(window.event.keyCode==13) ) )
	{
	return false;
	}

}

function SystemPrintPreview(OLECMDID) 
		{ 
		
			document.f1.PageSetup.style.visibility="hidden";
			document.f1.Print.style.visibility="hidden";
			document.f1.PrintPreview.style.visibility="hidden";  	
			document.f1.SaveAs.style.visibility="hidden";  	

			 //var OLECMDID = 10; 
			 /* OLECMDID values: 
			 * 6 - print 
			 * 7 - print preview 
			 * 8 - page setup (for printing)  
			 * 1 - open window 
			 * 4 - Save As 
			 * 10 - properties 
			 */
			 try
			 {
				 var PROMPT = 1; // 1 PROMPT & 2 DONT PROMPT USER 
				 var oWebBrowser = document.getElementById("WebBrowser1");
				 if(oWebBrowser == null)
				 {
					 var sWebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>'; 
					 document.body.insertAdjacentHTML('beforeEnd', sWebBrowser); 
					 oWebBrowser = document.getElementById("WebBrowser1");
					 //WebBrowser1.outerHTML = ""; 
				 }
				oWebBrowser.ExecWB(OLECMDID,PROMPT);


            document.f1.PageSetup.style.visibility="visible";
			document.f1.Print.style.visibility="visible";
			document.f1.PrintPreview.style.visibility="visible";  	
			document.f1.SaveAs.style.visibility="visible";  	



				
			  }
			 catch(e){alert("Printing failed! " + e.message);}
		}

function fundisable()
{

if(event.button==2)
{
alert("This function is not allowed");
}
document.onMouseDown="Disable";
}



</script>



</head>


<body leftmargin="0" bottommargin="0" topmargin="0" rightmargin="0"
	onFocus="fundisable();" marginwidth="0" marginheight="0">
	<form name="f1" method="post" onMouseDown="fundisable();"
		onKeyDown="return funcheck()">
		<div align="center">

			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="906" height="812" colspan="5"><div align="center">
							<table width="664" border="1" cellpadding="0" cellspacing="0">
								<tr>
									<td width="41" height="29"><img src="ab.JPG" width="41"
										height="36"></td>
									<td height="29" colspan="2"><div align="center">
											<table width="27" border="0">
												<tr>
													<td width="17" colspan="3"><img src="ab.JPG"
														width="37" height="25"></td>
												</tr>
											</table>
										</div></td>
									<td width="50" height="29"><img src="ab.JPG" width="49"
										height="35"></td>
								</tr>
								<tr>
									<td colspan="4" width="664">
										<table width="664" background="Images/headerbg.jpg">
											<tr>
												<td height="49" colspan="2" rowspan="4"><img
													src="Images/logo.gif" width="89" height="90"></td>
												<td height="23"><div align="center">
														<img src="Images/logoname.gif" width="342" height="25">
													</div></td>
											</tr>
											<tr>
												<td height="24"><div align="center">
														<span class="style19">[ Established u/s 3 of UGC
															Act, 1956 vide Notification no. F-9-15/95 U.3 of the
															Govt. of India] <span class="style14">Accredited
																by NAAC with 'A' Grade </span>
														</span>
													</div></td>
											</tr>
											<tr>
												<td height="23"><div align="center">
														<span class="style22"><span class="motto"><strong>Social
																	Transformation Through Dynamic Education</strong></span> </span>
													</div></td>
											</tr>
											<tr>
												<td height="21"><div align="center">
														<strong>Application for </strong>
													</div></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="564" colspan="4"><div align="center">
											<table width="555" border="1" cellpadding="0" cellspacing="0">
												<tr>
													<td height="23"><div align="left">
															<strong>Academic Year : </strong>
														</div></td>
													<td height="23" colspan="3"><strong> </strong></td>
													<td height="23" colspan="2">&nbsp;</td>
													<td colspan="2" rowspan="5"><div align="center">
															<img src="photo_form.JPG" width="102" height="91">
														</div></td>
												</tr>
												<tr>
													<td height="25"><strong>Student Id:</strong></td>
													<td height="25" colspan="3"><div align="left">
															<strong> </strong>
														</div></td>
													<td height="25" colspan="2"><strong>Date-</strong><strong>Time:</strong>
													</td>
												</tr>
												<tr>
													<td height="25" colspan="6"><div align="center">
															<strong>Candidate's Name : </strong>
														</div></td>
												</tr>
												<tr>
													<td height="23"><div align="center"></div></td>
													<td height="23" colspan="3">&nbsp;</td>
													<td height="23" colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td height="34" colspan="6"><div align="center">
															<strong>Father's Name : </strong>
														</div></td>
												</tr>
												<tr>
													<td height="25"><div align="center"></div></td>
													<td height="25" colspan="3">&nbsp;</td>
													<td height="25" colspan="2">&nbsp;</td>
													<td colspan="2" rowspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td height="23" colspan="6"><div align="center">
															<strong>Mother's Name : </strong>
														</div></td>
												</tr>
												<tr>
													<td height="23"><div align="center"></div></td>
													<td height="23" colspan="3">&nbsp;</td>
													<td height="23" colspan="2">&nbsp;</td>
													<td colspan="2"><strong>Candidate's Signature</strong></td>
												</tr>
												<tr>
													<td height="23"><div align="left">
															<strong>Nationality</strong>
														</div></td>
													<td height="23" colspan="3">&nbsp;</td>
													<td width="67" height="23"><strong>Religion </strong></td>
													<td width="65" height="23">&nbsp;</td>
													<td width="80"><strong>Sex</strong></td>
													<td width="68">&nbsp;</td>
												</tr>
												<tr>
													<td width="136" height="23"><div align="left">
															<strong>Category:</strong>
														</div></td>
													<td height="23" colspan="3"><div align="right">
														</div></td>
													<td height="23" colspan="2"><strong>Date Of
															Birth </strong></td>
													<td height="23" colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td height="23" colspan="3"><div align="left">
															<strong>Caste</strong>
														</div></td>
													<td width="93" height="23">&nbsp;</td>
													<td height="23" colspan="2"><strong>Passing
															Out Year</strong></td>
													<td height="23" colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td height="23" colspan="3"><div align="left">
															<strong>Last Qualification </strong>
														</div></td>
													<td height="23">&nbsp;</td>
													<td height="23" colspan="4"><strong>Percentage
															Obtained </strong></td>
												</tr>
												<tr>
													<td height="23" colspan="3"><div align="left">
															<strong>Qualification Applied </strong>
														</div></td>
													<td height="23">&nbsp;</td>
													<td height="23" colspan="2"><strong>SubCourseName:</strong></td>
													<td height="23" colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td height="23" colspan="5"><div align="left"></div>
														<div align="center">
															<strong>Course Name : </strong>
														</div></td>
													<td height="23" colspan="3">&nbsp;</td>
												</tr>
												<tr>
													<td height="23" colspan="3"><div align="left">
															<strong>Local Address</strong>
														</div></td>
													<td height="23" colspan="5">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2"><div align="left">
															<strong>Dist </strong>-
														</div></td>
													<td colspan="2"><strong>State </strong>-</td>
													<td colspan="2"><strong>Country </strong>-</td>
													<td colspan="2"><strong>Pin. no</strong>-</td>
												</tr>
												<tr>
													<td><strong>Venue</strong></td>
													<td colspan="3">&nbsp;</td>
													<td><strong>Cell No </strong></td>
													<td colspan="3">-</td>
												</tr>
												<tr>
													<td height="23"><div align="left">
															<strong>Contact No </strong>
														</div></td>
													<td height="23" colspan="7">-</td>
												</tr>
												<tr>
													<td height="23" colspan="8"><div align="center">
															<strong>Demand Draft Details </strong>
														</div></td>
												</tr>
												<tr>
													<td height="23" colspan="2"><div align="center">
															<strong>DD No : </strong>
														</div></td>
													<td height="23" colspan="4"><div align="center">
															<strong>Amount:</strong>
														</div></td>
													<td height="23" colspan="2"><div align="center">
															<strong>Date Of Issue : </strong>
														</div></td>
												</tr>
												<tr>
													<td height="22" colspan="2"><div align="center">
														</div></td>
													<td height="22" colspan="4"><div align="center">
														</div></td>
													<td height="22" colspan="2"><div align="center">
														</div></td>
												</tr>
												<tr>
													<td height="25" colspan="2"><div align="left">
															<strong>Bank Name : </strong>
														</div></td>
													<td height="25" colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td height="23" colspan="2"><div align="left">
															<strong>Branch Name : </strong>
														</div></td>
													<td height="23" colspan="6">&nbsp;</td>
												</tr>
												<tr>
													<td height="28" colspan="8"><div align="center">
															<input name="Print" type="button" id="Print"
																onClick="SystemPrintPreview(6)" value="Print"> <input
																name="PrintPreview" type="button" id="PrintPreview"
																onClick="SystemPrintPreview(7)" value="PrintPreview">
															<input name="SaveAs" type="button" id="SaveAs"
																onClick="SystemPrintPreview(4)" value="SaveAs">
															<input name="PageSetup" type="button" id="PageSetup"
																value="PageSetup" onClick="SystemPrintPreview(8)">
														</div></td>
												</tr>
											</table>
										</div></td>
								</tr>
								<tr>
									<td height="45" colspan="2"><img src="ab.JPG" width="47"
										height="37"></td>
									<td width="678" height="45"><div align="center">
											<table width="49" height="41" border="0">
												<tr>
													<td width="48" height="37" colspan="3"><img
														src="ab.JPG" width="43" height="35"></td>
												</tr>
											</table>
										</div></td>
									<td height="45"><img src="ab.JPG" width="48" height="41"></td>
								</tr>
							</table>
						</div></td>
				</tr>
			</table>
		</div>



	</form>
</body>
</html>
