<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="PUpload.*"%>
<%@page import="java.sql.*"%>

<%@ include file="inc/connect_db.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%!
    final int MAX_SIZE = 1024 * 1024 * 5;
    int Row = 0;
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="formKu.js"></script>
        <link rel="SHORTCUT ICON" href="images/spil.ico">
        <title><%=(String) session.getAttribute("title")%></title>
        <script language="JavaScript" src="js/date_picker.js"></script>
        <script language="JavaScript" src="js/jQuery/jquery-2.2.3.min.js"></script>
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

        function saveNew()
        {
            var noNewContainer, noOldContainer, cntNewTypeID, cntNewGradeID;
            noNewContainer = document.getElementById("noNewContainer").value;
            noOldContainer = document.getElementById("noOldContainer").value;
            cntNewGradeID = document.getElementById("cntNewGradeID").value;
            cntNewTypeID = document.getElementById("cntNewTypeID").value;
            
            var substring = document.getElementById("rekonCont").value;
            var arrrecond = substring.split(";");
            var idrecond = arrrecond[0];
            var idnewtype = arrrecond[1];
            
            if (noNewContainer=="" || cntNewTypeID== 0 || cntNewGradeID == 0)
            {
                alert("Harap semua kolom harus diisi terlebih dahulu !!!");
            }
            
            else
            {
                var url = "RekonContainerNew.jsp?save=yes&checkdigitOldCont=yes&checkdigitNewCont=yes&noOldContainer="+noOldContainer+"&noNewContainer="+noNewContainer+"&cntNewTypeID="+ cntNewTypeID +"&cntNewGradeID="+cntNewGradeID+"&showNewCont="+idrecond+"&newtypecont="+idnewtype;
                location.href=url;
            }
        }
        
        function checklength()
        {
            var noNewContainer = document.getElementById("noNewContainer").value;
            
            if (noNewContainer.length < 11 )
            {
                alert("Nomor Container Baru harus 11 Digit!!");

            }
        }
        
        function checkdigitOldCont()
        {
            var noOldContainer = document.getElementById("noOldContainer").value;
            
            if (noOldContainer.length <= 5)
            {
//                console.log("Nomor Old Container TIDAK SESUAI!!");
            }
            
            else
            {
                var url = "RekonContainerNew.jsp?checkdigitOldCont=yes&noOldContainer="+ noOldContainer;
                location.href=url;
            }
        }
        
        function checkdigitNewCont()
        {
            var noNewContainer = document.getElementById("noNewContainer").value;
            var noOldContainer = document.getElementById("noOldContainer").value;
            var substring = document.getElementById("rekonCont").value;
            var arrrecond = substring.split(";");
            var idrecond = arrrecond[0];
            var idnewtype = arrrecond[1];
            
            if (noNewContainer.length !=  11)
            {
//                console.log("Nomor Old Container TIDAK SESUAI!!");
            }
            else
            {
                var url = "RekonContainerNew.jsp?callAct=1&checkdigitOldCont=yes&noOldContainer="+ noOldContainer+"&showNewCont="+idrecond+"&newtypecont="+idnewtype+"&checkdigitNewCont=yes&noNewContainer="+noNewContainer;
                location.href=url;
            }
        }

        function clearAll()
        {
            var url = "RekonContainerNew.jsp?callAct=1";
            location.href=url;
        }
        
        function showNewCont(val)
        { 
            var noOldContainer = document.getElementById("noOldContainer").value;
            var substring = document.getElementById("rekonCont").value;
            var arrrecond = substring.split(";");
            var idrecond = arrrecond[0];
            var idnewtype = arrrecond[1];
            var idoldtype = arrrecond[2];
//            alert(idrecond + " | " + idnewtype);
            var url = "RekonContainerNew.jsp?callAct=1&checkdigitOldCont=yes&noOldContainer="+ noOldContainer+"&showNewCont="+idrecond+"&newtypecont="+idnewtype+"&oldtypecont="+idoldtype;
            location.href=url;
        }
     </script>

<%
Class.forName(driver);
Connection con = DriverManager.getConnection(url,user,password);

try{
    String username=(String) session.getAttribute("username");
    String port=(String) session.getAttribute("port");
    String callAct=request.getParameter("callAct");
    int countTemp=0;
    int countGetCont=0;
    int countGetCont2=0;

    if(username != null)
    {
        Statement staGetAllOldCont=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement staCekDigit=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement staListGrade=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement staRekonCont=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement staGetNoContOld=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement staGetNoContNew=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement staGetIdContCountOld=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        Statement staGetIdContNew=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs, rsCekDigit,rsList2, rsRekonCont, rsRekonCont2 , rsGetNoCont, rsGetNoCont2, rsGetIdCont, rsGetIdCont4,
                 rsGetAllOldCont;
        
        String judul="", noOldContainer="", noNewContainer="", cntOldTypeID="", lastDigit="", validDigit="", warningOld="", warningNew="", allowReason="N", allowRemark="N" , allowSaveRekon="N",allowChooseOld="N",allowChooseNew="N",allowInputNewCont="N", readonly="",
                vErrMsg="", rekonCont="",cntNewTypeID="";
        
        judul="RECONDITION CONTAINER";
        String remarkType = "CONT. TYPE";
        String remarkGrade = "GRADE";
        String remarkCY = "LOCATION";
        String remarkStatus = "STATUS";
        int TempCount = 0;
        
        if(request.getParameter("checkdigitOldCont") != null)
        {
            noOldContainer=request.getParameter("noOldContainer");
            
            rsGetNoCont = staGetNoContOld.executeQuery("select count(1) as countTemp2 from cic.containers where no_container = '"+noOldContainer+"' ");
            rsGetNoCont.first();
            countGetCont = rsGetNoCont.getInt("countTemp2");
            
                if(countGetCont > 0)
                {
                    allowReason="Y";
                    allowRemark = "Y";
                    allowChooseOld = "Y";
                }
                
                else
                {
                    warningOld ="Container lama tidak ditemukan!!";
                }
        }
        
        if(request.getParameter("checkdigitNewCont") != null)
        {
            noNewContainer=request.getParameter("noNewContainer");
            
            rsGetNoCont2 = staGetNoContNew.executeQuery("select count(1) as countTemp3 from cic.containers where no_container = '"+noNewContainer+"' ");
            rsGetNoCont2.first();
            countGetCont2 = rsGetNoCont2.getInt("countTemp3");
            
            if(countGetCont2 == 0)
            {
                rsCekDigit=staCekDigit.executeQuery("select substr(('"+noNewContainer+"'), length('"+noNewContainer+"') ) as lastDigit from dual");
                rsCekDigit.first();
                lastDigit=rsCekDigit.getString("lastDigit");

                rsCekDigit=staCekDigit.executeQuery("select genContainerNum( substr(('"+noNewContainer+"'), 0, length('"+noNewContainer+"')-1 )) as validDigit from dual");
                rsCekDigit.first();
                validDigit=rsCekDigit.getString("validDigit");
                
                if(lastDigit.equals(validDigit))
                {
                    allowReason="Y";
                    allowChooseOld = "Y";
                    allowInputNewCont = "Y";
                    allowSaveRekon = "Y";
                    allowChooseNew = "Y";
                }
                
                else
                {
                    warningNew ="Digit Nomor Container Baru Tidak Sesuai!!" ;
                }
            }
            
            else
            {
                warningNew ="Nomor Container Baru sudah ada di Sistem !!" ;
                allowReason="N";
                allowChooseNew = "N";
                allowChooseOld = "N";
            }
        }
        
        if(request.getParameter("showNewCont") != null)
        {
            allowInputNewCont = "Y";
            allowReason = "Y";
            allowRemark = "Y";
            allowChooseOld = "Y"; 
        }
        
        if(request.getParameter("save") != null)
        {
            CallableStatement cstmt;
            cstmt = con.prepareCall("call CIC.PR_RECOND_CONT(?,?,?,?,?,?,?,?)");
            cstmt.setString(1, "ADD" );
            cstmt.setString(2, request.getParameter("noOldContainer"));
            cstmt.setString(3, request.getParameter("noNewContainer"));
            cstmt.setString(4, request.getParameter("cntNewTypeID") );
            cstmt.setString(5, request.getParameter("cntNewGradeID") );
            cstmt.setString(6, request.getParameter("showNewCont"));
            cstmt.setString(7, username );
            cstmt.registerOutParameter(8, Types.VARCHAR);
            rs = cstmt.executeQuery();
            vErrMsg=cstmt.getString(8);
            rs.close();
            cstmt.close();
        }
                
        out.println("<tr>");
        out.println("<td><b><font color=Blue size=3>"+judul+"<b></font></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>");
        out.println("</tr>");
        
        out.println("<table>");
        
        if (allowRemark.equals("Y"))
        {
            out.println("<tr>");
            out.println("<td></td>");
            out.println("<td></td>");
            out.println("<td></td>");
            out.println("<td align=250 align=center>"+remarkType+"</td>");
            out.println("<td align=200 align=center>"+remarkGrade+"</td>");
            out.println("<td align=200 align=center>"+remarkCY+"</td>"); 
            out.println("<td align=200 align=center>"+remarkStatus+"</td>");
            out.println("</tr>");
        }
        
        out.println("<tr>");
        out.println("<td>OLD CONTAINER NO</td><td align=center>&nbsp;&nbsp;:&nbsp;&nbsp;</td>");
        out.println("<td><input type=\"text\" name=\"noOldContainer\" id=\"noOldContainer\" title=\"Klik diluar textbox atau tekan TAB untuk melanjutkan!!\" maxlength=11 size=15 onkeyup=\"javascript:this.value=this.value.toUpperCase()\" onblur=\"checkdigitOldCont()\" value='"+noOldContainer+"' \"></input></td>");
        out.println("<font color=red>"+warningOld+"</font>");
        //////////////////////////QUERY GET COUNT OLD CONT////////////////////////////////////////
        rsGetIdCont=staGetIdContCountOld.executeQuery("select count(1) as IdCont from containers c where no_container = '"+noOldContainer+"'");
        rsGetIdCont.first();

        TempCount = rsGetIdCont.getInt("IdCont");
        
        rsGetAllOldCont = staGetAllOldCont.executeQuery("select c.CONTAINERTYPEID as IdContOld, ct.CONTAINERTYPEID, ct.CONTAINERTYPE||' '||cp.ABBREVIATION|| ' ('||cp.PURPOSESSPECIFIC||')' as jenisCnt, "
                + "nvl(cg.CONTAINERGRADE, '-') as ContGrade_old, nvl(c.containergrade, '-') as ContGrade_master, "
                + "nvl(mst.PORTID || '-' || mst.cyname, 'UNKNOWN') as lastcy, "
                + "nvl(hs.state, 'MTA') as StatusCont "
                + "from containers c "
                + "left join containertypes ct on c.CONTAINERTYPEID = ct.CONTAINERTYPEID "
                + "left join containerpurposes cp on ct.CONTAINERPSID=cp.CONTAINERPSID "
                + "left join containergrade cg on c.CONTAINERGRADE = cg.CONTAINERGRADE "
                + "left join history_container_status hs on c.curr_historynum = hs.no_history "
                + "left join mastercy mst on mst.cyid = hs.CYID where c.no_container ='"+noOldContainer+"'");
        
        if (allowChooseOld.equals("Y"))
        {   
            if(TempCount > 0)
            {
                while(rsGetAllOldCont.next())
                {
                    if(rsGetAllOldCont.getString("IdContOld").equals(rsGetAllOldCont.getString("CONTAINERTYPEID")))
                    {   
                        cntOldTypeID = rsGetAllOldCont.getString("jenisCnt").substring(0,5);
                        out.println("<td><input type=text value='"+rsGetAllOldCont.getString("jenisCnt")+"' readonly=true name=cntOldTypeID id=cntOldTypeID style=\"width:178px\" >");  
                        out.println("</input></td>");
                    }
                    
                    if(rsGetAllOldCont.getString("ContGrade_old").equals(rsGetAllOldCont.getString("ContGrade_master")))
                    {   
                        out.println("<td><input type=text value='"+rsGetAllOldCont.getString("ContGrade_master")+"' readonly=true name=cntOldGradeID id=cntOldGradeID style=\"width:105px\">");   
                        out.println("</input>");
                        out.println("</td>");
                    }
                    
                    out.println("<td><input type=text value='"+rsGetAllOldCont.getString("lastcy")+"' readonly=true name=CyOldID id=CyOldID style=\"width:100px\"></input></td>");
                    out.println("<td><input type=text value='"+rsGetAllOldCont.getString("StatusCont")+"' readonly=true name=StatusOldCont id=StatusOldCont style=\"width:100px\"></input></td>");
                }
            }
        }
        out.println("</tr>");
        out.println("</table><br>");
            
        ////////////////////////////////////////////////////////////////////////////
//        out.println("<input type=button value=\"CHECK DIGIT\" onclick=\"checkdigit()\">");
//        out.println("<input type=button value=\"CLEAR\" onclick=\"clearAll()\"><br><br><br>");
        
        if(allowReason.equals("Y"))
        {
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>REASON&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td align=center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</td>");
            out.println("<td><select name=rekonCont id=rekonCont style=\"width:250px\" onchange=\"showNewCont(this);\">");
            out.println("<option value=0>---Pilih Reason Rekon. Cont.---</option>");
            
            rsRekonCont=staRekonCont.executeQuery("select reason as reasonRekon, reasonid as reasonRekonContId, OLD_CONT_TYPE,new_type_id from cic.CONTAINER_INACTIVE_REASON where OLD_CONT_TYPE = '"+cntOldTypeID+"' or OLD_CONT_TYPE IS NULL and RECONDITION = 1");
            
                while (rsRekonCont.next())
                {
                    String data = rsRekonCont.getString("reasonRekonContId") + ";" + rsRekonCont.getString("new_type_id")+ ";" +rsRekonCont.getString("OLD_CONT_TYPE");
                    
                    if(request.getParameter("showNewCont") != null && Integer.parseInt(request.getParameter("showNewCont")) == Integer.parseInt(rsRekonCont.getString("reasonRekonContId")))
                    {
                        if(cntOldTypeID.equals(request.getParameter("oldtypecont")))
                        {
                            if(rsRekonCont.getString("reasonRekonContId").equals(request.getParameter("showNewCont")))
                            {
                                out.println("<option value=" +data + " selected>" +rsRekonCont.getString("reasonRekon")+"</option><br>");                                                            
                            }
                        }
                        else
                        {
                            out.println("<option value="+data+" selected>" +rsRekonCont.getString("reasonRekon")+"</option>");                    
                        }
                    }
                    else
                    {
                        if(cntOldTypeID.equals(request.getParameter("oldtypecont")))
                        {
                            if(rsRekonCont.getString("reasonRekonContId").equals(request.getParameter("showNewCont")))
                            {
                                out.println("<option value="+data+" >" +rsRekonCont.getString("reasonRekon")+"</option><br>");                            
                            }
                        }
                        else
                        {
                            out.println("<option value="+data+">" +rsRekonCont.getString("reasonRekon")+"</option>");                            
                        }
                    }
                }
                
            out.println("</select></td>");
            out.println("</tr>");
            out.println("</table><br>");
        }
        
        if(allowInputNewCont.equals("Y"))
        {
            out.println("<table>");
            out.println("<tr>");
            out.println("<td>NEW CONTAINER NO</td><td align=center>&nbsp;:&nbsp;&nbsp;</td>");
            out.println("<td><input type=text name=noNewContainer id=noNewContainer maxlength=11 size=15 onkeyup=\"javascript:this.value=this.value.toUpperCase(); checkdigitNewCont()\" onblur=\"checklength();\" value='"+noNewContainer+"'></input></td>");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////

        if (allowChooseNew.equals("Y"))
        {   
            ////////////////////////////////QUERY REASON REKONDISI////////////////////////////////////////////////
            rsRekonCont2 = staRekonCont.executeQuery("select reason as reasonRekon, reasonid as reasonRekonContId, OLD_CONT_TYPE,new_type_id from cic.CONTAINER_INACTIVE_REASON where OLD_CONT_TYPE = '"+cntOldTypeID+"' or OLD_CONT_TYPE IS NULL and RECONDITION = 1");
            String idrecond = request.getParameter("showNewCont");
            String newtypecont = request.getParameter("newtypecont");
            
            /////////////////////QUERY JENIS CONT MODIFIKASI////////////////////////////////// 
            rsGetIdCont4=staGetIdContNew.executeQuery("select ct.CONTAINERTYPEID as IdCont3, ct.CONTAINERTYPE||' '||cp.ABBREVIATION|| ' ('||cp.PURPOSESSPECIFIC||')' as jenisCntNew "
                    + "from containertypes ct "
                    + "inner join containerpurposes cp on ct.CONTAINERPSID =cp.CONTAINERPSID "
                    + "where ct.CONTAINERTYPEID ="+newtypecont);
            
            rsList2=staListGrade.executeQuery("select containergrade as contgrade2 from cic.containergrade");
            ///////////////////////////////////////////////////////////////////////////////////////////
            
            while(rsRekonCont2.next())
            {
                if(newtypecont.equals("null"))
                {
                    out.println("<td><select name=cntNewTypeID id=cntNewTypeID style=\"width:175px\" readonly=true>");
                    rsGetAllOldCont.first();
                    out.println("<option value="+rsGetAllOldCont.getString("IdContOld")+" selected>"+rsGetAllOldCont.getString("jenisCnt")+"</option>");
                    out.println("</select>");
                    out.println("</td>");
                    
                    out.println("<td><select name=cntNewGradeID id=cntNewGradeID style=\"width:100px\" readonly=true>");
                    out.println("<option value=0>CONT. GRADE</option>");
                    rsGetAllOldCont.first();
                    out.println("<option value='"+rsGetAllOldCont.getString("ContGrade_master")+"'>"+rsGetAllOldCont.getString("ContGrade_master")+"</option>");
                    out.println("</select>");
                    out.println("</td>");
                    break;
                }
                
                else if(newtypecont.equals(rsRekonCont2.getString("new_type_id")))
                {
                    out.println("<td><select name=cntNewTypeID id=cntNewTypeID style=\"width:175px\" readonly=true>");
                    rsGetIdCont4.first();
                    out.println("<option value="+rsGetIdCont4.getString("IdCont3")+" selected>"+rsGetIdCont4.getString("jenisCntNew")+"</option>"); 
                    out.println("</select>");
                    out.println("</td>");
                    
                    out.println("<td><select name=cntNewGradeID id=cntNewGradeID style=\"width:100px\" readonly=true>");
//                    out.println("<option value=0>CONT. GRADE</option>");
                    
                    while(rsList2.next())
                    {
                        out.println("<option value='"+rsList2.getString("contgrade2")+"' selected>"+rsList2.getString("contgrade2")+"</option>");
                    }
                    
                    out.println("</select>");
                    out.println("</td>");
                }
            }
  
            /////////////////////////////////////////////////////////////////////////////////////////
            
            out.println("<td><input type=text value=- name=CyNewID id=CyNewID style=\"width:100px\" disabled >");

            out.println("</input>");
            out.println("</td>");
            
            /////////////////////////////////////////////////////////////////////////////////////////
            out.println("<td><input type=text value=- name=StatusNewCont id=StatusNewCont style=\"width:100px\" disabled >");

            out.println("</input>");
            out.println("</td>");
            out.println("<table><br>");
        }
        
        out.println("<table>");
        out.println("<tr>");
        out.println("<font color=red>"+warningNew+"<br></font>");
        out.println("<font color=red>"+vErrMsg+"<br></font>");
        out.println("</tr>");
        out.println("</table>");
        
        if(allowSaveRekon.equals("Y"))
        {
            out.println("<table>");
            out.println("<tr>");
            out.println("<input type=button value=\"SAVE\" onclick=\"saveNew()\">"); 
            out.println("</input>");
            out.println("</tr>");
            out.println("</table><br><br>");
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
</div></div>
    </body>
</html>

