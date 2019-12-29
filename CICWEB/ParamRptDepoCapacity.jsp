<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file="inc/connect_db.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="formKu.js"></script>
        <link rel="SHORTCUT ICON" href="images/spil.ico">
        <title><%=(String) session.getAttribute("title")%></title>
        <script language="JavaScript" src="js/date_picker.js"></script>
        <link rel="stylesheet" type="text/css" href="css/dua.css" media="screen"/>
        <link rel="stylesheet" type="text/css" href="css/style_new.css" />
        <link rel="stylesheet" type="text/css" href="css/style_calender.css" />
    </head>
    <body onload="formKu()">
        <form name=formLap method="post" action="">
        <div id="page">
            <div id="content">
                
            <script type="text/javascript">
                function openPopup(url,name,w,h,props,center)
                {
                    l=18;t=18
                    if(center){l=(screen.availWidth-w)/2;t=(screen.availHeight-h)/2}
                    url=url.replace(/[ ]/g,'%20')
                    popup=window.open(url,name,'left='+l+',top='+t+',width='+w+',height='+h+',scrollbars=1'+((props)?','+props:''))
                    props=props||''
                    if(props.indexOf('fullscreen')!=-1){popup.moveTo(0,0);popup.resizeTo(screen.width,screen.height)}
                    popup.focus()
                }
                
                function numeralsOnly(evt)
                {
                    evt = (evt) ? evt : event;
                    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                    ((evt.which) ? evt.which : 0));
                    if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode!=46)
                    {
                        //alert("Enter numerals only in this field.");
                        return false;
                    }
                    return true;
                }
                
                function getCY()
                {
                    var portChoose = document.getElementById("portid").value;
                    var CYname = document.getElementById("cynameid").value;
                    var checkPort = document.getElementById("checkPort").value;
                    var checkCY = document.getElementById("checkCY").value;
                    
                    var url="ParamRptDepoCapacity.jsp?portChoose="+portChoose+"&CyPortChoose="+CYname;
                    
                    var checkList;
                    checkList=document.formLap.checkBox;
                    if(checkList[0].checked==true){url=url+"&checkPort=checked";}
                    if(checkList[1].checked==true){url=url+"&checkCY=checked";}
                    location.href=url;
                }
                
                function showReport()
                {
                    var checkChoose="", url="";
                    var portChoose = document.getElementById("portid").value;
                    var CYname = document.getElementById("cynameid").value;
                    
                    checkChoose=document.formLap.checkBox;
                    url="RptDepoCapacity.jsp?";
                    
                    if(checkChoose[0].checked==true)
                    { //laporan berdasarkan port
                        if(portChoose =='')
                        {
                            alert("Parameter Port masih kosong");
                            return false;
                        } 
                        else
                        {
                            url=url + "&portId=" + portChoose;
                        }

                    }
                    if(checkChoose[1].checked==true)
                    { //laporan berdasarkan cy
                        if(CYname=='')
                        {
                            alert("Parameter CY masih kosong");
                            return false;
                        } 
                        else
                        {
                            url=url + "&CYnameId=" + CYname;
                        }

                    }
                    openPopup(url,'Detail','1200','800','scrollbars,resizable',true);
                }
                
                function checkingProcess()
                {
                    var checkList;
                    checkList=document.formLap.checkBox;
                    if(checkList[0].checked==true) //port
                    {   document.getElementById("portid").disabled=false;}
                    else
                    {   document.getElementById("portid").disabled=true;}
                    
                    if(checkList[1].checked==true) //berdasar cy
                    {   document.getElementById("cynameid").disabled=false;}
                    else
                    {   document.getElementById("cynameid").disabled=true;}
                }
                
            </script>
                
            <%
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,user,password);
                
            try
            { 
                String username=(String) session.getAttribute("username");
                String port=(String) session.getAttribute("port");
                String CYIDUser=(String) session.getAttribute("CYIDUser");
                String CYNameUser=(String) session.getAttribute("CYNameUser");
                String groupUser=(String) session.getAttribute("groupUser");
                String callAct=request.getParameter("callAct");
                String CYShowLog = request.getParameter("CYnameId");
                
                String judul="", queryPort="", PortFill="disabled", CYFill="disabled";
                
                String getParamPortChecked=request.getParameter("checkPort")!=null?(String) request.getParameter("checkPort"):"";
                if(getParamPortChecked.equals("checked")){ PortFill="enabled";  }
                String getParamCYChecked=request.getParameter("checkCY")!=null?(String) request.getParameter("checkCY"):"";
                if(getParamCYChecked.equals("checked")){ CYFill="enabled";  }
                
                if (username != null)
                {
                    Statement staGetPort=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    Statement staGetCY=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    
                    ResultSet rsGetPort, rsGetCY;
                    
                    String portSelect = request.getParameter("portChoose");
                    
                    judul="REPORT DEPO CAPACITY";
                    out.println("<b><font color=Blue size=3>"+judul+"</b><br><br></font>");
                    
                    out.println("<table>");
                    out.println("<tr>");
                    out.println("<td width=10><input type=\"checkBox\" name=checkBox id=checkPort value=1 onclick=\"checkingProcess()\" "+getParamPortChecked+"></td>");
                    out.println("<td><b><font size=2>PORT</font></b></td>");
                    out.println("<td>:</td>");
                    out.println("<td><select name=portid id=portid style=\"width:150px\" onchange=\"getCY()\" "+PortFill+">");
                    out.println("<option value=0>---Pilih Port.---</option>");
                    queryPort = "SELECT portid from csd.ports where is_spilport=1 and ACTIVEPORT = 1 ";
                    
                    if(!groupUser.equals("1") && !groupUser.equals("2") && !groupUser.equals("8"))
                    {   
                        queryPort=queryPort+ " and portid='"+port+"'";    
                    }
                    queryPort=queryPort + "order by portid ";
                    rsGetPort = staGetPort.executeQuery(queryPort);
                    
                    while(rsGetPort.next())
                    {
                        if(rsGetPort.getString("portid").equals(portSelect))
                        {   
                            out.println("<option value="+rsGetPort.getString("portid")+" selected>" + rsGetPort.getString("portid") + "</option>"); 
                        }
                        
                        else
                        {  
                            out.println("<option value="+rsGetPort.getString("portid")+" >" + rsGetPort.getString("portid") + "</option>");  
                         
                        }
                    }
                    
                    out.println("</select>");
                    out.println("</td>");
                    out.println("</tr>");
                    
                    out.println("<tr>");
                    out.println("<td width=10><input type=\"checkBox\" name=checkBox id=checkCY value=1 onclick=\"checkingProcess()\" "+getParamCYChecked+"></td>");
                    out.println("<td><b><font size=2>CYNAME</font></b></td>");
                    out.println("<td>:</td>");
                    out.println("<td><select name=cynameid id=cynameid style=\"width:150px\" "+CYFill+">");
                    out.println("<option value=0>---Pilih CY Name.---</option>");
                    
                    rsGetCY = staGetCY.executeQuery("select cyid, cyname from cic.mastercy where portid ='"+portSelect+"' and isactive=1 order by defaultcy desc, cyname");
                    
                    while(rsGetCY.next())
                    {
                        out.println("<option value='"+rsGetCY.getString("cyid")+"'>"+rsGetCY.getString("cyname")+"</option>");
                    }
                    
                    out.println("</select>");
                    out.println("</td>");
                    out.println("</tr>");
                    out.println("</table><br>");
                    
                    out.println("<table>");
                    out.println("<tr>");
                    out.println("<td>");
                    out.println("<input type=button value=\"GO\" onclick=\"showReport()\"></input>"); 
                    out.println("</td>");
                    out.println("</tr>");
                    out.println("</table>");
                }
                
                else
                {
                    out.println("Session anda sudah habis... Silahkan login kembali.");
                }
            }
            
            catch(Exception ex)
            {
                out.println("Error Message " + ex);
            }
            
            finally
            {
                con.close();
            }
            
            %>   
                
            </div>
        </div>
        </form>
    </body>
</html>

