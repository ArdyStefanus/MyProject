<%@page import="java.sql.*"%>
    <%@page import="oracle.jdbc.driver.*;" %>
        <%@page import="oracle.sql.*;" %>
            <%@page import="oracle.jdbc.driver.OracleDriver;"%>
            <%@page import="java.sql.CallableStatement"%>
            
            
<%
    Connection conn = null;
    CallableStatement stmt = null;
 
    String email = request.getParameter("contact_email") == null ? "" : request.getParameter("contact_email");
    String subject = request.getParameter("contact_subject") == null ? "" : request.getParameter("contact_subject");
    String message = request.getParameter("contact_message") == null ? "" : request.getParameter("contact_message");

    try
    {
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=yes)(FAILOVER=on)" +
                                                    "(ADDRESS=(PROTOCOL=TCP)(HOST=rac4.spil.co.id)(PORT=1521))"+
                                                    "(CONNECT_DATA=(SERVICE_NAME=world)(FAILOVER_MODE=(TYPE=select)(METHOD=basic) (RETRIES=20)(DELAY=15) )"+
                                                    "))","AIOS","4i0s");
        
        stmt = con.prepareCall("{call SEND_EMAIL_MANALAGI(?,?,?,?)}");
        stmt.setString(1, email);
        stmt.setString(2, subject);
        stmt.setString(3, message);
        stmt.setString(4, "Report Success!");
        
        stmt.executeUpdate();
    }

    catch(Exception e)
    {
        out.println("Exception : " + e.getMessage() + "");
        e.printStackTrace();
    }
    
    
    String redirectURL = "index";
    response.sendRedirect(redirectURL);

%>