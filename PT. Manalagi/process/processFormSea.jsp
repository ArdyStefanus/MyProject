<%@page import="java.sql.*"%>
    <%@page import="oracle.jdbc.driver.*;" %>
        <%@page import="oracle.sql.*;" %>
            <%@page import="oracle.jdbc.driver.OracleDriver;"%>
            
<%
    Connection conn = null;
    Statement st = null;
    PreparedStatement ps=null;
    ResultSet rs =null;
    
    String identitas = request.getParameter("id") == null ? "" : request.getParameter("id");
    String firstName = request.getParameter("1st") == null ? "" : request.getParameter("1st");
    String lastName = request.getParameter("2nd") == null ? "" : request.getParameter("2nd");
    String gender = request.getParameter("RGe") == null ? "" : request.getParameter("RGe");
    String birth_day = request.getParameter("birth") == null ? "" : request.getParameter("birth");
    String birth_place = request.getParameter("bP") == null ? "" : request.getParameter("bP");
    String etnis = request.getParameter("etnis") == null ? "" : request.getParameter("etnis");
    String religion = request.getParameter("religi") == null ? "" : request.getParameter("religi");
    String status = request.getParameter("sM") == null ? "" : request.getParameter("sM");
    String phone_number = request.getParameter("mP") == null ? "" : request.getParameter("mP");
    String email = request.getParameter("email") == null ? "" : request.getParameter("email");
    String npwp = request.getParameter("npwp") == null ? "" : request.getParameter("npwp");
    String citizen = request.getParameter("citizen") == null ? "" : request.getParameter("citizen");
    String identity_add = request.getParameter("iA") == null ? "" : request.getParameter("iA");
    String identity_city = request.getParameter("iC") == null ? "" : request.getParameter("iC");
    String current_add = request.getParameter("cA") == null ? "" : request.getParameter("cA");
    String current_city = request.getParameter("cC") == null ? "" : request.getParameter("cC");
    String workIn = request.getParameter("rW") == null ? "" : request.getParameter("rW");
    String travelling = request.getParameter("travel") == null ? "" : request.getParameter("travel");
    String mutation = request.getParameter("mutation") == null ? "" : request.getParameter("mutation");
    String file_photo = request.getParameter("fP") == null ? "" : request.getParameter("fP");
    String driver_licenseA = request.getParameter("dLA") == null ? "" : request.getParameter("dLA");
    String driver_licenseB = request.getParameter("dLB") == null ? "" : request.getParameter("dLB");
    String driver_licenseC = request.getParameter("dLC") == null ? "" : request.getParameter("dLC");
    String vehicle = request.getParameter("ve") == null ? "" : request.getParameter("ve");
    String height = request.getParameter("he") == null ? "" : request.getParameter("he");
    String weight = request.getParameter("we") == null ? "" : request.getParameter("we");
    String shoes = request.getParameter("sS") == null ? "" : request.getParameter("sS");
    String wearpack = request.getParameter("wPS") == null ? "" : request.getParameter("wPS");
    String shirt = request.getParameter("shirtS") == null ? "" : request.getParameter("shirtS");
    String bloodType = request.getParameter("bT") == null ? "" : request.getParameter("bT");
    String passpor_number = request.getParameter("pN") == null ? "" : request.getParameter("pN");
    String passporEx = request.getParameter("pE") == null ? "" : request.getParameter("pE");
    String sailor_number = request.getParameter("sN") == null ? "" : request.getParameter("sN");
    String sailorEx = request.getParameter("sE") == null ? "" : request.getParameter("sE");
    String med_numer = request.getParameter("mN") == null ? "" : request.getParameter("mN");
    String medEx = request.getParameter("mE") == null ? "" : request.getParameter("mE");
    String certi_comp_sea = request.getParameter("cCS") == null ? "" : request.getParameter("cCS");
    String certi_number = request.getParameter("cN") == null ? "" : request.getParameter("cN");
    String certi_issued = request.getParameter("cI") == null ? "" : request.getParameter("cI");
    String endors_number = request.getParameter("eN") == null ? "" : request.getParameter("eN");
    String endors_issued = request.getParameter("eI") == null ? "" : request.getParameter("eI");
    String lang_eng = request.getParameter("eL") == null ? "" : request.getParameter("eL");
    String lang_other = request.getParameter("oL") == null ? "" : request.getParameter("oL");
    String crit_history_rad = request.getParameter("rC") == null ? "" : request.getParameter("rC");
    String crit_history_desc = request.getParameter("cD") == null ? "" : request.getParameter("cD");
    String fam_exship_rad = request.getParameter("rFE") == null ? "" : request.getParameter("rFE");
    String fam_exship_desc = request.getParameter("fED") == null ? "" : request.getParameter("fED");
    String fam_pt_rad = request.getParameter("rFPT") == null ? "" : request.getParameter("rFPT");
    String fam_pt_desc = request.getParameter("fPD") == null ? "" : request.getParameter("fPD");
    String glasses = request.getParameter("rG") == null ? "" : request.getParameter("rG");
    String tattoo = request.getParameter("rT") == null ? "" : request.getParameter("rT");
    String quest1 = request.getParameter("q1") == null ? "" : request.getParameter("q1");
    String quest2 = request.getParameter("q2") == null ? "" : request.getParameter("q2");
    String quest3 = request.getParameter("q3") == null ? "" : request.getParameter("q3");

    try
    {
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=yes)(FAILOVER=on)" +
                                                    "(ADDRESS=(PROTOCOL=TCP)(HOST=rac4.spil.co.id)(PORT=1521))"+
                                                    "(CONNECT_DATA=(SERVICE_NAME=world)(FAILOVER_MODE=(TYPE=select)(METHOD=basic) (RETRIES=20)(DELAY=15) )"+
                                                    "))","AIOS","4i0s");
        st = con.createStatement();
        
        String sql = "INSERT INTO DB_MANALAGI_PERSONAL_DATA" +

        "(NO_ID_MANALAGI,NOMOR_IDENTITAS_MANALAGI,FIRST_NAME_MANALAGI,LAST_NAME_MANALAGI,GENDER_MANALAGI,BIRTH_DAY_MANALAGI,BIRTH_PLACE_MANALAGI,ETNIS_MANALAGI,RELIGION_MANALAGI,STATUS_MANALAGI,PHONE_NUMBER_MANALAGI,EMAIL_MANALAGI,NPWP_MANALAGI,CITIZEN_MANALAGI,IDENTITY_ADD_MANALAGI,IDENTITY_CITY_MANALAGI,CURRENT_ADD_MANALAGI,CURRENT_CITY_MANALAGI,WORK_IN_MANALAGI,TRAVELLING_MANALAGI,MUTATION_MANALAGI,FILE_PHOTO_MANALAGI,DRIVER_LICENSE_A,DRIVER_LICENSE_B,DRIVER_LICENSE_C,VEHICLE_MANALAGI,HEIGHT_MANALAGI,WEIGHT_MANALAGI,SHOES_SIZE_MANALAGI,WEARPACK_SIZE_MANALAGI,SHIRT_SIZE,BLOOD_TYPE_MANALAGI,PASSPOR_NUMER_MANALAGI,PASSPOR_EXPIRED_MANALAGI,SAILOR_NUMER_MANALAGI,SAILOR_EXPIRED_MANALAGI,MED_NUMER_MANALAGI,MED_EXPIRED_MANALAGI,CER_COMP_SEA_MANALAGI,CER_NUMBER_MANALAGI,CER_ISSUED_MANALAGI,ENDORS_NUMBER_MANALAGI,ENDORS_ISSUED_MANALAGI,ENGLISH_LANG_MANALAGI,OTHER_LANG_MANALAGI,CRI_HIS_RAD_MANALAGI,CRI_HIS_DESC_MANALAGI,FAM_EX_RAD_MANALAGI,FAM_EX_DESC_MANALAGI,FAM_PT_RAD_MANALAGI,FAM_PT_DESC_MANALAGI,GLASSES_MANALAGI,TATTOO_MANALAGI,QUESTION_PRO1_MANALAGI,QUESTION_PRO2_MANALAGI,QUESTION_PRO3_MANALAGI,CODE_MANALAGI)" +

        "VALUES (AIOS.NO_SEQ_MANALAGI.nextval,'"+identitas+"','"+firstName+"','"+lastName+"','"+gender+"','"+birth_day+"','"+birth_place+"','"+etnis+"','"+religion+"','"+status+"','"+phone_number+"','"+email+"','"+npwp+"','"+citizen+"','"+identity_add+"','"+identity_city+"','"+current_add+"','"+current_city+"','"+workIn+"','"+travelling+"','"+mutation+"','"+file_photo+"','"+driver_licenseA+"','"+driver_licenseB+"','"+driver_licenseC+"','"+vehicle+"','"+height+"','"+weight+"','"+shoes+"','"+wearpack+"','"+shirt+"','"+bloodType+"','"+passpor_number+"','"+passporEx+"','"+sailor_number+"','"+sailorEx+"','"+med_numer+"','"+medEx+"','"+certi_comp_sea+"','"+certi_number+"','"+certi_issued+"','"+endors_number+"','"+endors_issued+"','"+lang_eng+"','"+lang_other+"','"+crit_history_rad+"','"+crit_history_desc+"','"+fam_exship_rad+"','"+fam_exship_desc+"','"+fam_pt_rad+"','"+fam_pt_desc+"','"+glasses+"','"+tattoo+"','"+quest1+"','"+quest2+"','"+quest3+"','SEA')";

        st.executeUpdate(sql);
        
        out.println("Record Inserted Successfully");

    }

    catch(Exception e)
    {
        out.println("Exception : " + e.getMessage() + "");
        e.printStackTrace();
    }
%>