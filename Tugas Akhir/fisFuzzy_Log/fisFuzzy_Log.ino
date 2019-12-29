// Pemanggilan Library
#include <DHT.h>
#include <SPI.h> 
#include <Ethernet.h>
#include "fis_header.h"
#include "RBDdimmer.h"

// Inisialisasi Dimmer Channel
#define outputPinKipas  9  // PWM
#define outputPinLampu  10 // PWM
#define outputPinPupuk  11 // PWM
#define outputPinKapur  12 // PWM
#define zerocross  2 // Z-C 

dimmerLamp dimmer1(outputPinKipas); //Inisialisasi untuk dimmer Arduino Mega 2560
//dimmerLamp dimmer2(outputPinLampu); //Inisialisasi untuk dimmer Arduino Mega 2560
//dimmerLamp dimmer3(outputPinPupuk); //Inisialisasi untuk dimmer Arduino Mega 2560
//dimmerLamp dimmer4(outputPinKapur); //Inisialisasi untuk dimmer Arduino Mega 2560

//Inisialisasi Sensor DHT11
DHT dht(8, DHT11); // Menyambungkan data dht ke pin 8, Jenis / Type DHT11
double suhu = 0;
double kelembaban =0;

//Inisialisasi Sensor YL-69
int sensorPin = A0; // pin sensor AO pada Sensor YL-69
int powerPin = 6;   // pin 6 yang terbuhubung dengan AO pada sensor YL-69

///////////////////////////////////////////////////////////////////////////////////////////
byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };   // physical mac address
byte ip[] = { 192, 168, 0, 101 };                      // ip arduino
byte gateway[] = { 192, 168, 0, 1 };                   // internet access via router
byte subnet[] = { 255, 255, 0, 0 };                    // subnet mask
EthernetServer server(80);                             // server port
char server2[] = "192.168.0.1";                        // ip server pc 
EthernetClient client;                                 // client pc
//////////////////////////////////////////////////////////////////////////////////////////

// Number of inputs to the fuzzy inference system
const int fis_gcI = 2;
// Number of outputs to the fuzzy inference system
const int fis_gcO = 3;
// Number of rules to the fuzzy inference system
const int fis_gcR = 9;

FIS_TYPE g_fisInput[fis_gcI];
FIS_TYPE g_fisOutput[fis_gcO];

void setup()
{
    while (!Serial)
    {
      ; // Untuk menunggu arduino siap berkomunikasi
    }
    
    Serial.begin(9600); // Komunikasi untuk arduino dengan komputer / laptop

    dimmer1.begin(NORMAL_MODE, ON); //Inisialisasi dimmer untuk berjalan di mode ON (Kipas)
    //dimmer2.begin(NORMAL_MODE, ON); //Inisialisasi dimmer untuk berjalan di mode ON (Lampu)
    //dimmer3.begin(NORMAL_MODE, ON); //Inisialisasi dimmer untuk berjalan di mode ON (Pupuk)
    //dimmer4.begin(NORMAL_MODE, ON); //Inisialisasi dimmer untuk berjalan di mode ON (Kapur)
    
    //YL-69
    pinMode(powerPin, OUTPUT); // Menentukan pin 6 sebagai OUTPUT
    digitalWrite(powerPin, LOW); // Memberikan tegangan  pin 6 sebesar 0V (mati)
  
    dht.begin(); // Untuk menyalakan sensor DHT11
  
    Ethernet.begin(mac, ip, gateway, subnet); // Setting jaringan
    Serial.print("server is at ");
    Serial.println(Ethernet.localIP());
}

void loop()
{    
    if (client.connect(server2, 80))
    {    
      g_fisInput[0] = dht.readTemperature(); //Untuk membaca sensor suhu pada dht11
      float hasil = bacaSensor(); // Untuk penampung nilai pada bacaSensor()
      g_fisInput[1] = hasil / 1023 * 100; // Untuk hasil presentase pada sensor YL-69
      Serial.println("Terhubung ke server...");
     
      client.print( "GET /sensor/index.php?"); //Untuk mengakses data dari web services yang terletak di server web
      client.print("s=");
      client.print(g_fisInput[0]);
      client.print("&k=");
      client.print(g_fisInput[1]);
      
      Serial.print("suhu ");
      Serial.print(g_fisInput[0]); 
      Serial.print(" Kelembaban  ");
      Serial.print(g_fisInput[1]);  
      
      client.println();
      client.println( " HTTP/1.1"); //Untuk Tipe HTTP 1.1
      client.print( "Host: " );
      client.println(server2);
      client.println( "Connection: close" );
      client.println();
      client.stop();
      delay(5000);  // jarak waktu delay 5 detik
      client.stop();
      
    }
  
    else
    {
      Serial.println("Connection Failed");
    }

    g_fisOutput[0] = 30; // Setting Power Low pada dimmer 
    g_fisOutput[1] = 60; // Setting Power Medium pada dimmer 
    g_fisOutput[2] = 90; // Setting Power High pada dimmer
    
    fis_evaluate();

      //1 kipas
      //2 lampu
      //3 pupuk
      //4 kapur
    
      if (g_fisInput[0] < 24 && g_fisInput[1] < 50)                 
      {
          dimmer1.setPower(g_fisOutput[0]);
          //dimmer2.setPower(g_fisOutput[2]);
         //dimmer3.setPower(g_fisOutput[2]);
         // dimmer4.setPower(g_fisOutput[0]);
         Serial.print(" |Nyala Kipas 'Pelan' ");
         delay(500);
      }

      if (g_fisInput[0] < 24)
      {
        if (g_fisInput[1] >= 50 && g_fisInput[1] <= 70)
        {
          dimmer1.setPower(g_fisOutput[0]);
          Serial.print(" |Nyala Kipas 'Pelan' ");
          //dimmer2.setPower(g_fisOutput[2]);
          //dimmer3.setPower(g_fisOutput[1]);
          //dimmer4.setPower(g_fisOutput[1]);
          delay(500);
        }
      }

      if (g_fisInput[0] < 24 && g_fisInput[1] > 70)
      {
          dimmer1.setPower(g_fisOutput[0]);
          Serial.print(" |Nyala Kipas 'Pelan' ");
         // dimmer2.setPower(g_fisOutput[2]);
         // dimmer4.setPower(g_fisOutput[2]);
         // dimmer3.setPower(g_fisOutput[0]);
         delay(500);
      }

      if (g_fisInput[0] >= 24 && g_fisInput[0] <= 27)
      {
        if (g_fisInput[1] < 50)
        {
          dimmer1.setPower(g_fisOutput[1]);
          Serial.print(" |Nyala Kipas 'Sedang' ");
         // dimmer2.setPower(g_fisOutput[1]);
         // dimmer3.setPower(g_fisOutput[2]);
         // dimmer4.setPower(g_fisOutput[0]);
         delay(500);
        }
      }

      if (g_fisInput[0] >= 24 && g_fisInput[0] <= 27)
      {
        if (g_fisInput[1] >= 50 && g_fisInput[1] <= 70)
        {
          dimmer1.setPower(g_fisOutput[1]);
          Serial.print(" |Nyala Kipas 'Sedang' ");
         // dimmer2.setPower(g_fisOutput[1]);
         // dimmer3.setPower(g_fisOutput[1]);
         // dimmer4.setPower(g_fisOutput[1]);
         delay(500);
        }
      }

     if (g_fisInput[0] >= 24 && g_fisInput[0] <= 27)
     {
        if (g_fisInput[1] > 70)
        {
          dimmer1.setPower(g_fisOutput[1]);
          Serial.print(" |Nyala Kipas 'Sedang' ");
         // dimmer2.setPower(g_fisOutput[1]);
         // dimmer3.setPower(g_fisOutput[0]);
          //dimmer4.setPower(g_fisOutput[2]);
          delay(500);
        }
      }

     if (g_fisInput[0] > 27 && g_fisInput[1] < 50)
      {
          dimmer1.setPower(g_fisOutput[2]);
          Serial.print(" |Nyala Kipas 'Kencang' ");
         // dimmer2.setPower(g_fisOutput[0]);
         // dimmer3.setPower(g_fisOutput[2]);
         // dimmer4.setPower(g_fisOutput[0]);
         delay(500);
      }

      if (g_fisInput[0] > 27)
      {
        if (g_fisInput[1] >= 50 && g_fisInput[1] <= 70)
        {
          dimmer1.setPower(g_fisOutput[2]);
          Serial.print(" |Nyala Kipas 'Kencang' ");
         // dimmer2.setPower(g_fisOutput[0]);
         // dimmer3.setPower(g_fisOutput[1]);
         // dimmer4.setPower(g_fisOutput[1]);
         delay(500);
        }
      }

      if (g_fisInput[0] > 27 && g_fisInput[1] > 70)
      {
          dimmer1.setPower(g_fisOutput[2]);
          Serial.print(" |Nyala Kipas 'Kencang' ");
         // dimmer2.setPower(g_fisOutput[0]);
        //  dimmer3.setPower(g_fisOutput[0]);
         // dimmer4.setPower(g_fisOutput[2]);
         
      }
      
 delay(1000);
}

float bacaSensor() 
{
  digitalWrite(powerPin, HIGH); // Memberikan tegangan pada pin 6 sebesar 3,3V
  delay(500); // dentang waktu 0,5 detik
  float nilaiSensor = analogRead(sensorPin); //Membaca nilai sensor pada pin AO
  digitalWrite(powerPin, LOW); // Memberikan tegangan pada pin 6 sebesar 0V (mati)
  return 1023 - nilaiSensor; // Makin lembab maka makin tinggi nilai outputnya, nilai 1023 merupakan nilai maksimum dari sensor yl-69
}

//***********************************************************************
// Support functions for Fuzzy Inference System                          
//***********************************************************************
// Triangular Member Function
FIS_TYPE fis_trimf(FIS_TYPE x, FIS_TYPE* p)
{
    FIS_TYPE a = p[0], b = p[1], c = p[2];
    FIS_TYPE t1 = (x - a) / (b - a);
    FIS_TYPE t2 = (c - x) / (c - b);
    if ((a == b) && (b == c)) return (FIS_TYPE) (x == a);
    if (a == b) return (FIS_TYPE) (t2*(b <= x)*(x <= c));
    if (b == c) return (FIS_TYPE) (t1*(a <= x)*(x <= b));
    t1 = min(t1, t2);
    return (FIS_TYPE) max(t1, 0);
}

FIS_TYPE fis_min(FIS_TYPE a, FIS_TYPE b)
{
    return min(a, b);
}

FIS_TYPE fis_max(FIS_TYPE a, FIS_TYPE b)
{
    return max(a, b);
}

FIS_TYPE fis_array_operation(FIS_TYPE *array, int size, _FIS_ARR_OP pfnOp)
{
    int i;
    FIS_TYPE ret = 0;

    if (size == 0) return ret;
    if (size == 1) return array[0];

    ret = array[0];
    for (i = 1; i < size; i++)
    {
        ret = (*pfnOp)(ret, array[i]);
    }

    return ret;
}


//***********************************************************************
// Data for Fuzzy Inference System                                       
//***********************************************************************
// Pointers to the implementations of member functions
_FIS_MF fis_gMF[] =
{
    fis_trimf
};

// Count of member function for each Input
int fis_gIMFCount[] = { 3, 3 };

// Count of member function for each Output 
int fis_gOMFCount[] = { 3, 3, 3, 3 };

// Coefficients for the Input Member Functions
FIS_TYPE fis_gMFI0Coeff1[] = { 20, 20, 24 };
FIS_TYPE fis_gMFI0Coeff2[] = { 23, 25.5, 28 };
FIS_TYPE fis_gMFI0Coeff3[] = { 27, 33, 33 };
FIS_TYPE* fis_gMFI0Coeff[] = { fis_gMFI0Coeff1, fis_gMFI0Coeff2, fis_gMFI0Coeff3 };
FIS_TYPE fis_gMFI1Coeff1[] = { 0, 0, 50 };
FIS_TYPE fis_gMFI1Coeff2[] = { 40, 60, 80 };
FIS_TYPE fis_gMFI1Coeff3[] = { 70, 100, 100 };
FIS_TYPE* fis_gMFI1Coeff[] = { fis_gMFI1Coeff1, fis_gMFI1Coeff2, fis_gMFI1Coeff3 };
FIS_TYPE** fis_gMFICoeff[] = { fis_gMFI0Coeff, fis_gMFI1Coeff };

// Coefficients for the Output Member Functions
FIS_TYPE fis_gMFO0Coeff1[] = { 0, 0, 0.5 };
FIS_TYPE fis_gMFO0Coeff2[] = { 0, 0.5, 1 };
FIS_TYPE fis_gMFO0Coeff3[] = { 0.5, 1, 1 };
FIS_TYPE* fis_gMFO0Coeff[] = { fis_gMFO0Coeff1, fis_gMFO0Coeff2, fis_gMFO0Coeff3 };
FIS_TYPE fis_gMFO1Coeff1[] = { 0, 0, 0.5 };
FIS_TYPE fis_gMFO1Coeff2[] = { 0, 0.5, 1 };
FIS_TYPE fis_gMFO1Coeff3[] = { 0.5, 1, 1 };
FIS_TYPE* fis_gMFO1Coeff[] = { fis_gMFO1Coeff1, fis_gMFO1Coeff2, fis_gMFO1Coeff3 };
FIS_TYPE fis_gMFO2Coeff1[] = { 0, 0, 0.5 };
FIS_TYPE fis_gMFO2Coeff2[] = { 0, 0.5, 1 };
FIS_TYPE fis_gMFO2Coeff3[] = { 0.5, 1, 1 };
FIS_TYPE* fis_gMFO2Coeff[] = { fis_gMFO2Coeff1, fis_gMFO2Coeff2, fis_gMFO2Coeff3 };
FIS_TYPE fis_gMFO3Coeff1[] = { 0, 0, 0.5 };
FIS_TYPE fis_gMFO3Coeff2[] = { 0, 0.5, 1 };
FIS_TYPE fis_gMFO3Coeff3[] = { 0.5, 1, 1 };
FIS_TYPE* fis_gMFO3Coeff[] = { fis_gMFO3Coeff1, fis_gMFO3Coeff2, fis_gMFO3Coeff3 };
FIS_TYPE** fis_gMFOCoeff[] = { fis_gMFO0Coeff, fis_gMFO1Coeff, fis_gMFO2Coeff, fis_gMFO3Coeff };

// Input membership function set
int fis_gMFI0[] = { 0, 0, 0 };
int fis_gMFI1[] = { 0, 0, 0 };
int* fis_gMFI[] = { fis_gMFI0, fis_gMFI1};

// Output membership function set
int fis_gMFO0[] = { 0, 0, 0 };
int fis_gMFO1[] = { 0, 0, 0 };
int fis_gMFO2[] = { 0, 0, 0 };
int fis_gMFO3[] = { 0, 0, 0 };
int* fis_gMFO[] = { fis_gMFO0, fis_gMFO1, fis_gMFO2, fis_gMFO3};

// Rule Weights
FIS_TYPE fis_gRWeight[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1 };

// Rule Type
int fis_gRType[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1 };

// Rule Inputs
int fis_gRI0[] = { 1, 1 };
int fis_gRI1[] = { 1, 2 };
int fis_gRI2[] = { 1, 3 };
int fis_gRI3[] = { 2, 1 };
int fis_gRI4[] = { 2, 2 };
int fis_gRI5[] = { 2, 3 };
int fis_gRI6[] = { 3, 1 };
int fis_gRI7[] = { 3, 2 };
int fis_gRI8[] = { 3, 3 };
int* fis_gRI[] = { fis_gRI0, fis_gRI1, fis_gRI2, fis_gRI3, fis_gRI4, fis_gRI5, fis_gRI6, fis_gRI7, fis_gRI8 };

// Rule Outputs
int fis_gRO0[] = { 3, 3, 0, 0 };
int fis_gRO1[] = { 3, 2, 0, 2 };
int fis_gRO2[] = { 3, 0, 0, 3 };
int fis_gRO3[] = { 2, 3, 2, 0 };
int fis_gRO4[] = { 2, 2, 2, 2 };
int fis_gRO5[] = { 2, 0, 2, 3 };
int fis_gRO6[] = { 0, 3, 3, 0 };
int fis_gRO7[] = { 0, 2, 3, 2 };
int fis_gRO8[] = { 0, 0, 3, 3 };
int* fis_gRO[] = { fis_gRO0, fis_gRO1, fis_gRO2, fis_gRO3, fis_gRO4, fis_gRO5, fis_gRO6, fis_gRO7, fis_gRO8 };

// Input range Min
FIS_TYPE fis_gIMin[] = { 20, 0 };

// Input range Max
FIS_TYPE fis_gIMax[] = { 33, 100 };

// Output range Min
FIS_TYPE fis_gOMin[] = { 0, 0, 0, 0 };

// Output range Max
FIS_TYPE fis_gOMax[] = { 1, 1, 1, 1 };

//***********************************************************************
// Data dependent support functions for Fuzzy Inference System           
//***********************************************************************
FIS_TYPE fis_MF_out(FIS_TYPE** fuzzyRuleSet, FIS_TYPE x, int o)
{
    FIS_TYPE mfOut;
    int r;

    for (r = 0; r < fis_gcR; ++r)
    {
        int index = fis_gRO[r][o];
        if (index > 0)
        {
            index = index - 1;
            mfOut = (fis_gMF[fis_gMFO[o][index]])(x, fis_gMFOCoeff[o][index]);
        }
        else if (index < 0)
        {
            index = -index - 1;
            mfOut = 1 - (fis_gMF[fis_gMFO[o][index]])(x, fis_gMFOCoeff[o][index]);
        }
        else
        {
            mfOut = 0;
        }

        fuzzyRuleSet[0][r] = fis_min(mfOut, fuzzyRuleSet[1][r]);
    }
    return fis_array_operation(fuzzyRuleSet[0], fis_gcR, fis_max);
}

FIS_TYPE fis_defuzz_centroid(FIS_TYPE** fuzzyRuleSet, int o)
{
    FIS_TYPE step = (fis_gOMax[o] - fis_gOMin[o]) / (FIS_RESOLUSION - 1);
    FIS_TYPE area = 0;
    FIS_TYPE momentum = 0;
    FIS_TYPE dist, slice;
    int i;

    // calculate the area under the curve formed by the MF outputs
    for (i = 0; i < FIS_RESOLUSION; ++i){
        dist = fis_gOMin[o] + (step * i);
        slice = step * fis_MF_out(fuzzyRuleSet, dist, o);
        area += slice;
        momentum += slice*dist;
    }

    return ((area == 0) ? ((fis_gOMax[o] + fis_gOMin[o]) / 2) : (momentum / area));
}

//***********************************************************************
// Fuzzy Inference System                                                
//***********************************************************************
void fis_evaluate()
{
    FIS_TYPE fuzzyInput0[] = { 0, 0, 0 };
    FIS_TYPE fuzzyInput1[] = { 0, 0, 0 };
    FIS_TYPE* fuzzyInput[fis_gcI] = { fuzzyInput0, fuzzyInput1, };
    FIS_TYPE fuzzyOutput0[] = { 0, 0, 0 };
    FIS_TYPE fuzzyOutput1[] = { 0, 0, 0 };
    FIS_TYPE fuzzyOutput2[] = { 0, 0, 0 };
    FIS_TYPE fuzzyOutput3[] = { 0, 0, 0 };
    FIS_TYPE* fuzzyOutput[fis_gcO] = { fuzzyOutput0, fuzzyOutput1, fuzzyOutput2, };
    FIS_TYPE fuzzyRules[fis_gcR] = { 0 };
    FIS_TYPE fuzzyFires[fis_gcR] = { 0 };
    FIS_TYPE* fuzzyRuleSet[] = { fuzzyRules, fuzzyFires };
    FIS_TYPE sW = 0;

    // Transforming input to fuzzy Input
    int i, j, r, o;
    for (i = 0; i < fis_gcI; ++i)
    {
        for (j = 0; j < fis_gIMFCount[i]; ++j)
        {
            fuzzyInput[i][j] =
                (fis_gMF[fis_gMFI[i][j]])(g_fisInput[i], fis_gMFICoeff[i][j]);
        }
    }

    int index = 0;
    for (r = 0; r < fis_gcR; ++r)
    {
        if (fis_gRType[r] == 1)
        {
            fuzzyFires[r] = FIS_MAX;
            for (i = 0; i < fis_gcI; ++i)
            {
                index = fis_gRI[r][i];
                if (index > 0)
                    fuzzyFires[r] = fis_min(fuzzyFires[r], fuzzyInput[i][index - 1]);
                else if (index < 0)
                    fuzzyFires[r] = fis_min(fuzzyFires[r], 1 - fuzzyInput[i][-index - 1]);
                else
                    fuzzyFires[r] = fis_min(fuzzyFires[r], 1);
            }
        }
        else
        {
            fuzzyFires[r] = FIS_MIN;
            for (i = 0; i < fis_gcI; ++i)
            {
                index = fis_gRI[r][i];
                if (index > 0)
                    fuzzyFires[r] = fis_max(fuzzyFires[r], fuzzyInput[i][index - 1]);
                else if (index < 0)
                    fuzzyFires[r] = fis_max(fuzzyFires[r], 1 - fuzzyInput[i][-index - 1]);
                else
                    fuzzyFires[r] = fis_max(fuzzyFires[r], 0);
            }
        }

        fuzzyFires[r] = fis_gRWeight[r] * fuzzyFires[r];
        sW += fuzzyFires[r];
    }
}
