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
                
                String tempLogHisQuery ="";
                if (username != null)
                {
                    out.println("<b><font color=Blue size=3>LOG HISTORY DEPO CAPACITY<b><br><br></font>");
                    out.println("<table border=1 width=850 cellspacing=0>");
                    out.println("<tr>");
                    out.println("<td align=center>PORT NAME</td>");
                    out.println("<td align=center>CY NAME</td>");
                    out.println("<td align=center>GROUND SLOT</td>");
                    out.println("<td align=center>MAX CAPACITY</td>");
                    out.println("<td align=center>DATE</td>");
                    out.println("<td align=center>BYUSER</td>");
                    out.println("</tr>");
                    out.println("</table>");
                    
                    Statement staGetLogHis=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    ResultSet rsGetLogHis;
                    tempLogHisQuery = "select m.PORTID, m.CYNAME, nvl(lh.GROUNDSLOT, '0') as GROUNDSLOT, nvl(lh.MAXCAPACITY, '0') as MAXCAPACITY, nvl(to_char(lh.UPDATE_AT_ON), '-') as UPDATE_AT_ON, nvl(lh.BYUSER, '-') as BYUSER "
                            + "from mastercy m "
                            + "left join LOG_HIS_DEPO_CAPACITY lh on m.CYID = lh.CYID "
                            + "where m.CYID="+CYShowLog+" "
                            + "order by lh.UPDATE_AT_ON desc";
                    System.out.println(tempLogHisQuery);
                    rsGetLogHis = staGetLogHis.executeQuery(tempLogHisQuery);
                    
                    while(rsGetLogHis.next())
                    {
                        out.println("<table border=1 width=850 cellspacing=0>");
                        out.println("<tr>");
                        out.println("<td>"+rsGetLogHis.getString("PORTID")+"</td>");
                        out.println("<td>"+rsGetLogHis.getString("CYNAME")+"</td>");
                        out.println("<td align=right>"+rsGetLogHis.getString("GROUNDSLOT")+"</td>");
                        out.println("<td align=right>"+rsGetLogHis.getString("MAXCAPACITY")+"</td>");
                        out.println("<td align=center>"+rsGetLogHis.getString("UPDATE_AT_ON")+"</td>");
                        out.println("<td align=center>"+rsGetLogHis.getString("BYUSER")+"</td>");
                        out.println("</tr>");
                        out.println("</table>");
                    }
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
    </body>
</html>

