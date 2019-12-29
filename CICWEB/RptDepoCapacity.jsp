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
                
            try{ 
                String username=(String) session.getAttribute("username");
                String port=(String) session.getAttribute("port");
                String CYIDUser=(String) session.getAttribute("CYIDUser");
                String CYNameUser=(String) session.getAttribute("CYNameUser");
                String groupUser=(String) session.getAttribute("groupUser");
                String callAct=request.getParameter("callAct");
                
                String CYShowReport = request.getParameter("CYnameId")!=null?(String) request.getParameter("CYnameId"):"";
                String PortShowReport = request.getParameter("portId")!=null?(String) request.getParameter("portId"):"";

                String tempQueryReportDepo="";
                
                if (username != null)
                {
                    out.println("<b><font color=Blue size=3>REPORT HISTORY DEPO CAPACITY<b><br><br></font>");
                    out.println("<table border=1 width=850 cellspacing=0>");
                    out.println("<tr>");
                    out.println("<td align=center>PORT NAME</td>");
                    out.println("<td align=center>CY NAME</td>");
                    out.println("<td align=center>GROUND SLOT</td>");
                    out.println("<td align=center>MAX CAPACITY</td>");
                    out.println("<td align=center>STOK HARI INI (TEUS)</td>");
                    out.println("<td align=center>SISA SPACE</td>");
                    out.println("</tr>");
                    
                    Statement staGetLogHis=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    ResultSet rsGetLogHis;
                    
                    tempQueryReportDepo = "select p.portid, cy.cyname, coalesce(cy.GROUNDSLOT,0) groundslot, coalesce(cy.MAXCAPACITY,0) maxcap, coalesce(a.jmlTeus,0) stock "
                                        + " , coalesce(cy.MAXCAPACITY,0)-coalesce(a.jmlTeus,0) as sisa_space "
                                        + " from ( "
                                        + "   select hcs.CYID, sum(cs.teus) jmlTeus, count(1) jmlBox "
                                        + "   from cic.containers c "
                                        + "   left join cic.HISTORY_CONTAINER_STATUS hcs on c.CURR_HISTORYNUM = hcs.NO_HISTORY "
                                        + "   left join cic.CONTAINERTYPES ct on c.CONTAINERTYPEID = ct.CONTAINERTYPEID  "
                                        + "   left join cic.CONTAINERSIZE cs on ct.CONTAINERTYPE = cs.CONTAINERSIZE  "
                                        + "   where c.active=1  "
                                        + "   and state in ('FXD','STR','MTA','MXD','MNA','MTD','MTS','MTB','MTL','FTL')  "
                                        + "   group by hcs.CYID "
                                        + " ) a "
                                        + " right join cic.mastercy cy on a.cyid=cy.cyid "
                                        + " left join csd.ports p on cy.portid=p.portid "
                                        + " where cy.ISACTIVE=1 and p.ACTIVEPORT=1 and p.IS_SPILPORT=1 ";
                    
                    System.out.println(tempQueryReportDepo);
                    
                    if (!PortShowReport.equals("") && !CYShowReport.equals(""))
                    {
                        tempQueryReportDepo = tempQueryReportDepo+"and cy.PORTID='"+PortShowReport+"' and cy.CYID ="+CYShowReport+" ";
                    }
                    
                    else
                    {
                        if (!PortShowReport.equals(""))
                        {
                            tempQueryReportDepo = tempQueryReportDepo+"and cy.PORTID='"+PortShowReport+"' ";
                        }

                        else if (!CYShowReport.equals(""))
                        {
                            tempQueryReportDepo = tempQueryReportDepo+"and cy.CYID="+CYShowReport+" ";
                        }
                        
                    }
                    tempQueryReportDepo = tempQueryReportDepo+"order by cy.portid, cy.cyname";
                    
                    int finalMax = 0;
                    int finalStock = 0;
                    int finalResult = 0;
                    int tempMax = 0;
                    int tempStock = 0;
                    int result = 0;
                    
                    System.out.println(tempQueryReportDepo);
                    rsGetLogHis = staGetLogHis.executeQuery(tempQueryReportDepo);
                    while(rsGetLogHis.next())
                    {
                        tempMax = rsGetLogHis.getInt("maxcap");
                        tempStock = rsGetLogHis.getInt("stock");
                        result = tempMax - tempStock;
                        
                        finalMax = finalMax + tempMax;
                        finalStock = finalStock + tempStock;
                        finalResult = finalResult + result;
                        
                        out.println("<tr>");
                        out.println("<td>"+rsGetLogHis.getString("portid")+"</td>");
                        out.println("<td>"+rsGetLogHis.getString("cyname")+"</td>");
                        
                        if(tempStock > tempMax)
                        {
                            out.println("<td align=right>"+rsGetLogHis.getString("groundslot")+"</td>");
                            out.println("<td align=right>"+rsGetLogHis.getString("maxcap")+"</td>");
                            out.println("<td align=right><font color=\"red\">"+rsGetLogHis.getString("stock")+"</font></td>");
                            out.println("<td align=right><font color=\"red\">"+result+"</font></td>");
                            out.println("</tr>");
                        }
                        
                        else 
                        {
                            out.println("<td align=right>"+rsGetLogHis.getString("groundslot")+"</td>");
                            out.println("<td align=right>"+rsGetLogHis.getString("maxcap")+"</td>");
                            out.println("<td align=right>"+rsGetLogHis.getString("stock")+"</td>");
                            out.println("<td align=right>"+result+"</td>");
                            out.println("</tr>");
                        }
                    }
                    
                    out.println("<tr>");
                    out.println("<td align=center colspan=3>TOTAL</td>");
                    out.println("<td align=right>"+finalMax+"</td>");
                    
                    if (finalStock > finalMax)
                    {
                        out.println("<td align=right><font color=\"red\">"+finalStock+"</font></td>");
                        out.println("<td align=right><font color=\"red\">"+finalResult+"</font></td>");
                        out.println("</tr>");
                        out.println("</table>");
                    }
                    
                    else 
                    {
                        out.println("<td align=right>"+finalStock+"</td>");
                        out.println("<td align=right>"+finalResult+"</td>");
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