<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@page language="java"%>
<%@ page isELIgnored="false" %>
<%@page session="true" %>

<%@include file="header " %>

<!DOCTYPE html>
<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/form_apply_pro.css">
      
        <title>PT SALAM PACIFIC INDONESIA LINES</title>
        
    </head>
    
    <body>
        
         <nav class="navbar navbar-expand-lg navbar-light bg-white scrolling-navbar fixed-top z-depth-1" >
            <a href="index">
                <img src="slider/manalagi_icon.png"  width="100" height="50" class= "navbar-brand ">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <div id="nav_text" class="w-100">
                      <ul class="navbar-nav mr-auto ml-1 border-left">
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="index">HOME</a>
                          </li>
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="about">ABOUT</a>
                          </li>
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="services ">SERVICES</a>
                          </li>
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="news ">NEWS</a>
                          </li>
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="groups ">GROUPS</a>
                          </li>
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="careers ">CAREERS</a>
                          </li>
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="contact ">CONTACT</a>
                          </li>
                          <li class="nav-item mx-auto">
                              <a class="nav-link font-weight-bold"  href="fleet ">FLEET</a>
                          </li>
                      </ul>
                    </div>
                </div>  
        </nav>
        
        <div class="container" style="margin-top: 100px;">
            
            <a href="careers ">
                <div class="btn btn-outline-danger btn-rounded waves-effect btn-lg float-left">
                    <i class="fas fa-arrow-left"></i>
                    <span>Back</span>
                </div>
            </a>
            
            <br><br><br><br>
            
            <p style="letter-spacing: 2px; font-size: 24px; text-align: left; text-transform: uppercase;">
                <strong>
                    Seaman Opportunities Apply
                </strong>
            </p>
            
           <!-- Classic tabs -->
        <div class="classic-tabs">

          <ul class="nav tabs-red" id="myClassicTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link  waves-light active show" id="profile-tab-classic" data-toggle="tab" href="#profile-classic"
                role="tab" aria-controls="profile-classic" aria-selected="true">Personal Data</a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-light" id="follow-tab-classic" data-toggle="tab" href="#follow-classic" role="tab"
                aria-controls="follow-classic" aria-selected="false">Study / Job History</a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-light" id="contact-tab-classic" data-toggle="tab" href="#contact-classic" role="tab"
                aria-controls="contact-classic" aria-selected="false">Job Application</a>
            </li>
          </ul>
          <div class="tab-content border-right border-bottom border-left rounded-bottom" id="myClassicTabContent">
            
              <div class="tab-pane fade active show" id="profile-classic" role="tabpanel" aria-labelledby="profile-tab-classic">
                  
                  <form class="needs-validation container" method="POST" action="process/processFormSea ">
                      
                <div class="form-row">
                      
                <!-- Form apply kiri -->
                <div class="col-sm-6">
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label for="txt_identitynumber" class="col-sm-4 md-form">
                                <strong>
                                    Identity Number (KTP / PASPOR)
                                </strong>
                            </label>

                            <div class="col-md-8 md-form">                            
                                <input type="text" placeholder="Input Your ID (KTP / PASPOR)" name="id" required>
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label for="txt_name" class="col-sm-4 md-form">
                                <strong>
                                    Name
                                </strong>
                            </label>
                            
                            <div class="col-sm-4 md-form">                                
                                <input type="text" class="form-control" id="validationTooltip011" name="1st" placeholder="First Name" required>
                                
                            </div>

                            <div class="col-sm-4 md-form">                                
                                <input type="text" class="form-control" id="validationTooltip011" name="2nd" placeholder="Last Name"  required>
                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label for="rad_gender" class="col-sm-4 md-form">
                                <strong>
                                    Gender
                                </strong>
                            </label>
                            
                            <div class="form-check form-check-inline col-sm-2 md-form">
                                <input type="radio" class="form-check-input" id="rad_male" name="RGe" value="Male">
                              <label class="form-check-label" for="rad_male">Male</label>
                            </div>
                            
                            <div class="form-check form-check-inline col-sm-2 md-form">
                                <input type="radio" class="form-check-input" id="rad_female" name="RGe" value="Female">
                              <label class="form-check-label" for="rad_female">Female</label>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Birth Place
                                </strong>
                            </label>
                            
                            <select class="mdb-select md-form col-sm-4" searchable="Search here.." name="bP" required>
                                
                                <option value="0">-</option>
                                <option value="354">ABEPURA</option>
                                <option value="316">ACEH</option>
                                <option value="380">ADONARA</option>
                                <option value="358">ADUK</option>
                                <option value="524">AEK BULU</option>
                                <option value="412">ALAH AIR</option>
                                <option value="261">ALAS</option>
                                <option value="440">ALEXANDRIA</option>
                                <option value="106">AMBARAWA</option>
                                <option value="53">AMBON</option>
                                <option value="580">AMURANG</option>
                                <option value="516">ATAMBUA</option>
                                <option value="233">BABAT</option>
                                <option value="156">BADE</option>
                                <option value="372">BAH BUTONG</option>
                                <option value="190">BAJAWA</option>
                                <option value="141">BALI</option>
                                <option value="295">BALIGE</option>
                                <option value="24">BALIKPAPAN</option>
                                <option value="569">BANDAR JAYA</option>
                                <option value="508">BANDAR LAMPUNG</option>
                                <option value="167">BANDUNG</option>
                                <option value="158">BANGIL</option>
                                <option value="68">BANGKA</option>
                                <option value="28">BANGKALAN</option>
                                <option value="542">BANGKAO</option>
                                <option value="515">BANJAR</option>
                                <option value="180">BANJAR NEGARA</option>
                                <option value="119">BANJAR TIMUR</option>
                                <option value="102">BANJARBARU</option>
                                <option value="15">BANJARMASIN</option>
                                <option value="482">BANTAENG</option>
                                <option value="274">BANTEN</option>
                                <option value="212">BANTUL</option>
                                <option value="163">BANYUMAS</option>
                                <option value="20">BANYUWANGI</option>
                                <option value="94">BARABAI</option>
                                <option value="537">BARITO KUALA</option>
                                <option value="538">BARITO UTARA</option>
                                <option value="484">BARRU</option>
                                <option value="487">BARUS</option>
                                <option value="304">BATAM</option>
                                <option value="379">BATANG </option>
                                <option value="353">BATANG PAGAR</option>
                                <option value="187">BATU</option>
                                <option value="562">BATU AMPAR</option>
                                <option value="241">BATU LICIN</option>
                                <option value="285">BATUPUTE</option>
                                <option value="551">BATURAJA</option>
                                <option value="164">BAU-BAU</option>
                                <option value="529">BAWAHAN SELAN</option>
                                <option value="75">BEKASI</option>
                                <option value="11">BELAWAN</option>
                                <option value="575">BENGKALIS</option>
                                <option value="307">BENGKULU</option>
                                <option value="259">BERABAI</option>
                                <option value="283">BERAU</option>
                                <option value="497">BERLIN</option>
                                <option value="95">BIAK</option>
                                <option value="428">BILORO</option>
                                <option value="227">BIMA</option>
                                <option value="272">BIMA-NTB</option>
                                <option value="323">BINJAI</option>
                                <option value="601">BINTUNI</option>
                                <option value="240">BITUNG</option>
                                <option value="311">BLANKAHAN</option>
                                <option value="34">BLITAR</option>
                                <option value="91">BLORA</option>
                                <option value="81">BOGOR</option>
                                <option value="143">BOJONEGORO</option>
                                <option value="223">BOJONG SARI</option>
                                <option value="104">BONDOWOSO</option>
                                <option value="4">BONE</option>
                                <option value="501">BONTANG</option>
                                <option value="574">BOTTOPADANG</option>
                                <option value="131">BOYOLALI</option>
                                <option value="269">BREBES</option>
                                <option value="469">BUJANGGA</option>
                                <option value="179">BUKIT TINGGI</option>
                                <option value="605">BULELENG</option>
                                <option value="510">BULU JAYA</option>
                                <option value="159">BULUKUMBA</option>
                                <option value="82">BUTON</option>
                                <option value="182">BUTON KAPOTA</option>
                                <option value="450">CANCAR</option>
                                <option value="600">CARRION DE CALATRAVA (CIUDAD REAL)</option>
                                <option value="215">CEPU</option>
                                <option value="550">CHINA</option>
                                <option value="445">CHINA</option>
                                <option value="26">CIAMIS</option>
                                <option value="229">CIANJUR</option>
                                <option value="198">CIBINONG</option>
                                <option value="277">CILACAP</option>
                                <option value="100">CILINCING</option>
                                <option value="79">CIMAHI</option>
                                <option value="70">CIPUTAT</option>
                                <option value="174">CIREBON</option>
                                <option value="592">CUPAK</option>
                                <option value="503">DALMIA NAGAR</option>
                                <option value="506">DARIT</option>
                                <option value="499">DASAN GERIA</option>
                                <option value="140">DAUH PALA</option>
                                <option value="13">DELI SERDANG</option>
                                <option value="433">DEMAK</option>
                                <option value="400">DENPASAR</option>
                                <option value="135">DEPOK</option>
                                <option value="491">DESA PERTAPAAN</option>
                                <option value="512">DILI</option>
                                <option value="495">DOBO</option>
                                <option value="467">DOLOK SAGALA</option>
                                <option value="586">DOLOK SARIBU</option>
                                <option value="169">DONGALA</option>
                                <option value="108">DONGGALA</option>
                                <option value="381">DOOM</option>
                                <option value="318">DUMAI</option>
                                <option value="33">DUMAN</option>
                                <option value="165">EMPAGAE</option>
                                <option value="116">ENDE</option>
                                <option value="204">ENDE FLORES</option>
                                <option value="446">FAEKHU</option>
                                <option value="405">FAK - FAK</option>
                                <option value="530">FALABISAHAYA</option>
                                <option value="154">FLORES TIMUR</option>
                                <option value="494">GADA</option>
                                <option value="376">GANTARAN</option>
                                <option value="437">GARINGGING</option>
                                <option value="199">GARUT</option>
                                <option value="57">GEDANGAN</option>
                                <option value="185">GELUMBANG</option>
                                <option value="435">GENTUMA</option>
                                <option value="539">GENTUNGANG</option>
                                <option value="391">GIANYAR</option>
                                <option value="214">GN. MALANG</option>
                                <option value="284">GOMBONG</option>
                                <option value="582">GORONTALO</option>
                                <option value="422">GOWA</option>
                                <option value="25">GRESIK</option>
                                <option value="194">GROBOGAN</option>
                                <option value="375">GROBONGAN</option>
                                <option value="171">GROGOL</option>
                                <option value="443">GUANDONG</option>
                                <option value="483">GUNUNG KIDUL</option>
                                <option value="321">GUNUNG SITOLI</option>
                                <option value="294">HARIANBOHO</option>
                                <option value="549">HEDENSTED</option>
                                <option value="80">HELVETIA</option>
                                <option value="465">HILIWETO</option>
                                <option value="188">HUTA KOJE</option>
                                <option value="599">HUTAGODANG</option>
                                <option value="547">IHAMAHU</option>
                                <option value="423">INDIA</option>
                                <option value="66">INDRAMAYU</option>
                                <option value="8">JAKARTA</option>
                                <option value="221">JAKARTA TIMUR</option>
                                <option value="552">JAKARTA BARAT</option>
                                <option value="226">JAKARTA PUSAT</option>
                                <option value="107">JAKARTA SELATAN</option>
                                <option value="152">JAKARTA TIMUR</option>
                                <option value="31">JAKARTA UTARA</option>
                                <option value="64">JAMBI</option>
                                <option value="488">JANEPONTO</option>
                                <option value="343">JAWA</option>
                                <option value="378">JAWA </option>
                                <option value="90">JAWA TENGAH</option>
                                <option value="10">JAYAPURA</option>
                                <option value="60">JEMBER</option>
                                <option value="49">JEPARA</option>
                                <option value="456">JERMAN</option>
                                <option value="2">JOMBANG</option>
                                <option value="201">K. ANYAR</option>
                                <option value="397">KABAN JAHE</option>
                                <option value="266">KABANJAHE</option>
                                <option value="543">KABUNGKA</option>
                                <option value="417">KAIMANA</option>
                                <option value="504">KALABAHI</option>
                                <option value="553">KALAULI</option>
                                <option value="496">KALIAKAH</option>
                                <option value="282">KALIDERES</option>
                                <option value="153">KAMAL</option>
                                <option value="534">KAMPUNG BARU</option>
                                <option value="298">KANDANGAN</option>
                                <option value="150">KANDOA</option>
                                <option value="489">KARANGANYAR</option>
                                <option value="205">KARAWANG</option>
                                <option value="579">KARIMUN</option>
                                <option value="265">KARO</option>
                                <option value="415">KASONGAN </option>
                                <option value="454">KATINGAN</option>
                                <option value="466">KAWALIWU</option>
                                <option value="77">KEBUMEN</option>
                                <option value="365">KEDAI DURIAN</option>
                                <option value="22">KEDIRI</option>
                                <option value="220">KEDIRI/ MALANG</option>
                                <option value="248">KEDU</option>
                                <option value="409">KELUA</option>
                                <option value="211">KENDAL</option>
                                <option value="86">KENDARI</option>
                                <option value="385">KEPULAUAN RIAU</option>
                                <option value="206">KERTOSONO</option>
                                <option value="235">KIMAAM</option>
                                <option value="373">KISARAN</option>
                                <option value="69">KLATEN</option>
                                <option value="518">KLUNGKUNG</option>
                                <option value="267">KOLONDALE</option>
                                <option value="62">KOLONODALE</option>
                                <option value="526">KONAWE SELATAN</option>
                                <option value="273">KORE SANGGAR</option>
                                <option value="103">KOTA BARU</option>
                                <option value="287">KOTABARU</option>
                                <option value="474">KOTAWARINGIN BARAT</option>
                                <option value="478">KRADENAN</option>
                                <option value="41">KRAWANG</option>
                                <option value="193">KRIAN</option>
                                <option value="296">KUALA KAPUAS</option>
                                <option value="604">KUBU RAYA</option>
                                <option value="200">KUDUS</option>
                                <option value="175">KULON PROGO</option>
                                <option value="246">KULONPROGO</option>
                                <option value="473">KUMAI</option>
                                <option value="74">KUNINGAN</option>
                                <option value="191">KUPANG</option>
                                <option value="374">KURIK</option>
                                <option value="173">KUTOARJO</option>
                                <option value="315">L. BARU</option>
                                <option value="528">LAAR</option>
                                <option value="395">LABUHAN BATU</option>
                                <option value="359">LABUHAN DELI</option>
                                <option value="145">LABUNTI</option>
                                <option value="317">LAHAT</option>
                                <option value="203">LAHEMA</option>
                                <option value="189">LAINUNGAN</option>
                                <option value="244">LAMBAN SINAGA</option>
                                <option value="213">LAMENA</option>
                                <option value="7">LAMONGAN</option>
                                <option value="127">LAMPUNG</option>
                                <option value="341">LANGGUR</option>
                                <option value="464">LANGOWAN</option>
                                <option value="348">LANTO</option>
                                <option value="406">LARAT</option>
                                <option value="157">LASEM</option>
                                <option value="271">LAWANG</option>
                                <option value="502">LEBAK</option>
                                <option value="485">LEKOSULA</option>
                                <option value="234">LELOBOKO</option>
                                <option value="389">LEMBATA</option>
                                <option value="242">LIANG ANGGANG</option>
                                <option value="342">LIMA PULUH</option>
                                <option value="527">LIMBOTO</option>
                                <option value="178">LOA BAKUNG</option>
                                <option value="346">LOA JANAN</option>
                                <option value="459">LOMBOK BARAT</option>
                                <option value="449">LOMBOK TIMUR</option>
                                <option value="208">LONG IRAM</option>
                                <option value="419">LUBUK LINGGAU</option>
                                <option value="588">LUBUK PAKAM</option>
                                <option value="55">LUMAJANG</option>
                                <option value="472">LUMBAN GAMBIRI</option>
                                <option value="300">LUMBAN PINASA</option>
                                <option value="332">LUWUK</option>
                                <option value="83">MADIUN</option>
                                <option value="123">MADURA</option>
                                <option value="112">MAGELANG</option>
                                <option value="44">MAGETAN</option>
                                <option value="442">MAHENDRAGARH</option>
                                <option value="172">MAJALENGKA</option>
                                <option value="486">MAJENE</option>
                                <option value="197">MAKALE</option>
                                <option value="105">MAKASAR</option>
                                <option value="181">MAKASSAR</option>
                                <option value="479">MALAGINNA</option>
                                <option value="355">MALAKAJI</option>
                                <option value="27">MALANG</option>
                                <option value="155">MALANG (BATU)</option>
                                <option value="573">MALAYSIA</option>
                                <option value="177">MALIMPUNG</option>
                                <option value="429">MALUKU</option>
                                <option value="18">MANADO</option>
                                <option value="468">MANDEHE</option>
                                <option value="310">MANDOGE</option>
                                <option value="347">MANGGARAI</option>
                                <option value="411">MANGON</option>
                                <option value="65">MANJOPAI</option>
                                <option value="48">MANOKWARI</option>
                                <option value="239">MANUKWARI</option>
                                <option value="217">MARELAN</option>
                                <option value="587">MARIHAT BUTAR I</option>
                                <option value="258">MARINDING</option>
                                <option value="17">MAROS</option>
                                <option value="236">MARTAPURA</option>
                                <option value="591">MASOHI</option>
                                <option value="121">MATANGTERAP</option>
                                <option value="314">MATAPAU</option>
                                <option value="238">MATARAM</option>
                                <option value="63">MAUMERE</option>
                                <option value="71">MEDAN</option>
                                <option value="533">MELBOURNE</option>
                                <option value="232">MENADO</option>
                                <option value="16">MERAUKE</option>
                                <option value="128">METRO</option>
                                <option value="254">MINAHASA</option>
                                <option value="130">MOJOAGUNG</option>
                                <option value="9">MOJOKERTO</option>
                                <option value="507">MORO BETUNG</option>
                                <option value="576">MOROWALI</option>
                                <option value="366">MUARA</option>
                                <option value="420">MUARA BADAK</option>
                                <option value="595">MUARA ENIM</option>
                                <option value="329">MUARA UFU</option>
                                <option value="371">MUARA UPU</option>
                                <option value="264">MURUNG PUDAK</option>
                                <option value="278">NABIRE</option>
                                <option value="101">NAGOYOR</option>
                                <option value="490">NAMLEA</option>
                                <option value="447">NAWARIPI</option>
                                <option value="519">NEIRA</option>
                                <option value="52">NGANJUK</option>
                                <option value="210">NGAWI</option>
                                <option value="320">NIAS</option>
                                <option value="453">NIAS UTARA</option>
                                <option value="32">NTB</option>
                                <option value="521">NTT</option>
                                <option value="110">NUNUKAN</option>
                                <option value="532">OGOTUA</option>
                                <option value="362">P. BRANDAN</option>
                                <option value="399">P. SIMA LINGKAI</option>
                                <option value="225">P.SIANTAR</option>
                                <option value="97">PACITAN</option>
                                <option value="43">PADANG</option>
                                <option value="319">PADANG LARU</option>
                                <option value="147">PADANG PARIAMAN</option>
                                <option value="51">PADANG SIDEMPUA</option>
                                <option value="14">PADANG SIDEMPUAN</option>
                                <option value="585">PAGAR ALAM</option>
                                <option value="593">PAGUAT</option>
                                <option value="536">PAHANG</option>
                                <option value="410">PAKKAT</option>
                                <option value="357">PALANGGA TAKALAR</option>
                                <option value="184">PALANGKARAYA</option>
                                <option value="281">PALAS</option>
                                <option value="96">PALEMBANG</option>
                                <option value="146">PALMERIAM</option>
                                <option value="303">PALOPO</option>
                                <option value="134">PALU</option>
                                <option value="126">PAMEKASAN</option>
                                <option value="275">PANDEGLANG</option>
                                <option value="340">PANGBOMAN</option>
                                <option value="251">PANGKAL PINANG</option>
                                <option value="565">PANGKALAN BUN</option>
                                <option value="567">PANGKALAN BUN</option>
                                <option value="564">PANGKALAN BUN</option>
                                <option value="93">PANGKEP</option>
                                <option value="324">PAPANDE</option>
                                <option value="237">PAPAR KEDIRI</option>
                                <option value="61">PAPUA</option>
                                <option value="339">PARAPAT</option>
                                <option value="541">PARE-PARE</option>
                                <option value="120">PARIDAN</option>
                                <option value="286">PASA'BU</option>
                                <option value="42">PASANGKAYU</option>
                                <option value="115">PASURUAN</option>
                                <option value="441">PATHEN</option>
                                <option value="176">PATI</option>
                                <option value="492">PAYAHE</option>
                                <option value="292">PEKALONGAN</option>
                                <option value="325">PEKANBARU</option>
                                <option value="511">PEKKABATA</option>
                                <option value="162">PEMALANG</option>
                                <option value="548">PEMANGKAT</option>
                                <option value="439">PEMATANG SAPAT</option>
                                <option value="260">PEMATANG SIANTA</option>
                                <option value="118">PEMATANG SIANTAR</option>
                                <option value="546">PEMBASEAN</option>
                                <option value="480">PENAJAM PASER UTARA</option>
                                <option value="584">PENDOPO</option>
                                <option value="563">PERAK</option>
                                <option value="438">PINANG HABANG</option>
                                <option value="228">PINRANG</option>
                                <option value="263">POGATAN</option>
                                <option value="12">POLEWALI</option>
                                <option value="594">POLORAJA</option>
                                <option value="330">POMALAA</option>
                                <option value="560">PONDING</option>
                                <option value="531">PONGKO</option>
                                <option value="148">PONOROGO</option>
                                <option value="561">PONSUSUNO</option>
                                <option value="170">PONTIANAK</option>
                                <option value="114">PORONG</option>
                                <option value="309">PORSEA</option>
                                <option value="535">PORTO</option>
                                <option value="35">POSO</option>
                                <option value="56">PROBOLINGGO</option>
                                <option value="279">PULAU TENGAH</option>
                                <option value="382">PULIO</option>
                                <option value="322">PULO HOPUR</option>
                                <option value="109">PURBALINGGA</option>
                                <option value="477">PURWAKARTA</option>
                                <option value="525">PURWODADI</option>
                                <option value="224">PURWOKERTO</option>
                                <option value="88">PURWOREJO</option>
                                <option value="421">RAINIS</option>
                                <option value="302">RAJANI HUTA</option>
                                <option value="360">RAJATONGAH</option>
                                <option value="386">RANTAU PANJANG</option>
                                <option value="252">RANTAU PRAPAT</option>
                                <option value="356">RANTEPAO</option>
                                <option value="392">RANTEPO</option>
                                <option value="461">RAWASELAPAN</option>
                                <option value="398">RAYA BAYU</option>
                                <option value="394">REDONG</option>
                                <option value="458">REJANG LEBONG</option>
                                <option value="256">REMBANG</option>
                                <option value="368">RENGAS PULAU</option>
                                <option value="475">RENGAT</option>
                                <option value="137">REPA</option>
                                <option value="306">RIAU</option>
                                <option value="76">RIHNINGGOL</option>
                                <option value="160">RK.BITUNG</option>
                                <option value="297">RONTA</option>
                                <option value="522">RUMBAI</option>
                                <option value="589">RUMEON</option>
                                <option value="243">RUTENG</option>
                                <option value="361">S. BUAH</option>
                                <option value="222">SABU</option>
                                <option value="132">SABUNGAN JAE</option>
                                <option value="253">SALATIGA</option>
                                <option value="21">SAMARINDA</option>
                                <option value="498">SAMBER</option>
                                <option value="388">SAMBOJA</option>
                                <option value="338">SAMOSIR</option>
                                <option value="39">SAMPANG</option>
                                <option value="299">SAMPIT</option>
                                <option value="250">SANARINDA</option>
                                <option value="219">SANGA-SANGA KAL</option>
                                <option value="45">SANGAI</option>
                                <option value="334">SANGGAU</option>
                                <option value="390">SANGIHE TALAID</option>
                                <option value="544">SAPARUA</option>
                                <option value="335">SAROLANGON</option>
                                <option value="517">SARULLA</option>
                                <option value="117">SASARI</option>
                                <option value="598">SAUMLAKI</option>
                                <option value="558">SAWAI</option>
                                <option value="328">SAWIT REJO</option>
                                <option value="370">SAWITREJO</option>
                                <option value="142">SEBULU</option>
                                <option value="72">SEI BEJANGKAR</option>
                                <option value="268">SEI SERIMAH</option>
                                <option value="572">SELANGOR</option>
                                <option value="430">SELAT PANJANG</option>
                                <option value="85">SEMARANG</option>
                                <option value="168">SEMPAJA</option>
                                <option value="470">SEMUJUR</option>
                                <option value="124">SENTANI</option>
                                <option value="597">SERAN</option>
                                <option value="245">SERANG</option>
                                <option value="416">SERITI</option>
                                <option value="98">SERUI</option>
                                <option value="432">SIABAL - ABAL</option>
                                <option value="312">SIALANG BUAH</option>
                                <option value="136">SIBOLGA</option>
                                <option value="418">SIDIKALANG</option>
                                <option value="301">SIDINGKAT</option>
                                <option value="5">SIDOARJO</option>
                                <option value="513">SIDOPO</option>
                                <option value="581">SIDOREJO</option>
                                <option value="151">SIGALAGALA</option>
                                <option value="293">SIMALUNGUN</option>
                                <option value="603">SIMANGAMBAT</option>
                                <option value="305">SIMANGUMBAN</option>
                                <option value="249">SIMPANG EMPAT</option>
                                <option value="444">SINGAPORE</option>
                                <option value="431">SINGAPURA</option>
                                <option value="377">SINGARAJA</option>
                                <option value="426">SINGKAWANG</option>
                                <option value="270">SINGOSARI</option>
                                <option value="186">SINJAI</option>
                                <option value="568">SIPOLHA</option>
                                <option value="230">SIRI SORI ISLAM</option>
                                <option value="434">SISARAHILI</option>
                                <option value="452">SISARAHILI</option>
                                <option value="363">SITABOTABO</option>
                                <option value="54">SITUBONDO</option>
                                <option value="451">SIWALUBANUA</option>
                                <option value="291">SLEMAN</option>
                                <option value="545">SOAHUKU</option>
                                <option value="596">SOE</option>
                                <option value="364">SOHOR LAMA</option>
                                <option value="247">SOLO</option>
                                <option value="36">SORONG</option>
                                <option value="481">SOSOR PANDIANGAN.</option>
                                <option value="207">SRAGEN</option>
                                <option value="47">SRIBAWONO</option>
                                <option value="331">STABAT</option>
                                <option value="257">STAGEN</option>
                                <option value="202">SUARABAYA</option>
                                <option value="280">SUBANG</option>
                                <option value="455">SUBUR INDAH</option>
                                <option value="78">SUKABUMI</option>
                                <option value="161">SUKOHARJO</option>
                                <option value="111">SUKOLILO</option>
                                <option value="149">SULAWESI</option>
                                <option value="408">SUMEDANG </option>
                                <option value="29">SUMENEP</option>
                                <option value="183">SUMUT</option>
                                <option value="333">SUNGAI PENJURU</option>
                                <option value="462">SUNGAI RAWA</option>
                                <option value="129">SUNGAI ULIN</option>
                                <option value="387">SUNGAILIAT</option>
                                <option value="1">SURABAYA</option>
                                <option value="255">SURABYA</option>
                                <option value="133">SURAKARTA</option>
                                <option value="413">SURINAME</option>
                                <option value="139">TABANAN BALI</option>
                                <option value="38">TAHUNA</option>
                                <option value="509">TAKALAR</option>
                                <option value="401">TALAWID</option>
                                <option value="288">TAMBAN</option>
                                <option value="367">TAMBANG-24</option>
                                <option value="402">TANAH BUMBU</option>
                                <option value="195">TANGERANG</option>
                                <option value="67">TANJUNG</option>
                                <option value="471">TANJUNG BALAI</option>
                                <option value="578">TANJUNG BALAI KARIMUN</option>
                                <option value="448">TANJUNG BARUS</option>
                                <option value="414">TANJUNG ENIM</option>
                                <option value="326">TANJUNG GADING</option>
                                <option value="436">TANJUNG KEMUNING</option>
                                <option value="369">TANJUNG MULIA</option>
                                <option value="583">TANJUNG PANDAN</option>
                                <option value="113">TANJUNG PINANG</option>
                                <option value="99">TANJUNG PRIOK</option>
                                <option value="407">TANJUNG REDEP</option>
                                <option value="577">TANJUNG SERI</option>
                                <option value="463">TANJUNG UBAN</option>
                                <option value="138">TAPANULI</option>
                                <option value="3">TARAKAN</option>
                                <option value="73">TARAKAN BARAT</option>
                                <option value="216">TARAKAN TENGAH</option>
                                <option value="218">TARUNTUNG</option>
                                <option value="352">TARUTUNG</option>
                                <option value="23">TASIKMALAYA</option>
                                <option value="457">TAWAU</option>
                                <option value="384">TB PENANJUNG</option>
                                <option value="327">TEBING TINGGI</option>
                                <option value="144">TEGAL</option>
                                <option value="30">TEKE</option>
                                <option value="196">TELUK BETUNG</option>
                                <option value="460">TELUK SULAIMAN</option>
                                <option value="523">TEMANGGUNG</option>
                                <option value="50">TEMBUNG</option>
                                <option value="590">TEPA</option>
                                <option value="290">TERNATE</option>
                                <option value="383">TEROS</option>
                                <option value="313">TG. BERINGIN</option>
                                <option value="262">TG. PANDAN</option>
                                <option value="308">TIMIKA</option>
                                <option value="122">TIMOR</option>
                                <option value="209">TJ PINANG RIAU</option>
                                <option value="540">TOLAI</option>
                                <option value="559">TOMALEHU</option>
                                <option value="520">TOMANGGONG</option>
                                <option value="37">TONDANO</option>
                                <option value="231">TORAJA</option>
                                <option value="19">TRENGGALEK</option>
                                <option value="125">TUAL</option>
                                <option value="84">TUBAN</option>
                                <option value="58">TULUNGAGUNG</option>
                                <option value="276">TUNGKARAN PANGERAN</option>
                                <option value="40">UJUNG PANDANG</option>
                                <option value="500">ULEE GAJAH</option>
                                <option value="166">WAINGAPU</option>
                                <option value="393">WAINGAPU SUMBA TIMUR</option>
                                <option value="602">WAMENA</option>
                                <option value="403">WANCI</option>
                                <option value="493">WAO LANAO DS</option>
                                <option value="89">WARU- SIDOARJO</option>
                                <option value="46">WATUMEA</option>
                                <option value="289">WAYGALIH</option>
                                <option value="92">WONOGIRI</option>
                                <option value="192">WONOSOBO</option>
                                <option value="59">YOGYAKARTA</option>
                            </select>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Birth Date
                                </strong>
                                
                            </label>
                            
                            <div class="md-form col-sm-4">
                                <input placeholder="Choose your birth date..." type="text" class="datepicker" name="birth" required>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Etnis / Tribe
                                </strong>
                                
                            </label>
                            
                            <div class="col-sm-4 md-form">                                
                                <input type="text" class="form-control" id="etnis" name="etnis" placeholder="Tribe">
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Religion
                                </strong>
                                
                            </label>
                            
                            <select class="mdb-select md-form col-sm-4" name="religi" required>
                                <option value="-" disabled="">-</option>
                                <option value="Islam">ISLAM</option>
                                <option value="katholik">KATHOLIK</option>
                                <option value="Kristen">KRISTEN</option>
                                <option value="Hindu">HINDU</option>
                                <option value="Budha">BUDHA</option>
                                <option value="Konghucu">KONG HU CU</option>

                            </select>
                               
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Marital status
                                </strong>
                                
                            </label>
                            
                            <select class="mdb-select md-form col-sm-4" name="status" required>
                                <option value="-" disabled="-">-</option>
                                <option value="Single">SINGLE</option>
                                <option value="Married">MARRIED</option>
                                <option value="Widower">WIDOWER</option>
                                <option value="Widow">WIDOW</option>
                                
                            </select>
                               
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>Mobile Number</strong>
                                
                            </label>
                            
                            <div class="md-form col-sm-4">
                                <input type="text" placeholder="Mobile Number" name="mP" required>
                            </div>
                                
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>Email</strong>
                                
                            </label>
                            
                            <div class="md-form col-sm-4">
                                <input type="email" placeholder="Email" name="email" class="validate" required>
                            </div>
                                
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    NPWP
                                </strong>
                                
                            </label>
                            
                            <div class="md-form col-sm-4 ">
                                <input type="text" placeholder="xx.xxx.xxxx.x-xxx.xxx" name="npwp">
                            </div>
                                
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Citizen
                                </strong>
                                
                            </label>
                            
                            <select class="mdb-select md-form col-sm-4" name="citizen" required>
                                <option value="-" disabled="-">-</option>
                                <option value="WNI">WNI</option>
                                <option value="WNA">WNA</option>
                                                              
                            </select>
                               
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Identity Address
                                </strong>
                                
                            </label>
                            
                            <div class="green-border-focus col-sm-6">                                
                                <textarea class="md-form" id="exampleFormControlTextarea5" rows="3" placeholder="Identity Address" name="iA" required></textarea>
                            </div>
                    
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Identity City
                                </strong>
                            </label>
                            
                            <select class="mdb-select md-form col-sm-4" searchable="Search here.." name="iC" required>
                                
                                <option value="0">-</option>
                                <option value="354">ABEPURA</option>
                                <option value="316">ACEH</option>
                                <option value="380">ADONARA</option>
                                <option value="358">ADUK</option>
                                <option value="524">AEK BULU</option>
                                <option value="412">ALAH AIR</option>
                                <option value="261">ALAS</option>
                                <option value="440">ALEXANDRIA</option>
                                <option value="106">AMBARAWA</option>
                                <option value="53">AMBON</option>
                                <option value="580">AMURANG</option>
                                <option value="516">ATAMBUA</option>
                                <option value="233">BABAT</option>
                                <option value="156">BADE</option>
                                <option value="372">BAH BUTONG</option>
                                <option value="190">BAJAWA</option>
                                <option value="141">BALI</option>
                                <option value="295">BALIGE</option>
                                <option value="24">BALIKPAPAN</option>
                                <option value="569">BANDAR JAYA</option>
                                <option value="508">BANDAR LAMPUNG</option>
                                <option value="167">BANDUNG</option>
                                <option value="158">BANGIL</option>
                                <option value="68">BANGKA</option>
                                <option value="28">BANGKALAN</option>
                                <option value="542">BANGKAO</option>
                                <option value="515">BANJAR</option>
                                <option value="180">BANJAR NEGARA</option>
                                <option value="119">BANJAR TIMUR</option>
                                <option value="102">BANJARBARU</option>
                                <option value="15">BANJARMASIN</option>
                                <option value="482">BANTAENG</option>
                                <option value="274">BANTEN</option>
                                <option value="212">BANTUL</option>
                                <option value="163">BANYUMAS</option>
                                <option value="20">BANYUWANGI</option>
                                <option value="94">BARABAI</option>
                                <option value="537">BARITO KUALA</option>
                                <option value="538">BARITO UTARA</option>
                                <option value="484">BARRU</option>
                                <option value="487">BARUS</option>
                                <option value="304">BATAM</option>
                                <option value="379">BATANG </option>
                                <option value="353">BATANG PAGAR</option>
                                <option value="187">BATU</option>
                                <option value="562">BATU AMPAR</option>
                                <option value="241">BATU LICIN</option>
                                <option value="285">BATUPUTE</option>
                                <option value="551">BATURAJA</option>
                                <option value="164">BAU-BAU</option>
                                <option value="529">BAWAHAN SELAN</option>
                                <option value="75">BEKASI</option>
                                <option value="11">BELAWAN</option>
                                <option value="575">BENGKALIS</option>
                                <option value="307">BENGKULU</option>
                                <option value="259">BERABAI</option>
                                <option value="283">BERAU</option>
                                <option value="497">BERLIN</option>
                                <option value="95">BIAK</option>
                                <option value="428">BILORO</option>
                                <option value="227">BIMA</option>
                                <option value="272">BIMA-NTB</option>
                                <option value="323">BINJAI</option>
                                <option value="601">BINTUNI</option>
                                <option value="240">BITUNG</option>
                                <option value="311">BLANKAHAN</option>
                                <option value="34">BLITAR</option>
                                <option value="91">BLORA</option>
                                <option value="81">BOGOR</option>
                                <option value="143">BOJONEGORO</option>
                                <option value="223">BOJONG SARI</option>
                                <option value="104">BONDOWOSO</option>
                                <option value="4">BONE</option>
                                <option value="501">BONTANG</option>
                                <option value="574">BOTTOPADANG</option>
                                <option value="131">BOYOLALI</option>
                                <option value="269">BREBES</option>
                                <option value="469">BUJANGGA</option>
                                <option value="179">BUKIT TINGGI</option>
                                <option value="605">BULELENG</option>
                                <option value="510">BULU JAYA</option>
                                <option value="159">BULUKUMBA</option>
                                <option value="82">BUTON</option>
                                <option value="182">BUTON KAPOTA</option>
                                <option value="450">CANCAR</option>
                                <option value="600">CARRION DE CALATRAVA (CIUDAD REAL)</option>
                                <option value="215">CEPU</option>
                                <option value="550">CHINA</option>
                                <option value="445">CHINA</option>
                                <option value="26">CIAMIS</option>
                                <option value="229">CIANJUR</option>
                                <option value="198">CIBINONG</option>
                                <option value="277">CILACAP</option>
                                <option value="100">CILINCING</option>
                                <option value="79">CIMAHI</option>
                                <option value="70">CIPUTAT</option>
                                <option value="174">CIREBON</option>
                                <option value="592">CUPAK</option>
                                <option value="503">DALMIA NAGAR</option>
                                <option value="506">DARIT</option>
                                <option value="499">DASAN GERIA</option>
                                <option value="140">DAUH PALA</option>
                                <option value="13">DELI SERDANG</option>
                                <option value="433">DEMAK</option>
                                <option value="400">DENPASAR</option>
                                <option value="135">DEPOK</option>
                                <option value="491">DESA PERTAPAAN</option>
                                <option value="512">DILI</option>
                                <option value="495">DOBO</option>
                                <option value="467">DOLOK SAGALA</option>
                                <option value="586">DOLOK SARIBU</option>
                                <option value="169">DONGALA</option>
                                <option value="108">DONGGALA</option>
                                <option value="381">DOOM</option>
                                <option value="318">DUMAI</option>
                                <option value="33">DUMAN</option>
                                <option value="165">EMPAGAE</option>
                                <option value="116">ENDE</option>
                                <option value="204">ENDE FLORES</option>
                                <option value="446">FAEKHU</option>
                                <option value="405">FAK - FAK</option>
                                <option value="530">FALABISAHAYA</option>
                                <option value="154">FLORES TIMUR</option>
                                <option value="494">GADA</option>
                                <option value="376">GANTARAN</option>
                                <option value="437">GARINGGING</option>
                                <option value="199">GARUT</option>
                                <option value="57">GEDANGAN</option>
                                <option value="185">GELUMBANG</option>
                                <option value="435">GENTUMA</option>
                                <option value="539">GENTUNGANG</option>
                                <option value="391">GIANYAR</option>
                                <option value="214">GN. MALANG</option>
                                <option value="284">GOMBONG</option>
                                <option value="582">GORONTALO</option>
                                <option value="422">GOWA</option>
                                <option value="25">GRESIK</option>
                                <option value="194">GROBOGAN</option>
                                <option value="375">GROBONGAN</option>
                                <option value="171">GROGOL</option>
                                <option value="443">GUANDONG</option>
                                <option value="483">GUNUNG KIDUL</option>
                                <option value="321">GUNUNG SITOLI</option>
                                <option value="294">HARIANBOHO</option>
                                <option value="549">HEDENSTED</option>
                                <option value="80">HELVETIA</option>
                                <option value="465">HILIWETO</option>
                                <option value="188">HUTA KOJE</option>
                                <option value="599">HUTAGODANG</option>
                                <option value="547">IHAMAHU</option>
                                <option value="423">INDIA</option>
                                <option value="66">INDRAMAYU</option>
                                <option value="8">JAKARTA</option>
                                <option value="221">JAKARTA TIMUR</option>
                                <option value="552">JAKARTA BARAT</option>
                                <option value="226">JAKARTA PUSAT</option>
                                <option value="107">JAKARTA SELATAN</option>
                                <option value="152">JAKARTA TIMUR</option>
                                <option value="31">JAKARTA UTARA</option>
                                <option value="64">JAMBI</option>
                                <option value="488">JANEPONTO</option>
                                <option value="343">JAWA</option>
                                <option value="378">JAWA </option>
                                <option value="90">JAWA TENGAH</option>
                                <option value="10">JAYAPURA</option>
                                <option value="60">JEMBER</option>
                                <option value="49">JEPARA</option>
                                <option value="456">JERMAN</option>
                                <option value="2">JOMBANG</option>
                                <option value="201">K. ANYAR</option>
                                <option value="397">KABAN JAHE</option>
                                <option value="266">KABANJAHE</option>
                                <option value="543">KABUNGKA</option>
                                <option value="417">KAIMANA</option>
                                <option value="504">KALABAHI</option>
                                <option value="553">KALAULI</option>
                                <option value="496">KALIAKAH</option>
                                <option value="282">KALIDERES</option>
                                <option value="153">KAMAL</option>
                                <option value="534">KAMPUNG BARU</option>
                                <option value="298">KANDANGAN</option>
                                <option value="150">KANDOA</option>
                                <option value="489">KARANGANYAR</option>
                                <option value="205">KARAWANG</option>
                                <option value="579">KARIMUN</option>
                                <option value="265">KARO</option>
                                <option value="415">KASONGAN </option>
                                <option value="454">KATINGAN</option>
                                <option value="466">KAWALIWU</option>
                                <option value="77">KEBUMEN</option>
                                <option value="365">KEDAI DURIAN</option>
                                <option value="22">KEDIRI</option>
                                <option value="220">KEDIRI/ MALANG</option>
                                <option value="248">KEDU</option>
                                <option value="409">KELUA</option>
                                <option value="211">KENDAL</option>
                                <option value="86">KENDARI</option>
                                <option value="385">KEPULAUAN RIAU</option>
                                <option value="206">KERTOSONO</option>
                                <option value="235">KIMAAM</option>
                                <option value="373">KISARAN</option>
                                <option value="69">KLATEN</option>
                                <option value="518">KLUNGKUNG</option>
                                <option value="267">KOLONDALE</option>
                                <option value="62">KOLONODALE</option>
                                <option value="526">KONAWE SELATAN</option>
                                <option value="273">KORE SANGGAR</option>
                                <option value="103">KOTA BARU</option>
                                <option value="287">KOTABARU</option>
                                <option value="474">KOTAWARINGIN BARAT</option>
                                <option value="478">KRADENAN</option>
                                <option value="41">KRAWANG</option>
                                <option value="193">KRIAN</option>
                                <option value="296">KUALA KAPUAS</option>
                                <option value="604">KUBU RAYA</option>
                                <option value="200">KUDUS</option>
                                <option value="175">KULON PROGO</option>
                                <option value="246">KULONPROGO</option>
                                <option value="473">KUMAI</option>
                                <option value="74">KUNINGAN</option>
                                <option value="191">KUPANG</option>
                                <option value="374">KURIK</option>
                                <option value="173">KUTOARJO</option>
                                <option value="315">L. BARU</option>
                                <option value="528">LAAR</option>
                                <option value="395">LABUHAN BATU</option>
                                <option value="359">LABUHAN DELI</option>
                                <option value="145">LABUNTI</option>
                                <option value="317">LAHAT</option>
                                <option value="203">LAHEMA</option>
                                <option value="189">LAINUNGAN</option>
                                <option value="244">LAMBAN SINAGA</option>
                                <option value="213">LAMENA</option>
                                <option value="7">LAMONGAN</option>
                                <option value="127">LAMPUNG</option>
                                <option value="341">LANGGUR</option>
                                <option value="464">LANGOWAN</option>
                                <option value="348">LANTO</option>
                                <option value="406">LARAT</option>
                                <option value="157">LASEM</option>
                                <option value="271">LAWANG</option>
                                <option value="502">LEBAK</option>
                                <option value="485">LEKOSULA</option>
                                <option value="234">LELOBOKO</option>
                                <option value="389">LEMBATA</option>
                                <option value="242">LIANG ANGGANG</option>
                                <option value="342">LIMA PULUH</option>
                                <option value="527">LIMBOTO</option>
                                <option value="178">LOA BAKUNG</option>
                                <option value="346">LOA JANAN</option>
                                <option value="459">LOMBOK BARAT</option>
                                <option value="449">LOMBOK TIMUR</option>
                                <option value="208">LONG IRAM</option>
                                <option value="419">LUBUK LINGGAU</option>
                                <option value="588">LUBUK PAKAM</option>
                                <option value="55">LUMAJANG</option>
                                <option value="472">LUMBAN GAMBIRI</option>
                                <option value="300">LUMBAN PINASA</option>
                                <option value="332">LUWUK</option>
                                <option value="83">MADIUN</option>
                                <option value="123">MADURA</option>
                                <option value="112">MAGELANG</option>
                                <option value="44">MAGETAN</option>
                                <option value="442">MAHENDRAGARH</option>
                                <option value="172">MAJALENGKA</option>
                                <option value="486">MAJENE</option>
                                <option value="197">MAKALE</option>
                                <option value="105">MAKASAR</option>
                                <option value="181">MAKASSAR</option>
                                <option value="479">MALAGINNA</option>
                                <option value="355">MALAKAJI</option>
                                <option value="27">MALANG</option>
                                <option value="155">MALANG (BATU)</option>
                                <option value="573">MALAYSIA</option>
                                <option value="177">MALIMPUNG</option>
                                <option value="429">MALUKU</option>
                                <option value="18">MANADO</option>
                                <option value="468">MANDEHE</option>
                                <option value="310">MANDOGE</option>
                                <option value="347">MANGGARAI</option>
                                <option value="411">MANGON</option>
                                <option value="65">MANJOPAI</option>
                                <option value="48">MANOKWARI</option>
                                <option value="239">MANUKWARI</option>
                                <option value="217">MARELAN</option>
                                <option value="587">MARIHAT BUTAR I</option>
                                <option value="258">MARINDING</option>
                                <option value="17">MAROS</option>
                                <option value="236">MARTAPURA</option>
                                <option value="591">MASOHI</option>
                                <option value="121">MATANGTERAP</option>
                                <option value="314">MATAPAU</option>
                                <option value="238">MATARAM</option>
                                <option value="63">MAUMERE</option>
                                <option value="71">MEDAN</option>
                                <option value="533">MELBOURNE</option>
                                <option value="232">MENADO</option>
                                <option value="16">MERAUKE</option>
                                <option value="128">METRO</option>
                                <option value="254">MINAHASA</option>
                                <option value="130">MOJOAGUNG</option>
                                <option value="9">MOJOKERTO</option>
                                <option value="507">MORO BETUNG</option>
                                <option value="576">MOROWALI</option>
                                <option value="366">MUARA</option>
                                <option value="420">MUARA BADAK</option>
                                <option value="595">MUARA ENIM</option>
                                <option value="329">MUARA UFU</option>
                                <option value="371">MUARA UPU</option>
                                <option value="264">MURUNG PUDAK</option>
                                <option value="278">NABIRE</option>
                                <option value="101">NAGOYOR</option>
                                <option value="490">NAMLEA</option>
                                <option value="447">NAWARIPI</option>
                                <option value="519">NEIRA</option>
                                <option value="52">NGANJUK</option>
                                <option value="210">NGAWI</option>
                                <option value="320">NIAS</option>
                                <option value="453">NIAS UTARA</option>
                                <option value="32">NTB</option>
                                <option value="521">NTT</option>
                                <option value="110">NUNUKAN</option>
                                <option value="532">OGOTUA</option>
                                <option value="362">P. BRANDAN</option>
                                <option value="399">P. SIMA LINGKAI</option>
                                <option value="225">P.SIANTAR</option>
                                <option value="97">PACITAN</option>
                                <option value="43">PADANG</option>
                                <option value="319">PADANG LARU</option>
                                <option value="147">PADANG PARIAMAN</option>
                                <option value="51">PADANG SIDEMPUA</option>
                                <option value="14">PADANG SIDEMPUAN</option>
                                <option value="585">PAGAR ALAM</option>
                                <option value="593">PAGUAT</option>
                                <option value="536">PAHANG</option>
                                <option value="410">PAKKAT</option>
                                <option value="357">PALANGGA TAKALAR</option>
                                <option value="184">PALANGKARAYA</option>
                                <option value="281">PALAS</option>
                                <option value="96">PALEMBANG</option>
                                <option value="146">PALMERIAM</option>
                                <option value="303">PALOPO</option>
                                <option value="134">PALU</option>
                                <option value="126">PAMEKASAN</option>
                                <option value="275">PANDEGLANG</option>
                                <option value="340">PANGBOMAN</option>
                                <option value="251">PANGKAL PINANG</option>
                                <option value="565">PANGKALAN BUN</option>
                                <option value="567">PANGKALAN BUN</option>
                                <option value="564">PANGKALAN BUN</option>
                                <option value="93">PANGKEP</option>
                                <option value="324">PAPANDE</option>
                                <option value="237">PAPAR KEDIRI</option>
                                <option value="61">PAPUA</option>
                                <option value="339">PARAPAT</option>
                                <option value="541">PARE-PARE</option>
                                <option value="120">PARIDAN</option>
                                <option value="286">PASA'BU</option>
                                <option value="42">PASANGKAYU</option>
                                <option value="115">PASURUAN</option>
                                <option value="441">PATHEN</option>
                                <option value="176">PATI</option>
                                <option value="492">PAYAHE</option>
                                <option value="292">PEKALONGAN</option>
                                <option value="325">PEKANBARU</option>
                                <option value="511">PEKKABATA</option>
                                <option value="162">PEMALANG</option>
                                <option value="548">PEMANGKAT</option>
                                <option value="439">PEMATANG SAPAT</option>
                                <option value="260">PEMATANG SIANTA</option>
                                <option value="118">PEMATANG SIANTAR</option>
                                <option value="546">PEMBASEAN</option>
                                <option value="480">PENAJAM PASER UTARA</option>
                                <option value="584">PENDOPO</option>
                                <option value="563">PERAK</option>
                                <option value="438">PINANG HABANG</option>
                                <option value="228">PINRANG</option>
                                <option value="263">POGATAN</option>
                                <option value="12">POLEWALI</option>
                                <option value="594">POLORAJA</option>
                                <option value="330">POMALAA</option>
                                <option value="560">PONDING</option>
                                <option value="531">PONGKO</option>
                                <option value="148">PONOROGO</option>
                                <option value="561">PONSUSUNO</option>
                                <option value="170">PONTIANAK</option>
                                <option value="114">PORONG</option>
                                <option value="309">PORSEA</option>
                                <option value="535">PORTO</option>
                                <option value="35">POSO</option>
                                <option value="56">PROBOLINGGO</option>
                                <option value="279">PULAU TENGAH</option>
                                <option value="382">PULIO</option>
                                <option value="322">PULO HOPUR</option>
                                <option value="109">PURBALINGGA</option>
                                <option value="477">PURWAKARTA</option>
                                <option value="525">PURWODADI</option>
                                <option value="224">PURWOKERTO</option>
                                <option value="88">PURWOREJO</option>
                                <option value="421">RAINIS</option>
                                <option value="302">RAJANI HUTA</option>
                                <option value="360">RAJATONGAH</option>
                                <option value="386">RANTAU PANJANG</option>
                                <option value="252">RANTAU PRAPAT</option>
                                <option value="356">RANTEPAO</option>
                                <option value="392">RANTEPO</option>
                                <option value="461">RAWASELAPAN</option>
                                <option value="398">RAYA BAYU</option>
                                <option value="394">REDONG</option>
                                <option value="458">REJANG LEBONG</option>
                                <option value="256">REMBANG</option>
                                <option value="368">RENGAS PULAU</option>
                                <option value="475">RENGAT</option>
                                <option value="137">REPA</option>
                                <option value="306">RIAU</option>
                                <option value="76">RIHNINGGOL</option>
                                <option value="160">RK.BITUNG</option>
                                <option value="297">RONTA</option>
                                <option value="522">RUMBAI</option>
                                <option value="589">RUMEON</option>
                                <option value="243">RUTENG</option>
                                <option value="361">S. BUAH</option>
                                <option value="222">SABU</option>
                                <option value="132">SABUNGAN JAE</option>
                                <option value="253">SALATIGA</option>
                                <option value="21">SAMARINDA</option>
                                <option value="498">SAMBER</option>
                                <option value="388">SAMBOJA</option>
                                <option value="338">SAMOSIR</option>
                                <option value="39">SAMPANG</option>
                                <option value="299">SAMPIT</option>
                                <option value="250">SANARINDA</option>
                                <option value="219">SANGA-SANGA KAL</option>
                                <option value="45">SANGAI</option>
                                <option value="334">SANGGAU</option>
                                <option value="390">SANGIHE TALAID</option>
                                <option value="544">SAPARUA</option>
                                <option value="335">SAROLANGON</option>
                                <option value="517">SARULLA</option>
                                <option value="117">SASARI</option>
                                <option value="598">SAUMLAKI</option>
                                <option value="558">SAWAI</option>
                                <option value="328">SAWIT REJO</option>
                                <option value="370">SAWITREJO</option>
                                <option value="142">SEBULU</option>
                                <option value="72">SEI BEJANGKAR</option>
                                <option value="268">SEI SERIMAH</option>
                                <option value="572">SELANGOR</option>
                                <option value="430">SELAT PANJANG</option>
                                <option value="85">SEMARANG</option>
                                <option value="168">SEMPAJA</option>
                                <option value="470">SEMUJUR</option>
                                <option value="124">SENTANI</option>
                                <option value="597">SERAN</option>
                                <option value="245">SERANG</option>
                                <option value="416">SERITI</option>
                                <option value="98">SERUI</option>
                                <option value="432">SIABAL - ABAL</option>
                                <option value="312">SIALANG BUAH</option>
                                <option value="136">SIBOLGA</option>
                                <option value="418">SIDIKALANG</option>
                                <option value="301">SIDINGKAT</option>
                                <option value="5">SIDOARJO</option>
                                <option value="513">SIDOPO</option>
                                <option value="581">SIDOREJO</option>
                                <option value="151">SIGALAGALA</option>
                                <option value="293">SIMALUNGUN</option>
                                <option value="603">SIMANGAMBAT</option>
                                <option value="305">SIMANGUMBAN</option>
                                <option value="249">SIMPANG EMPAT</option>
                                <option value="444">SINGAPORE</option>
                                <option value="431">SINGAPURA</option>
                                <option value="377">SINGARAJA</option>
                                <option value="426">SINGKAWANG</option>
                                <option value="270">SINGOSARI</option>
                                <option value="186">SINJAI</option>
                                <option value="568">SIPOLHA</option>
                                <option value="230">SIRI SORI ISLAM</option>
                                <option value="434">SISARAHILI</option>
                                <option value="452">SISARAHILI</option>
                                <option value="363">SITABOTABO</option>
                                <option value="54">SITUBONDO</option>
                                <option value="451">SIWALUBANUA</option>
                                <option value="291">SLEMAN</option>
                                <option value="545">SOAHUKU</option>
                                <option value="596">SOE</option>
                                <option value="364">SOHOR LAMA</option>
                                <option value="247">SOLO</option>
                                <option value="36">SORONG</option>
                                <option value="481">SOSOR PANDIANGAN.</option>
                                <option value="207">SRAGEN</option>
                                <option value="47">SRIBAWONO</option>
                                <option value="331">STABAT</option>
                                <option value="257">STAGEN</option>
                                <option value="202">SUARABAYA</option>
                                <option value="280">SUBANG</option>
                                <option value="455">SUBUR INDAH</option>
                                <option value="78">SUKABUMI</option>
                                <option value="161">SUKOHARJO</option>
                                <option value="111">SUKOLILO</option>
                                <option value="149">SULAWESI</option>
                                <option value="408">SUMEDANG </option>
                                <option value="29">SUMENEP</option>
                                <option value="183">SUMUT</option>
                                <option value="333">SUNGAI PENJURU</option>
                                <option value="462">SUNGAI RAWA</option>
                                <option value="129">SUNGAI ULIN</option>
                                <option value="387">SUNGAILIAT</option>
                                <option value="1">SURABAYA</option>
                                <option value="255">SURABYA</option>
                                <option value="133">SURAKARTA</option>
                                <option value="413">SURINAME</option>
                                <option value="139">TABANAN BALI</option>
                                <option value="38">TAHUNA</option>
                                <option value="509">TAKALAR</option>
                                <option value="401">TALAWID</option>
                                <option value="288">TAMBAN</option>
                                <option value="367">TAMBANG-24</option>
                                <option value="402">TANAH BUMBU</option>
                                <option value="195">TANGERANG</option>
                                <option value="67">TANJUNG</option>
                                <option value="471">TANJUNG BALAI</option>
                                <option value="578">TANJUNG BALAI KARIMUN</option>
                                <option value="448">TANJUNG BARUS</option>
                                <option value="414">TANJUNG ENIM</option>
                                <option value="326">TANJUNG GADING</option>
                                <option value="436">TANJUNG KEMUNING</option>
                                <option value="369">TANJUNG MULIA</option>
                                <option value="583">TANJUNG PANDAN</option>
                                <option value="113">TANJUNG PINANG</option>
                                <option value="99">TANJUNG PRIOK</option>
                                <option value="407">TANJUNG REDEP</option>
                                <option value="577">TANJUNG SERI</option>
                                <option value="463">TANJUNG UBAN</option>
                                <option value="138">TAPANULI</option>
                                <option value="3">TARAKAN</option>
                                <option value="73">TARAKAN BARAT</option>
                                <option value="216">TARAKAN TENGAH</option>
                                <option value="218">TARUNTUNG</option>
                                <option value="352">TARUTUNG</option>
                                <option value="23">TASIKMALAYA</option>
                                <option value="457">TAWAU</option>
                                <option value="384">TB PENANJUNG</option>
                                <option value="327">TEBING TINGGI</option>
                                <option value="144">TEGAL</option>
                                <option value="30">TEKE</option>
                                <option value="196">TELUK BETUNG</option>
                                <option value="460">TELUK SULAIMAN</option>
                                <option value="523">TEMANGGUNG</option>
                                <option value="50">TEMBUNG</option>
                                <option value="590">TEPA</option>
                                <option value="290">TERNATE</option>
                                <option value="383">TEROS</option>
                                <option value="313">TG. BERINGIN</option>
                                <option value="262">TG. PANDAN</option>
                                <option value="308">TIMIKA</option>
                                <option value="122">TIMOR</option>
                                <option value="209">TJ PINANG RIAU</option>
                                <option value="540">TOLAI</option>
                                <option value="559">TOMALEHU</option>
                                <option value="520">TOMANGGONG</option>
                                <option value="37">TONDANO</option>
                                <option value="231">TORAJA</option>
                                <option value="19">TRENGGALEK</option>
                                <option value="125">TUAL</option>
                                <option value="84">TUBAN</option>
                                <option value="58">TULUNGAGUNG</option>
                                <option value="276">TUNGKARAN PANGERAN</option>
                                <option value="40">UJUNG PANDANG</option>
                                <option value="500">ULEE GAJAH</option>
                                <option value="166">WAINGAPU</option>
                                <option value="393">WAINGAPU SUMBA TIMUR</option>
                                <option value="602">WAMENA</option>
                                <option value="403">WANCI</option>
                                <option value="493">WAO LANAO DS</option>
                                <option value="89">WARU- SIDOARJO</option>
                                <option value="46">WATUMEA</option>
                                <option value="289">WAYGALIH</option>
                                <option value="92">WONOGIRI</option>
                                <option value="192">WONOSOBO</option>
                                <option value="59">YOGYAKARTA</option>
                            </select>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Current Address
                                </strong>
                                
                            </label>
                            
                            <div class="green-border-focus col-sm-6">                                
                                <textarea class="md-form" id="exampleFormControlTextarea5" rows="3" placeholder="Current Address" name="cA" required></textarea>
                            </div>
                    
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Current City
                                </strong>
                            </label>
                            
                            <select class="mdb-select md-form col-sm-4" searchable="Search here.." name="cC" required>
                                
                                <option value="0">-</option>
                                <option value="354">ABEPURA</option>
                                <option value="316">ACEH</option>
                                <option value="380">ADONARA</option>
                                <option value="358">ADUK</option>
                                <option value="524">AEK BULU</option>
                                <option value="412">ALAH AIR</option>
                                <option value="261">ALAS</option>
                                <option value="440">ALEXANDRIA</option>
                                <option value="106">AMBARAWA</option>
                                <option value="53">AMBON</option>
                                <option value="580">AMURANG</option>
                                <option value="516">ATAMBUA</option>
                                <option value="233">BABAT</option>
                                <option value="156">BADE</option>
                                <option value="372">BAH BUTONG</option>
                                <option value="190">BAJAWA</option>
                                <option value="141">BALI</option>
                                <option value="295">BALIGE</option>
                                <option value="24">BALIKPAPAN</option>
                                <option value="569">BANDAR JAYA</option>
                                <option value="508">BANDAR LAMPUNG</option>
                                <option value="167">BANDUNG</option>
                                <option value="158">BANGIL</option>
                                <option value="68">BANGKA</option>
                                <option value="28">BANGKALAN</option>
                                <option value="542">BANGKAO</option>
                                <option value="515">BANJAR</option>
                                <option value="180">BANJAR NEGARA</option>
                                <option value="119">BANJAR TIMUR</option>
                                <option value="102">BANJARBARU</option>
                                <option value="15">BANJARMASIN</option>
                                <option value="482">BANTAENG</option>
                                <option value="274">BANTEN</option>
                                <option value="212">BANTUL</option>
                                <option value="163">BANYUMAS</option>
                                <option value="20">BANYUWANGI</option>
                                <option value="94">BARABAI</option>
                                <option value="537">BARITO KUALA</option>
                                <option value="538">BARITO UTARA</option>
                                <option value="484">BARRU</option>
                                <option value="487">BARUS</option>
                                <option value="304">BATAM</option>
                                <option value="379">BATANG </option>
                                <option value="353">BATANG PAGAR</option>
                                <option value="187">BATU</option>
                                <option value="562">BATU AMPAR</option>
                                <option value="241">BATU LICIN</option>
                                <option value="285">BATUPUTE</option>
                                <option value="551">BATURAJA</option>
                                <option value="164">BAU-BAU</option>
                                <option value="529">BAWAHAN SELAN</option>
                                <option value="75">BEKASI</option>
                                <option value="11">BELAWAN</option>
                                <option value="575">BENGKALIS</option>
                                <option value="307">BENGKULU</option>
                                <option value="259">BERABAI</option>
                                <option value="283">BERAU</option>
                                <option value="497">BERLIN</option>
                                <option value="95">BIAK</option>
                                <option value="428">BILORO</option>
                                <option value="227">BIMA</option>
                                <option value="272">BIMA-NTB</option>
                                <option value="323">BINJAI</option>
                                <option value="601">BINTUNI</option>
                                <option value="240">BITUNG</option>
                                <option value="311">BLANKAHAN</option>
                                <option value="34">BLITAR</option>
                                <option value="91">BLORA</option>
                                <option value="81">BOGOR</option>
                                <option value="143">BOJONEGORO</option>
                                <option value="223">BOJONG SARI</option>
                                <option value="104">BONDOWOSO</option>
                                <option value="4">BONE</option>
                                <option value="501">BONTANG</option>
                                <option value="574">BOTTOPADANG</option>
                                <option value="131">BOYOLALI</option>
                                <option value="269">BREBES</option>
                                <option value="469">BUJANGGA</option>
                                <option value="179">BUKIT TINGGI</option>
                                <option value="605">BULELENG</option>
                                <option value="510">BULU JAYA</option>
                                <option value="159">BULUKUMBA</option>
                                <option value="82">BUTON</option>
                                <option value="182">BUTON KAPOTA</option>
                                <option value="450">CANCAR</option>
                                <option value="600">CARRION DE CALATRAVA (CIUDAD REAL)</option>
                                <option value="215">CEPU</option>
                                <option value="550">CHINA</option>
                                <option value="445">CHINA</option>
                                <option value="26">CIAMIS</option>
                                <option value="229">CIANJUR</option>
                                <option value="198">CIBINONG</option>
                                <option value="277">CILACAP</option>
                                <option value="100">CILINCING</option>
                                <option value="79">CIMAHI</option>
                                <option value="70">CIPUTAT</option>
                                <option value="174">CIREBON</option>
                                <option value="592">CUPAK</option>
                                <option value="503">DALMIA NAGAR</option>
                                <option value="506">DARIT</option>
                                <option value="499">DASAN GERIA</option>
                                <option value="140">DAUH PALA</option>
                                <option value="13">DELI SERDANG</option>
                                <option value="433">DEMAK</option>
                                <option value="400">DENPASAR</option>
                                <option value="135">DEPOK</option>
                                <option value="491">DESA PERTAPAAN</option>
                                <option value="512">DILI</option>
                                <option value="495">DOBO</option>
                                <option value="467">DOLOK SAGALA</option>
                                <option value="586">DOLOK SARIBU</option>
                                <option value="169">DONGALA</option>
                                <option value="108">DONGGALA</option>
                                <option value="381">DOOM</option>
                                <option value="318">DUMAI</option>
                                <option value="33">DUMAN</option>
                                <option value="165">EMPAGAE</option>
                                <option value="116">ENDE</option>
                                <option value="204">ENDE FLORES</option>
                                <option value="446">FAEKHU</option>
                                <option value="405">FAK - FAK</option>
                                <option value="530">FALABISAHAYA</option>
                                <option value="154">FLORES TIMUR</option>
                                <option value="494">GADA</option>
                                <option value="376">GANTARAN</option>
                                <option value="437">GARINGGING</option>
                                <option value="199">GARUT</option>
                                <option value="57">GEDANGAN</option>
                                <option value="185">GELUMBANG</option>
                                <option value="435">GENTUMA</option>
                                <option value="539">GENTUNGANG</option>
                                <option value="391">GIANYAR</option>
                                <option value="214">GN. MALANG</option>
                                <option value="284">GOMBONG</option>
                                <option value="582">GORONTALO</option>
                                <option value="422">GOWA</option>
                                <option value="25">GRESIK</option>
                                <option value="194">GROBOGAN</option>
                                <option value="375">GROBONGAN</option>
                                <option value="171">GROGOL</option>
                                <option value="443">GUANDONG</option>
                                <option value="483">GUNUNG KIDUL</option>
                                <option value="321">GUNUNG SITOLI</option>
                                <option value="294">HARIANBOHO</option>
                                <option value="549">HEDENSTED</option>
                                <option value="80">HELVETIA</option>
                                <option value="465">HILIWETO</option>
                                <option value="188">HUTA KOJE</option>
                                <option value="599">HUTAGODANG</option>
                                <option value="547">IHAMAHU</option>
                                <option value="423">INDIA</option>
                                <option value="66">INDRAMAYU</option>
                                <option value="8">JAKARTA</option>
                                <option value="221">JAKARTA TIMUR</option>
                                <option value="552">JAKARTA BARAT</option>
                                <option value="226">JAKARTA PUSAT</option>
                                <option value="107">JAKARTA SELATAN</option>
                                <option value="152">JAKARTA TIMUR</option>
                                <option value="31">JAKARTA UTARA</option>
                                <option value="64">JAMBI</option>
                                <option value="488">JANEPONTO</option>
                                <option value="343">JAWA</option>
                                <option value="378">JAWA </option>
                                <option value="90">JAWA TENGAH</option>
                                <option value="10">JAYAPURA</option>
                                <option value="60">JEMBER</option>
                                <option value="49">JEPARA</option>
                                <option value="456">JERMAN</option>
                                <option value="2">JOMBANG</option>
                                <option value="201">K. ANYAR</option>
                                <option value="397">KABAN JAHE</option>
                                <option value="266">KABANJAHE</option>
                                <option value="543">KABUNGKA</option>
                                <option value="417">KAIMANA</option>
                                <option value="504">KALABAHI</option>
                                <option value="553">KALAULI</option>
                                <option value="496">KALIAKAH</option>
                                <option value="282">KALIDERES</option>
                                <option value="153">KAMAL</option>
                                <option value="534">KAMPUNG BARU</option>
                                <option value="298">KANDANGAN</option>
                                <option value="150">KANDOA</option>
                                <option value="489">KARANGANYAR</option>
                                <option value="205">KARAWANG</option>
                                <option value="579">KARIMUN</option>
                                <option value="265">KARO</option>
                                <option value="415">KASONGAN </option>
                                <option value="454">KATINGAN</option>
                                <option value="466">KAWALIWU</option>
                                <option value="77">KEBUMEN</option>
                                <option value="365">KEDAI DURIAN</option>
                                <option value="22">KEDIRI</option>
                                <option value="220">KEDIRI/ MALANG</option>
                                <option value="248">KEDU</option>
                                <option value="409">KELUA</option>
                                <option value="211">KENDAL</option>
                                <option value="86">KENDARI</option>
                                <option value="385">KEPULAUAN RIAU</option>
                                <option value="206">KERTOSONO</option>
                                <option value="235">KIMAAM</option>
                                <option value="373">KISARAN</option>
                                <option value="69">KLATEN</option>
                                <option value="518">KLUNGKUNG</option>
                                <option value="267">KOLONDALE</option>
                                <option value="62">KOLONODALE</option>
                                <option value="526">KONAWE SELATAN</option>
                                <option value="273">KORE SANGGAR</option>
                                <option value="103">KOTA BARU</option>
                                <option value="287">KOTABARU</option>
                                <option value="474">KOTAWARINGIN BARAT</option>
                                <option value="478">KRADENAN</option>
                                <option value="41">KRAWANG</option>
                                <option value="193">KRIAN</option>
                                <option value="296">KUALA KAPUAS</option>
                                <option value="604">KUBU RAYA</option>
                                <option value="200">KUDUS</option>
                                <option value="175">KULON PROGO</option>
                                <option value="246">KULONPROGO</option>
                                <option value="473">KUMAI</option>
                                <option value="74">KUNINGAN</option>
                                <option value="191">KUPANG</option>
                                <option value="374">KURIK</option>
                                <option value="173">KUTOARJO</option>
                                <option value="315">L. BARU</option>
                                <option value="528">LAAR</option>
                                <option value="395">LABUHAN BATU</option>
                                <option value="359">LABUHAN DELI</option>
                                <option value="145">LABUNTI</option>
                                <option value="317">LAHAT</option>
                                <option value="203">LAHEMA</option>
                                <option value="189">LAINUNGAN</option>
                                <option value="244">LAMBAN SINAGA</option>
                                <option value="213">LAMENA</option>
                                <option value="7">LAMONGAN</option>
                                <option value="127">LAMPUNG</option>
                                <option value="341">LANGGUR</option>
                                <option value="464">LANGOWAN</option>
                                <option value="348">LANTO</option>
                                <option value="406">LARAT</option>
                                <option value="157">LASEM</option>
                                <option value="271">LAWANG</option>
                                <option value="502">LEBAK</option>
                                <option value="485">LEKOSULA</option>
                                <option value="234">LELOBOKO</option>
                                <option value="389">LEMBATA</option>
                                <option value="242">LIANG ANGGANG</option>
                                <option value="342">LIMA PULUH</option>
                                <option value="527">LIMBOTO</option>
                                <option value="178">LOA BAKUNG</option>
                                <option value="346">LOA JANAN</option>
                                <option value="459">LOMBOK BARAT</option>
                                <option value="449">LOMBOK TIMUR</option>
                                <option value="208">LONG IRAM</option>
                                <option value="419">LUBUK LINGGAU</option>
                                <option value="588">LUBUK PAKAM</option>
                                <option value="55">LUMAJANG</option>
                                <option value="472">LUMBAN GAMBIRI</option>
                                <option value="300">LUMBAN PINASA</option>
                                <option value="332">LUWUK</option>
                                <option value="83">MADIUN</option>
                                <option value="123">MADURA</option>
                                <option value="112">MAGELANG</option>
                                <option value="44">MAGETAN</option>
                                <option value="442">MAHENDRAGARH</option>
                                <option value="172">MAJALENGKA</option>
                                <option value="486">MAJENE</option>
                                <option value="197">MAKALE</option>
                                <option value="105">MAKASAR</option>
                                <option value="181">MAKASSAR</option>
                                <option value="479">MALAGINNA</option>
                                <option value="355">MALAKAJI</option>
                                <option value="27">MALANG</option>
                                <option value="155">MALANG (BATU)</option>
                                <option value="573">MALAYSIA</option>
                                <option value="177">MALIMPUNG</option>
                                <option value="429">MALUKU</option>
                                <option value="18">MANADO</option>
                                <option value="468">MANDEHE</option>
                                <option value="310">MANDOGE</option>
                                <option value="347">MANGGARAI</option>
                                <option value="411">MANGON</option>
                                <option value="65">MANJOPAI</option>
                                <option value="48">MANOKWARI</option>
                                <option value="239">MANUKWARI</option>
                                <option value="217">MARELAN</option>
                                <option value="587">MARIHAT BUTAR I</option>
                                <option value="258">MARINDING</option>
                                <option value="17">MAROS</option>
                                <option value="236">MARTAPURA</option>
                                <option value="591">MASOHI</option>
                                <option value="121">MATANGTERAP</option>
                                <option value="314">MATAPAU</option>
                                <option value="238">MATARAM</option>
                                <option value="63">MAUMERE</option>
                                <option value="71">MEDAN</option>
                                <option value="533">MELBOURNE</option>
                                <option value="232">MENADO</option>
                                <option value="16">MERAUKE</option>
                                <option value="128">METRO</option>
                                <option value="254">MINAHASA</option>
                                <option value="130">MOJOAGUNG</option>
                                <option value="9">MOJOKERTO</option>
                                <option value="507">MORO BETUNG</option>
                                <option value="576">MOROWALI</option>
                                <option value="366">MUARA</option>
                                <option value="420">MUARA BADAK</option>
                                <option value="595">MUARA ENIM</option>
                                <option value="329">MUARA UFU</option>
                                <option value="371">MUARA UPU</option>
                                <option value="264">MURUNG PUDAK</option>
                                <option value="278">NABIRE</option>
                                <option value="101">NAGOYOR</option>
                                <option value="490">NAMLEA</option>
                                <option value="447">NAWARIPI</option>
                                <option value="519">NEIRA</option>
                                <option value="52">NGANJUK</option>
                                <option value="210">NGAWI</option>
                                <option value="320">NIAS</option>
                                <option value="453">NIAS UTARA</option>
                                <option value="32">NTB</option>
                                <option value="521">NTT</option>
                                <option value="110">NUNUKAN</option>
                                <option value="532">OGOTUA</option>
                                <option value="362">P. BRANDAN</option>
                                <option value="399">P. SIMA LINGKAI</option>
                                <option value="225">P.SIANTAR</option>
                                <option value="97">PACITAN</option>
                                <option value="43">PADANG</option>
                                <option value="319">PADANG LARU</option>
                                <option value="147">PADANG PARIAMAN</option>
                                <option value="51">PADANG SIDEMPUA</option>
                                <option value="14">PADANG SIDEMPUAN</option>
                                <option value="585">PAGAR ALAM</option>
                                <option value="593">PAGUAT</option>
                                <option value="536">PAHANG</option>
                                <option value="410">PAKKAT</option>
                                <option value="357">PALANGGA TAKALAR</option>
                                <option value="184">PALANGKARAYA</option>
                                <option value="281">PALAS</option>
                                <option value="96">PALEMBANG</option>
                                <option value="146">PALMERIAM</option>
                                <option value="303">PALOPO</option>
                                <option value="134">PALU</option>
                                <option value="126">PAMEKASAN</option>
                                <option value="275">PANDEGLANG</option>
                                <option value="340">PANGBOMAN</option>
                                <option value="251">PANGKAL PINANG</option>
                                <option value="565">PANGKALAN BUN</option>
                                <option value="567">PANGKALAN BUN</option>
                                <option value="564">PANGKALAN BUN</option>
                                <option value="93">PANGKEP</option>
                                <option value="324">PAPANDE</option>
                                <option value="237">PAPAR KEDIRI</option>
                                <option value="61">PAPUA</option>
                                <option value="339">PARAPAT</option>
                                <option value="541">PARE-PARE</option>
                                <option value="120">PARIDAN</option>
                                <option value="286">PASA'BU</option>
                                <option value="42">PASANGKAYU</option>
                                <option value="115">PASURUAN</option>
                                <option value="441">PATHEN</option>
                                <option value="176">PATI</option>
                                <option value="492">PAYAHE</option>
                                <option value="292">PEKALONGAN</option>
                                <option value="325">PEKANBARU</option>
                                <option value="511">PEKKABATA</option>
                                <option value="162">PEMALANG</option>
                                <option value="548">PEMANGKAT</option>
                                <option value="439">PEMATANG SAPAT</option>
                                <option value="260">PEMATANG SIANTA</option>
                                <option value="118">PEMATANG SIANTAR</option>
                                <option value="546">PEMBASEAN</option>
                                <option value="480">PENAJAM PASER UTARA</option>
                                <option value="584">PENDOPO</option>
                                <option value="563">PERAK</option>
                                <option value="438">PINANG HABANG</option>
                                <option value="228">PINRANG</option>
                                <option value="263">POGATAN</option>
                                <option value="12">POLEWALI</option>
                                <option value="594">POLORAJA</option>
                                <option value="330">POMALAA</option>
                                <option value="560">PONDING</option>
                                <option value="531">PONGKO</option>
                                <option value="148">PONOROGO</option>
                                <option value="561">PONSUSUNO</option>
                                <option value="170">PONTIANAK</option>
                                <option value="114">PORONG</option>
                                <option value="309">PORSEA</option>
                                <option value="535">PORTO</option>
                                <option value="35">POSO</option>
                                <option value="56">PROBOLINGGO</option>
                                <option value="279">PULAU TENGAH</option>
                                <option value="382">PULIO</option>
                                <option value="322">PULO HOPUR</option>
                                <option value="109">PURBALINGGA</option>
                                <option value="477">PURWAKARTA</option>
                                <option value="525">PURWODADI</option>
                                <option value="224">PURWOKERTO</option>
                                <option value="88">PURWOREJO</option>
                                <option value="421">RAINIS</option>
                                <option value="302">RAJANI HUTA</option>
                                <option value="360">RAJATONGAH</option>
                                <option value="386">RANTAU PANJANG</option>
                                <option value="252">RANTAU PRAPAT</option>
                                <option value="356">RANTEPAO</option>
                                <option value="392">RANTEPO</option>
                                <option value="461">RAWASELAPAN</option>
                                <option value="398">RAYA BAYU</option>
                                <option value="394">REDONG</option>
                                <option value="458">REJANG LEBONG</option>
                                <option value="256">REMBANG</option>
                                <option value="368">RENGAS PULAU</option>
                                <option value="475">RENGAT</option>
                                <option value="137">REPA</option>
                                <option value="306">RIAU</option>
                                <option value="76">RIHNINGGOL</option>
                                <option value="160">RK.BITUNG</option>
                                <option value="297">RONTA</option>
                                <option value="522">RUMBAI</option>
                                <option value="589">RUMEON</option>
                                <option value="243">RUTENG</option>
                                <option value="361">S. BUAH</option>
                                <option value="222">SABU</option>
                                <option value="132">SABUNGAN JAE</option>
                                <option value="253">SALATIGA</option>
                                <option value="21">SAMARINDA</option>
                                <option value="498">SAMBER</option>
                                <option value="388">SAMBOJA</option>
                                <option value="338">SAMOSIR</option>
                                <option value="39">SAMPANG</option>
                                <option value="299">SAMPIT</option>
                                <option value="250">SANARINDA</option>
                                <option value="219">SANGA-SANGA KAL</option>
                                <option value="45">SANGAI</option>
                                <option value="334">SANGGAU</option>
                                <option value="390">SANGIHE TALAID</option>
                                <option value="544">SAPARUA</option>
                                <option value="335">SAROLANGON</option>
                                <option value="517">SARULLA</option>
                                <option value="117">SASARI</option>
                                <option value="598">SAUMLAKI</option>
                                <option value="558">SAWAI</option>
                                <option value="328">SAWIT REJO</option>
                                <option value="370">SAWITREJO</option>
                                <option value="142">SEBULU</option>
                                <option value="72">SEI BEJANGKAR</option>
                                <option value="268">SEI SERIMAH</option>
                                <option value="572">SELANGOR</option>
                                <option value="430">SELAT PANJANG</option>
                                <option value="85">SEMARANG</option>
                                <option value="168">SEMPAJA</option>
                                <option value="470">SEMUJUR</option>
                                <option value="124">SENTANI</option>
                                <option value="597">SERAN</option>
                                <option value="245">SERANG</option>
                                <option value="416">SERITI</option>
                                <option value="98">SERUI</option>
                                <option value="432">SIABAL - ABAL</option>
                                <option value="312">SIALANG BUAH</option>
                                <option value="136">SIBOLGA</option>
                                <option value="418">SIDIKALANG</option>
                                <option value="301">SIDINGKAT</option>
                                <option value="5">SIDOARJO</option>
                                <option value="513">SIDOPO</option>
                                <option value="581">SIDOREJO</option>
                                <option value="151">SIGALAGALA</option>
                                <option value="293">SIMALUNGUN</option>
                                <option value="603">SIMANGAMBAT</option>
                                <option value="305">SIMANGUMBAN</option>
                                <option value="249">SIMPANG EMPAT</option>
                                <option value="444">SINGAPORE</option>
                                <option value="431">SINGAPURA</option>
                                <option value="377">SINGARAJA</option>
                                <option value="426">SINGKAWANG</option>
                                <option value="270">SINGOSARI</option>
                                <option value="186">SINJAI</option>
                                <option value="568">SIPOLHA</option>
                                <option value="230">SIRI SORI ISLAM</option>
                                <option value="434">SISARAHILI</option>
                                <option value="452">SISARAHILI</option>
                                <option value="363">SITABOTABO</option>
                                <option value="54">SITUBONDO</option>
                                <option value="451">SIWALUBANUA</option>
                                <option value="291">SLEMAN</option>
                                <option value="545">SOAHUKU</option>
                                <option value="596">SOE</option>
                                <option value="364">SOHOR LAMA</option>
                                <option value="247">SOLO</option>
                                <option value="36">SORONG</option>
                                <option value="481">SOSOR PANDIANGAN.</option>
                                <option value="207">SRAGEN</option>
                                <option value="47">SRIBAWONO</option>
                                <option value="331">STABAT</option>
                                <option value="257">STAGEN</option>
                                <option value="202">SUARABAYA</option>
                                <option value="280">SUBANG</option>
                                <option value="455">SUBUR INDAH</option>
                                <option value="78">SUKABUMI</option>
                                <option value="161">SUKOHARJO</option>
                                <option value="111">SUKOLILO</option>
                                <option value="149">SULAWESI</option>
                                <option value="408">SUMEDANG </option>
                                <option value="29">SUMENEP</option>
                                <option value="183">SUMUT</option>
                                <option value="333">SUNGAI PENJURU</option>
                                <option value="462">SUNGAI RAWA</option>
                                <option value="129">SUNGAI ULIN</option>
                                <option value="387">SUNGAILIAT</option>
                                <option value="1">SURABAYA</option>
                                <option value="255">SURABYA</option>
                                <option value="133">SURAKARTA</option>
                                <option value="413">SURINAME</option>
                                <option value="139">TABANAN BALI</option>
                                <option value="38">TAHUNA</option>
                                <option value="509">TAKALAR</option>
                                <option value="401">TALAWID</option>
                                <option value="288">TAMBAN</option>
                                <option value="367">TAMBANG-24</option>
                                <option value="402">TANAH BUMBU</option>
                                <option value="195">TANGERANG</option>
                                <option value="67">TANJUNG</option>
                                <option value="471">TANJUNG BALAI</option>
                                <option value="578">TANJUNG BALAI KARIMUN</option>
                                <option value="448">TANJUNG BARUS</option>
                                <option value="414">TANJUNG ENIM</option>
                                <option value="326">TANJUNG GADING</option>
                                <option value="436">TANJUNG KEMUNING</option>
                                <option value="369">TANJUNG MULIA</option>
                                <option value="583">TANJUNG PANDAN</option>
                                <option value="113">TANJUNG PINANG</option>
                                <option value="99">TANJUNG PRIOK</option>
                                <option value="407">TANJUNG REDEP</option>
                                <option value="577">TANJUNG SERI</option>
                                <option value="463">TANJUNG UBAN</option>
                                <option value="138">TAPANULI</option>
                                <option value="3">TARAKAN</option>
                                <option value="73">TARAKAN BARAT</option>
                                <option value="216">TARAKAN TENGAH</option>
                                <option value="218">TARUNTUNG</option>
                                <option value="352">TARUTUNG</option>
                                <option value="23">TASIKMALAYA</option>
                                <option value="457">TAWAU</option>
                                <option value="384">TB PENANJUNG</option>
                                <option value="327">TEBING TINGGI</option>
                                <option value="144">TEGAL</option>
                                <option value="30">TEKE</option>
                                <option value="196">TELUK BETUNG</option>
                                <option value="460">TELUK SULAIMAN</option>
                                <option value="523">TEMANGGUNG</option>
                                <option value="50">TEMBUNG</option>
                                <option value="590">TEPA</option>
                                <option value="290">TERNATE</option>
                                <option value="383">TEROS</option>
                                <option value="313">TG. BERINGIN</option>
                                <option value="262">TG. PANDAN</option>
                                <option value="308">TIMIKA</option>
                                <option value="122">TIMOR</option>
                                <option value="209">TJ PINANG RIAU</option>
                                <option value="540">TOLAI</option>
                                <option value="559">TOMALEHU</option>
                                <option value="520">TOMANGGONG</option>
                                <option value="37">TONDANO</option>
                                <option value="231">TORAJA</option>
                                <option value="19">TRENGGALEK</option>
                                <option value="125">TUAL</option>
                                <option value="84">TUBAN</option>
                                <option value="58">TULUNGAGUNG</option>
                                <option value="276">TUNGKARAN PANGERAN</option>
                                <option value="40">UJUNG PANDANG</option>
                                <option value="500">ULEE GAJAH</option>
                                <option value="166">WAINGAPU</option>
                                <option value="393">WAINGAPU SUMBA TIMUR</option>
                                <option value="602">WAMENA</option>
                                <option value="403">WANCI</option>
                                <option value="493">WAO LANAO DS</option>
                                <option value="89">WARU- SIDOARJO</option>
                                <option value="46">WATUMEA</option>
                                <option value="289">WAYGALIH</option>
                                <option value="92">WONOGIRI</option>
                                <option value="192">WONOSOBO</option>
                                <option value="59">YOGYAKARTA</option>
                            </select>
                            
                        </div>
                        
                    </div>                    
                    
                </div>
                  
                <!-- Form apply kanan -->
                <div class="col-sm-6">
                    
                    <div class="form-group">
                    
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    File Photo
                                </strong>
                            </label>
                            
                            <!-- input code preview foto -->
                            <form action="#">
                                <div class="file-field col-sm-4">
                                  <div class="btn btn-outline-danger waves-effect btn-lg">
                                    <span>
                                        <p style="font-size: 9px;">
                                            Choose files
                                        </p>
                                    </span>
                                      <input type="file" id="image-source" onchange="previewImage();" name="fP" required/>                                    
                                  </div>
                                    <br>
                                    <div id="div_photo" style="; display:flex;justify-content: center;align-items: center; width: 140px; height: 170px; border: 1px solid grey; margin-left: 6px;">
                                        <img id="image-preview" style="max-width: 99%; max-height: 98%; margin: 2px;" src="">
                                    </div>                                   
                                </div>
                            </form>
                        
                        </div>
                            
                    </div>
                    
                     <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Shoes
                                </strong>
                                
                            </label>
                            
                            <div class="col-sm-2 md-form">                                
                                <input type="text" class="form-control" id="shoes" name="sS" placeholder="Size">
                                
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Wearpack Size
                                </strong>
                                
                            </label>
                            
                            <select class="mdb-select md-form col-sm-3" name="wPS">
                                <option value="-" disabled="">-</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                                <option value="XXL">XXL</option>                               

                            </select>
                               
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Shirt Size
                                </strong>
                                
                            </label>
                            
                            <select class="mdb-select md-form col-sm-3" name="shirtS">
                                <option value="-" disabled="">-</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                                <option value="XXL">XXL</option>                               

                            </select>
                               
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                    
                        <div class="form-row">
                            
                            <label class="col-sm-4">
                                <strong>
                                    Height / Weight
                                </strong>
                            </label>
                            
                            <div class="col-sm-2 ">
                                <input type="text" class="form-control" id="txt_height" placeholder="CM" name="he" required>
                            </div>
                            
                            <div class="col-sm-2 ">
                                <input type="text" class="form-control" id="txt_weight" placeholder="KG" name="we" required>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Blood Type
                                </strong>
                                
                            </label>
                            
                            <select class="mdb-select md-form col-sm-3" name="bT">
                                <option value="-" disabled="">-</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="O">O</option>
                                <option value="AB">AB</option>                             

                            </select>
                               
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                    
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Passpor number
                                </strong>
                            </label>
                            
                            <div class="col-sm-4 md-form">
                                <input type="text" id="Pass_number" placeholder="Passpor Number" name="pN" class="form-control">
                            </div>
                            
                            <div class="md-form col-sm-4">
                                <input placeholder="Expired Date" type="text" name="pE" class="datepicker form-control">
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                    
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Seaman book number
                                </strong>
                            </label>
                            
                            <div class="col-sm-4 md-form">
                                <input type="text" id="sailor_number" placeholder="Sailor Book Number" name="sN" class="form-control">
                            </div>
                            
                            <div class="md-form col-sm-4">
                                <input placeholder="Expired Date" type="text" class="datepicker form-control" name="sE">
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                    
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Medical Check Up Number
                                </strong>
                            </label>
                            
                            <div class="col-sm-4 md-form">
                                <input type="text" id="medical_number" placeholder="Medical Check Up Number" name="mN" class="form-control">
                            </div>
                            
                            <div class="md-form col-sm-4">
                                <input placeholder="Expired Date" type="text" name="mE" class="datepicker form-control">
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Certificate of Competency / Ijasah Kelautan
                                </strong>
                                
                            </label>
                            
                            <select class="mdb-select md-form col-sm-4" name="cCS" required>
                                
                                <option value="-" disabled="">-</option>                                
                                <option value="ANT I">ANT I</option>
                                <option value="ANT II">ANT II</option>
                                <option value="ANT III">ANT III</option>
                                <option value="ANT IV">ANT IV</option>
                                <option value="ANT V">ANT V</option>
                                <option value="ANT D">ANT D</option>
                                <option value="SRE I">SRE I</option>
                                <option value="SRE II">SRE II</option>
                                <option value="ATT I">ATT I</option>
                                <option value="ATT II">ATT II</option>
                                <option value="ATT III">ATT III</option>
                                <option value="ATT IV">ATT IV</option>
                                <option value="ATT V">ATT V</option>
                                <option value="ATT D">ATT D</option>
                                <option value="RATING_ENG">RATING ABLE FORMING ENGINE</option>
                                <option value="RATING_NAV">RATING ABLE FORMING NAVIGATION</option>
                                <option value="BST">BST</option>
                                <option value="ETO">ETO</option>
                                <option value="ETR">ETR</option>
                                <option value="SOU">SOU</option>

                            </select>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                    
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Certificate Number
                                </strong>
                            </label>
                            
                            <div class="col-sm-4 md-form">
                                <input type="text" id="certificate_number" placeholder="Certificate Number" name="cN" class="form-control">
                            </div>
                            
                            <div class="md-form col-sm-4">
                                <input placeholder="Issued Date" type="text" class="datepicker form-control" name="cI">
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                    
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                <strong>
                                    Endorsement Number
                                </strong>
                            </label>
                            
                            <div class="col-sm-4 md-form">
                                <input type="text" id="Endorsement_number" placeholder="Endorsement Number" name="eN" class="form-control">
                            </div>
                            
                            <div class="md-form col-sm-4">
                                <input placeholder="Issued Date" type="text" class="datepicker form-control" name="eI">
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label for="rad_english" class="col-sm-4 md-form">
                                <strong>
                                    English Language
                                </strong>
                            </label>
                            
                            <div class="form-check form-check-inline col-sm-2 md-form">
                                <input type="radio" class="form-check-input" id="rad_active" name="eL" value="Active">
                              <label class="form-check-label" for="rad_active">Active</label>
                            </div>
                            
                            <div class="form-check form-check-inline col-sm-2 md-form">
                                <input type="radio" class="form-check-input" id="rad_passive" name="eL" value="Passive">
                              <label class="form-check-label" for="rad_passive">Passive</label>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="form-row">
                            
                            <label class="col-sm-4 md-form">
                                
                                <strong>
                                    Other Language
                                </strong>
                                
                            </label>
                            
                            <div class="green-border-focus col-sm-6">                                
                                <textarea class="md-form" id="other_lang" rows="3" placeholder="Other Language" name="oL"></textarea>
                            </div>
                    
                        </div>
                        
                    </div>
                    
                    <!-- unused -->
                    <input type="hidden" class="form-control" name="rW" placeholder="Size">
                    <input type="hidden" class="form-control" name="travel" placeholder="Size">
                    <input type="hidden" class="form-control" name="mutation" placeholder="Size">
                    <input type="hidden" class="form-control" name="dLA" placeholder="Size">
                    <input type="hidden" class="form-control" name="dLB" placeholder="Size">
                    <input type="hidden" class="form-control" name="dLC" placeholder="Size">
                    <input type="hidden" class="form-control" name="ve" placeholder="Size">
                    <input type="hidden" class="form-control" name="rC" placeholder="Size">
                    <input type="hidden" class="form-control" name="cD" placeholder="Size">
                    <input type="hidden" class="form-control" name="rFE" placeholder="Size">
                    <input type="hidden" class="form-control" name="fED" placeholder="Size">
                    <input type="hidden" class="form-control" name="rFPT" placeholder="Size">
                    <input type="hidden" class="form-control" name="fPD" placeholder="Size">
                    <input type="hidden" class="form-control" name="rG" placeholder="Size">
                    <input type="hidden" class="form-control" name="rT" placeholder="Size">
                    <input type="hidden" class="form-control" name="q1" placeholder="Size">
                    <input type="hidden" class="form-control" name="q2" placeholder="Size">
                    <input type="hidden" class="form-control" name="q3" placeholder="Size">

                </div>
                
                <button class="btn btn-outline-danger btn-rounded waves-effect btn-lg float-left" type="submit">
                    <span>Next</span>
                    <i class="fas fa-arrow-right"></i>
                </button>

                </div>
                  </form>   
              </div>
                
            <div class="tab-pane fade" id="follow-classic" role="tabpanel" aria-labelledby="follow-tab-classic">

            </div>
            <div class="tab-pane fade" id="contact-classic" role="tabpanel" aria-labelledby="contact-tab-classic">

            </div>
           </div>

        </div>
        <!-- Classic tabs -->
                
        </div>
        
        <div class="position-relative bg-danger text-white pt-3 pb-5 py-md-3">
           
            <!-- Mobile -->
            <div class="d-md-none">
                
                <div class="justify-content-center align-items-center d-flex">
                    
                    <i class="fas fa-phone mr-2" style="font-size: 22px;"></i>
                    
                    <div class="d-flex flex-column flex-md-row 
                         justify-content-center align-items-start 
                         align-items-md-center">
                        
                        <a href="tel:0811633388" class="font-size-11 
                           font-size-md-12 d-flex flex-wrap text-white">
                            
                            <span class="flex-shrink mr-2">
                                CALL CENTER
                            </span>
                            
                            <span class="flex-shrink">
                                <b>081-163-3388</b>
                            </span>
                            
                        </a>
                        
                        <div class="mx-2 d-none d-md-flex position-relative layout-footer__divider"></div>
                        <a href="https://wa.me/62811333799" class="font-size-11 font-size-md-12 d-flex flex-wrap text-white">
                            <span class="flex-shrink mr-2">
                                WA
                            </span>
                            <span class="flex-shrink">
                                <b>081-133-3799</b>
                            </span>
                        </a>
                    </div>
                    <a aria-label="instagram icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.instagram.com/ptspil/">
                        <i class="fab fa-instagram" style="font-size: 22px;"></i>
                    </a>
                    <a aria-label="facebook icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.facebook.com/ptspil/">
                        <i class="fab fa-facebook-square" style="font-size: 22px;"></i>
                    </a>
                    <a aria-label="linkedin icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.linkedin.com/company/pt-salam-pacific-indonesia-lines/">
                        <i class="fab fa-linkedin" style="font-size: 22px;"></i>
                    </a>
                </div>
                
                <hr class="border-white my-3">
                
            </div>
            
            <!-- Desktop -->
            <div class="px-3 text-center text-md-left d-md-flex justify-content-md-between align-items-md-center">
                <div class="mr-md-3 font-size-10"></div>
                    
                    <div class="justify-content-center align-items-center d-none d-md-flex flex-shrink">
                        <i class="fas fa-mobile-alt" style="font-size: 22px;"></i>
                        <div class="d-flex flex-column flex-md-row justify-content-center align-items-start align-items-md-center">
                            <a href="tel:0811633388" class="font-size-11 font-size-md-12 d-flex flex-wrap text-white">
                                <span class="flex-shrink mr-2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;CALL CENTER
                                </span>
                                <span class="flex-shrink">
                                    <b>081-163-3388</b>
                                </span>
                            </a>
                            <div class="mx-2 d-none d-md-flex position-relative layout-footer__divider"></div>
                            <a href="https://wa.me/62811333799" class="font-size-11 font-size-md-12 d-flex flex-wrap text-white">
                                <span class="flex-shrink mr-2">
                                    WA
                                </span>
                                <span class="flex-shrink">
                                    <b>081-133-3799</b>
                                </span>
                            </a>
                        </div>
                            <a aria-label="instagram icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.instagram.com/ptspil/">
                                <i class="font-size-22 fab fa-instagram"></i>
                            </a>
                            <a aria-label="facebook icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.facebook.com/ptspil/">
                                <i class="font-size-22 fab fa-facebook"></i>
                            </a>
                            <a aria-label="linkedin icon" class="text-white ml-4" target="_blank" rel="noopener" href="https://www.linkedin.com/company/pt-salam-pacific-indonesia-lines/">
                                <i class="font-size-23 fab fa-linkedin"></i>
                            </a>
                    </div>
            </div>
        </div>
        
        <script type="text/javascript">
            // Material Select Initialization
            $(document).ready(function() {
            $('.mdb-select').materialSelect();
            });
        </script>
        
        <script type="text/javascript">
            $('.datepicker').pickadate({
                today: '',
                clear: 'Clear selection',
                close: 'Cancel'
                });
        </script>
        
        <script type="text/javascript">
            function previewImage() {
            document.getElementById("image-preview").style.display = "block";
            var oFReader = new FileReader();
             oFReader.readAsDataURL(document.getElementById("image-source").files[0]);

            oFReader.onload = function(oFREvent) {
              document.getElementById("image-preview").src = oFREvent.target.result;
            };
          };
        </script>
                
    </body>
    
</html>
<%@include file="footer " %>
