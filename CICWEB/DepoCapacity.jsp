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
                
                function getCY()
                {
                    var portChoose = document.getElementById("portid").value;
                    var CYname = document.getElementById("cynameid").value;
                    
                    var url="DepoCapacity.jsp?portChoose="+portChoose+"&CyPortChoose="+CYname;
                    location.href=url;
                }
                
                function saveNew()
                {
                    var portChoose = document.getElementById("portid").value;
                    var CYname = document.getElementById("cynameid").value;
                    var GroundSlot = document.getElementById("groundslot").value;
                    var maxCapacity = document.getElementById("maxcapicity").value;
                    
                    if (portChoose == "" || CYname == 0 || GroundSlot == "" || maxCapacity == "")
                    {
                        alert("Harap semua field di isi!!");
                    }
                    
                    else
                    {
                       var url="DepoCapacity.jsp?saveDepo=yes&portChoose="+portChoose+"&CyPortChoose="+CYname+"&GroundSlot="+GroundSlot+"&MaxCap="+maxCapacity;
                       location.href=url; 
                    }
                }
                
                function LogHistory()
                {
                    var CYname = document.getElementById("cynameid").value;
                    
                    var url = openPopup("showLogHistoryDepoCap.jsp?CYnameId="+CYname,'Detaillog','1200','800','scrollbars,resizable',true); 
                    
                }
                
                function onlyNumber(id)
                { 
                    var DataVal = document.getElementById(id).value;
                    document.getElementById(id).value = DataVal.replace(/[^0-9]/g,'');
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
                
                String judul="", groundSlot="0", maxcapacity="0",queryPort="", warning="", vErrMsg="", TempQueryCY="", TempQueryGetDataGround_MaxCap="", 
                        allowAccessData="N", tempGetDataCapPort="";
                
                if (username != null)
                {
                    String GroundSlotVal = request.getParameter("GroundSlot");
                    String MaxCapVal = request.getParameter("MaxCap");
                    
                    String CYSelect = request.getParameter("CyPortChoose");
                    String PortSelect = request.getParameter("portChoose");
                    
                    Statement staGetPort=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    Statement staGetCY=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    Statement staGetDataGroundMax=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    Statement staGetCapacityPort=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    
                    ResultSet rs, rsGetPort, rsGetCY, rsGetDataGroundMax, rsGetCapacityPort;
                    
                    judul="ENTRY DEPO CAPACITY";
                    out.println("<b><font color=Blue size=3>"+judul+"</b><br><br></font>");

                    if(request.getParameter("saveDepo") != null)
                    {
                        CallableStatement cstmt;
                        cstmt = con.prepareCall("call CIC.PR_DEPO_CAP_TEZT(?,?,?,?,?,?)");
                        cstmt.setString(1, "ADD" );
                        cstmt.setString(2, request.getParameter("CyPortChoose"));
                        cstmt.setString(3, request.getParameter("GroundSlot"));
                        cstmt.setString(4, request.getParameter("MaxCap"));
                        cstmt.setString(5, username);
                        cstmt.registerOutParameter(6, Types.VARCHAR);
                        rs = cstmt.executeQuery();
                        vErrMsg=cstmt.getString(6);
                        rs.close();
                        cstmt.close();
                    }
                    
                    out.println("<table>");
                    out.println("<tr>");
                    out.println("<td><b><font size=2>PORT</font></b></td>");
                    out.println("<td>:</td>");
                    out.println("<td><select name=portid id=portid style=\"width:150px\" onchange=\"getCY()\">");
                    out.println("<option value=0>---Pilih Port.---</option>");
                    queryPort = "SELECT portid from csd.ports where is_spilport=1 and ACTIVEPORT = 1 ";
                    if(!groupUser.equals("1") && !groupUser.equals("2") && !groupUser.equals("8"))
                    {   
                        queryPort=queryPort+ " and portid='"+port+"'";    
                    }
                    queryPort=queryPort  + "order by portid ";
                    System.out.println(queryPort);
                    rsGetPort = staGetPort.executeQuery(queryPort);
                    while (rsGetPort.next())
                    {
                        if(rsGetPort.getString("portid").equals(request.getParameter("portChoose")))
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
                    out.println("<td><b><font size=2>CYNAME</font></b></td>");
                    out.println("<td>:</td>");
                    out.println("<td><select name=cynameid id=cynameid style=\"width:150px\" onchange=\"getCY()\" >");
                    out.println("<option value=0>---Pilih CY Name.---</option>");    
                    
                    TempQueryCY = "select cyid, cyname from cic.mastercy where portid ='"+request.getParameter("portChoose")+"' and isactive=1 order by defaultcy desc, cyname";
                    System.out.println(TempQueryCY);
                    rsGetCY = staGetCY.executeQuery(TempQueryCY);
                    while(rsGetCY.next())
                    {
                        if (request.getParameter("CyPortChoose").equals(rsGetCY.getString("cyid")))
                        {
                            out.println("<option value='"+rsGetCY.getString("cyid")+"' selected>"+rsGetCY.getString("cyname")+"</option>");
                        }
                        
                        else
                        {
                            out.println("<option value='"+rsGetCY.getString("cyid")+"'>"+rsGetCY.getString("cyname")+"</option>");
                        }
                    }
                    
                    out.println("</select>");
                    out.println("</td>");
                    out.println("</tr>");
                    
                        out.println("<tr>");
                        out.println("<td><b><font size=2>GROUND SLOT</font></b></td>");
                        out.println("<td>:</td>");

                        TempQueryGetDataGround_MaxCap = "select m.PORTID, m.CYNAME, nvl(m.GROUNDSLOT, '0') as GROUNDSLOT, nvl(m.MAXCAPACITY, '0') as MAXCAPACITY from mastercy m where m.CYID ="+CYSelect+" ";

                        rsGetDataGroundMax = staGetDataGroundMax.executeQuery(TempQueryGetDataGround_MaxCap);

                        while(rsGetDataGroundMax.next())
                        {
                            groundSlot = rsGetDataGroundMax.getString("GROUNDSLOT");
                            maxcapacity = rsGetDataGroundMax.getString("MAXCAPACITY");
                        }
                        
                        out.println("<td><input type=text name=groundslot id=groundslot maxlength=11 size=15 value="+groundSlot+" onkeyup=\"onlyNumber(this.id)\"></input></td>");
                        out.println("<td>(In Teus)</td>");
                        out.println("</tr>");

                        out.println("<tr>");
                        out.println("<td><b><font size=2>MAX. CAPACITY</font></b></td>");
                        out.println("<td>:</td>");
                        out.println("<td><input type=text name=maxcapicity id=maxcapicity maxlength=11 size=15 value="+maxcapacity+" onkeyup=\"onlyNumber(this.id)\"></input></td>");
                        out.println("<td>(In Teus)</td>");
                        out.println("</tr>");

                        out.println("</table><br>");
                        out.println("<table>");
                        out.println("<tr>");
                        out.println("<td>");
                        out.println("<input type=button value=\"SAVE\" onclick=\"saveNew()\"></input>"); 
                        out.println("</td>");
                        out.println("<td>");
                        out.println("</table><br>");
                        
                        out.println("<table>");
                        out.println("<tr>");
                        out.println("<font color=red>"+warning+"<br></font>");
                        out.println("<font color=red>"+vErrMsg+"<br></font>");
                        out.println("</tr>");
                        out.println("</table>");

                        out.println("<table border=1 width=500 cellspacing=0>");
                        out.println("<tr>");
                        out.println("<td align=center>CY NAME</td>");
                        out.println("<td align=center>GROUND SLOT</td>");
                        out.println("<td align=center>MAX CAPACITY</td>");
                        out.println("</tr>");
                        out.println("</table>");
                        
                        tempGetDataCapPort = "select m.CYID, m.CYNAME, nvl(m.GROUNDSLOT, '0') as GROUNDSLOT, nvl(m.MAXCAPACITY, '0') as MAXCAPACITY "
                            + "from mastercy m "
                            + "where m.PORTID='"+PortSelect+"' and m.ISACTIVE = 1";
                        System.out.println(tempGetDataCapPort);
                        rsGetCapacityPort = staGetCapacityPort.executeQuery(tempGetDataCapPort);
                        
                        while(rsGetCapacityPort.next())
                        {
                            out.println("<table border=1 width=500 cellspacing=0> ");
                            out.println("<tr>");
                            out.println("<td align=center color:blue><a href=# onclick=\"openPopup('showLogHistoryDepoCap.jsp?CYnameId="+rsGetCapacityPort.getString("CYID")+"','Detail','950','500','scrollbars,resizable',true)\" class=link>"+rsGetCapacityPort.getString("CYNAME")+"</a></td>");
                            out.println("<td align=right>"+rsGetCapacityPort.getString("GROUNDSLOT")+"</td>");
                            out.println("<td align=right>"+rsGetCapacityPort.getString("MAXCAPACITY")+"</td>");
                            out.println("</tr>");
                            out.println("</table>");
                        }
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
    
   