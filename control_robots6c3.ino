  //#include <WiFi.h>

#include <HTTPClient.h>
#include <string>
#include <WiFiMulti.h>
#include <BLEDevice.h>

#define USE_SERIAL Serial

WiFiMulti wifiMulti;

// use board xiao_esp32c3 in board manager 
//
// and in prefernces use :-
// http://arduino.esp8266.com/stable/package_esp8266com_index.json
// https://dl.espressif.com/dl/package_esp32_index.json
// https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_dev_index.json
//
// use minimal spiffs (1.9mb apps with ota/190kb spiffs) in partition scheme
//

String board = "esp32mini";
String boardaddr;


static boolean doConnect = false;
static boolean connected = false; 
static boolean doScan = false;

static BLERemoteCharacteristic* pRemoteCharacteristic;
static BLEAdvertisedDevice* myDevice;

static BLERemoteCharacteristic* pRemoteCharacteristic1;
static BLEAdvertisedDevice* myDevice1;

static BLERemoteCharacteristic* pRemoteCharacteristic2;
static BLEAdvertisedDevice* myDevice2;

static BLERemoteCharacteristic* pRemoteCharacteristic3;
static BLEAdvertisedDevice* myDevice3;

String robothttp;
String robot1;
String robot2;
String robot3;
String robot4;

int robotcnt = 0;
int robotloop = 0;

char macaddr3[18];
char macaddr2[18];
char macaddr1[18];
char macaddr[18];
char ser[37];
char cer[37];
char ser1[37];
char cer1[37];
char ser2[37];
char cer2[37];
char ser3[37];
char cer3[37];


static void notifyCallback(
  
  BLERemoteCharacteristic* pBLERemoteCharacteristic,
  uint8_t* pData,
  size_t length,
  bool isNotify) {
    Serial.println("notifyCallback - start");
    Serial.print("*");
    Serial.print(pBLERemoteCharacteristic->getUUID().toString().c_str());
    Serial.print("*");
}

HTTPClient http;

class MyClientCallback : public BLEClientCallbacks {
  void onConnect(BLEClient* pclient) {
    Serial.println("class MyClientCallback - start");
    
  }

  void onDisconnect(BLEClient* pclient) {
    Serial.println("diconnect called ");
    connected = false;
  }
};

bool connectToServer() {
      
static BLEUUID sUUID(ser);
static BLEUUID cUUID(cer);
static BLEUUID sUUID1(ser1); // was ser
static BLEUUID cUUID1(cer1); // was cer
static BLEUUID sUUID2(ser2); // was ser
static BLEUUID cUUID2(cer2); // was cer
static BLEUUID sUUID3(ser3); // was ser
static BLEUUID cUUID3(cer3); // was cer

String Charvalue;

      Serial.println("connectToServer - start");
 //     Serial.println(myDevice->getAddress().toString().c_str());  just cahnged this 2023/0329
    if (robotcnt > 0) 
    {

       Serial.println("createClient - start");
       BLEClient*  pClient  = BLEDevice::createClient();
       pClient->setClientCallbacks(new MyClientCallback());
       
       Serial.println("connect - start");    
       pClient->connect(BLEAddress(macaddr));  // mac address of robot need to trust device if hangs? how?
  // address of mippie

       Serial.println("setMTU - start");
//        pClient->setMTU(517);

       Serial.println("getservice - start");
       BLERemoteService* pRemoteService = pClient->getService(sUUID);
       if (pRemoteService == nullptr) 
       {
           Serial.println("nullptr returned is UUID s correct");
          pClient->disconnect();
          return false;
       }
       
       Serial.println("pRemoteCharacteristic - start");
       pRemoteCharacteristic = pRemoteService->getCharacteristic(cUUID);
       if (pRemoteCharacteristic == nullptr)
       {
        Serial.println("nullptr Characteristic returned - start");
        Serial.print("*");
        Serial.print(cUUID.toString().c_str());
        Serial.print("*");
        pClient->disconnect();
        return false;
       }
       
       Serial.println("pRemoteCharacteristic1 canRead - start");
       if(pRemoteCharacteristic->canRead()) 
       { 
         std::string value = pRemoteCharacteristic->readValue();
         Serial.println(value.c_str());
       }
       
       Serial.println("registerForNotify - start");
       if(pRemoteCharacteristic->canNotify())
       {
         pRemoteCharacteristic->registerForNotify(notifyCallback);
       }

       Serial.println("connectToServer - robot1 done");

   }

     if (robotcnt > 1) 
    {

       Serial.println("createClient2 - start");
       BLEClient*  pClient1  = BLEDevice::createClient();
       pClient1->setClientCallbacks(new MyClientCallback());
       
       Serial.println("connect2 - start"); 
       Serial.println(macaddr1); 
       pClient1->connect(BLEAddress(macaddr1));  // address of mippie

       Serial.println("setMTU2 - start");
//       pClient1->setMTU(517);

       Serial.println("getservice2 - start");
       BLERemoteService* pRemoteService1 = pClient1->getService(sUUID1);
       if (pRemoteService1 == nullptr) 
       {
          Serial.println("nullptr2 returned - start");
          pClient1->disconnect();
          return false;
       }
       
       Serial.println("pRemoteCharacteristic2 - start");
       pRemoteCharacteristic1 = pRemoteService1->getCharacteristic(cUUID1);
       if (pRemoteCharacteristic1 == nullptr)
       {
        Serial.println("nullptr2 Characteristic returned - start");
        Serial.print("*");
        Serial.print(pRemoteCharacteristic1->getUUID().toString().c_str());
        Serial.print("*");
        pClient1->disconnect();
        return false;
       }
       
       Serial.println("pRemoteCharacteristic2 canRead - start");
       if(pRemoteCharacteristic1->canRead()) 
       {
         std::string value = pRemoteCharacteristic1->readValue();
         Serial.println(value.c_str());
       }
       
       Serial.println("registerForNotify2 - start");
       if(pRemoteCharacteristic1->canNotify())
       {
         pRemoteCharacteristic1->registerForNotify(notifyCallback);
       }

       Serial.println("connectToServer - robot2 done");

    }
    if (robotcnt > 2) 
    {

       Serial.println("createClient - start");
       BLEClient*  pClient2  = BLEDevice::createClient();
       pClient2->setClientCallbacks(new MyClientCallback());
       
       Serial.println("connect - start");    
       pClient2->connect(BLEAddress(macaddr2));  // address of mippie

       Serial.println("setMTU - start");
//       pClient2->setMTU(517);

       Serial.println("getservice - start");
       BLERemoteService* pRemoteService2 = pClient2->getService(sUUID2);
       if (pRemoteService2 == nullptr) 
       {
          Serial.println("nullptr returned - start");
          pClient2->disconnect();
          return false;
       }
       
       Serial.println("pRemoteCharacteristic - start");
       pRemoteCharacteristic2 = pRemoteService2->getCharacteristic(cUUID2);
       if (pRemoteCharacteristic2 == nullptr)
       {
        Serial.println("nullptr Characteristic returned - start");
        pClient2->disconnect();
        return false;
       }
       
       Serial.println("pRemoteCharacteristic2 canRead - start");
       if(pRemoteCharacteristic2->canRead()) 
       {
         std::string value = pRemoteCharacteristic2->readValue();
         Serial.println(value.c_str());
       }
       
       Serial.println("registerForNotify - start");
       if(pRemoteCharacteristic2->canNotify())
       {
         pRemoteCharacteristic2->registerForNotify(notifyCallback);
       }
    }
    if (robotcnt > 3) 
    {

       Serial.println("createClient - start");
       BLEClient*  pClient3  = BLEDevice::createClient();
       pClient3->setClientCallbacks(new MyClientCallback());
       
       Serial.println("connect - start");    
       pClient3->connect(BLEAddress(macaddr3));  // address of mippie

       Serial.println("setMTU - start");
//       pClient3->setMTU(517);

       Serial.println("getservice - start");
       BLERemoteService* pRemoteService3 = pClient3->getService(sUUID3);
       if (pRemoteService3 == nullptr) 
       {
          Serial.println("nullptr returned - start");
          pClient3->disconnect();
          return false;
       }
       
       Serial.println("pRemoteCharacteristic - start");
       pRemoteCharacteristic3 = pRemoteService3->getCharacteristic(cUUID3);
       if (pRemoteCharacteristic3 == nullptr)
       {
        Serial.println("nullptr Characteristic returned - start");
        pClient3->disconnect();
        return false;
       }
       
       Serial.println("pRemoteCharacteristic3 canRead - start");
       if(pRemoteCharacteristic3->canRead()) 
       {
//         Charvalue = pRemoteCharacteristic3->readValue();
         Charvalue = String(pRemoteCharacteristic->readValue().c_str());
         Serial.println(Charvalue);
       }
       
       Serial.println("registerForNotify - start");
       if(pRemoteCharacteristic3->canNotify())
       {
         pRemoteCharacteristic3->registerForNotify(notifyCallback);
       }
       Serial.println("connectToServer - robot4 done");

   }

   Serial.println("connectToServer setting connected to true");
   connected = true;
   return true;
}

class MyAdvertisedDeviceCallbacks: public BLEAdvertisedDeviceCallbacks {

  void onResult(BLEAdvertisedDevice advertisedDevice) {
    static BLEUUID serviceUUID2(ser);
    Serial.println("MyAdvertisedDeviceCallbacks - robot1 ");
    if (advertisedDevice.haveServiceUUID() && advertisedDevice.isAdvertisingService(serviceUUID2)) {
      BLEDevice::getScan()->stop();
      myDevice = new BLEAdvertisedDevice(advertisedDevice);
      doConnect = true;
      doScan = true;

    }
  } 
};

void setup() 
{
    USE_SERIAL.begin(115200);
    USE_SERIAL.printf("connecting lego and mippie");

    for(uint8_t t = 4; t > 0; t--) {
        USE_SERIAL.printf("[SETUP] WAIT %d...\n", t);
        USE_SERIAL.flush();
        delay(500);
    }


    wifiMulti.addAP(your wifi id here , your wifi password here);
    wifiMulti.run();
    boardaddr = WiFi.macAddress();
    Serial.println(boardaddr);
    getrobots();
    setupble();
//    connectToServer();
}
void getrobots() {

int mod = 28;

String(workstring);

   Serial.println("in getrobots hhttp to begin");
//   put the ip address of the sql database here
   Serial.println("http://192.168.9.999/getrobots.php?Name=" + boardaddr);
   http.begin("http://192.168.9.999/getrobots.php?Name=" + boardaddr); //HTTP
   int httpCode = http.GET();
  
   Serial.println(httpCode);
   workstring = http.getString();

   if (workstring.length() > 138)
   { 
      robotcnt = 1;
      Serial.println("board1 " + workstring.substring(mod,mod + 6)+"\n");
      robot1 =  workstring.substring(mod + 7,mod + 17);   
      Serial.println("boardrobot " + robot1 + "\n");
      strcpy(macaddr,workstring.substring(mod + 20,mod + 37).c_str());
      Serial.println("maccaddr " + workstring.substring(mod + 20,mod + 37)+"\n");
      strcpy(ser,workstring.substring(mod + 38,mod + 74).c_str());
      Serial.println("ser " +workstring.substring(mod + 38,mod + 74)+"\n");
      strcpy(cer,workstring.substring(mod + 75,mod + 111).c_str());
      Serial.println("cer " +workstring.substring(mod + 75,mod + 111)+"\n");
      Serial.println("robot1 details for cer " + workstring.substring(mod + 75,mod + 111)+"\n");
   }
   if (workstring.length() > 250)
   {
      mod = mod + 112;
      robotcnt = 2;
      Serial.println("board2 " + workstring.substring(mod,mod + 6)+"\n");
      robot2 =  workstring.substring(mod + 7,mod + 14);
      robot2.trim();  
      strcpy(macaddr1,workstring.substring(mod + 20,mod + 37).c_str());
      Serial.println("maccaddr2 " + workstring.substring(mod + 20,mod + 37)+"\n");
      strcpy(ser1,workstring.substring(mod + 38,mod + 74).c_str());
      Serial.println("ser1 " +workstring.substring(mod + 38,mod + 74)+"\n");
      strcpy(cer1,workstring.substring(mod + 75,mod + 111).c_str());
      Serial.println("cer1 " +workstring.substring(mod + 75,mod + 111)+"\n");
   }
   if (workstring.length() > 362)
   {
      mod =  mod + 112;
      robotcnt = 3;
      Serial.println("board3 " + workstring.substring(mod,mod + 6)+"\n");
      robot3 = workstring.substring(mod + 7,mod + 14);
      robot3.trim();  
      strcpy(macaddr2,workstring.substring(mod + 20,mod + 37).c_str());
      Serial.println("maccaddr3 " + workstring.substring(mod + 20,mod + 37)+"\n");
      strcpy(ser2,workstring.substring(mod + 38,mod + 74).c_str());
      Serial.println("ser2 " +workstring.substring(mod + 38,mod + 74)+"\n");
      strcpy(cer2,workstring.substring(mod + 75,mod + 111).c_str());
      Serial.println("cer2 " +workstring.substring(mod + 75,mod + 111)+"\n");
   } 
   if (workstring.length() > 474)
   {
      mod =  mod + 112;
      robotcnt = 4;
      Serial.println("board4 " + workstring.substring(mod,mod + 6)+"\n");
      robot4 = workstring.substring(mod + 7,mod + 14);
      robot4.trim();  
      strcpy(macaddr3,workstring.substring(mod + 20,mod + 37).c_str());
      Serial.println("maccaddr " + workstring.substring(mod + 20,mod + 37)+"\n");
      strcpy(ser3,workstring.substring(mod + 38,mod + 74).c_str());
      Serial.println("ser1 " +workstring.substring(mod + 38,mod + 74)+"\n");
      strcpy(cer3,workstring.substring(mod + 75,mod + 111).c_str());
      Serial.println("cer1 " +workstring.substring(mod + 75,mod + 111)+"\n");
   } 

   Serial.println("robot 1 " + robot1 + "<" + "\n");
   Serial.println("robot 2 " + robot2 +"\n");
   Serial.println("robot 3 " + robot3 +"\n");
   Serial.println("robot 4 " + robot4 +"\n");

 }
void setupble() {
  
  BLEDevice::init("");

  BLEScan* pBLEScan = BLEDevice::getScan();
  pBLEScan->setAdvertisedDeviceCallbacks(new MyAdvertisedDeviceCallbacks());
  pBLEScan->setInterval(1349);
  pBLEScan->setWindow(449);
  pBLEScan->setActiveScan(true);
  pBLEScan->start(5, false);
  Serial.println("conn server");
  connectToServer();
  Serial.println("con server end");
} 

void loop() {
int mod = 37;
int startmod = 35 ;
int eoc = 0;
int commandint = 0;
byte commands[2][12] = {
    {0x06, 0x24}, // says hungry
    {0x06, 0x32}  // turns chest red
    };   

    switch (robotloop) 
    {
     case 0:   
        if (robotcnt > 0)
        { 
           robothttp = robot1;
        } 
     break;
     case 1:
        if (robotcnt > 1)
        {
           robothttp = robot2;
        }
     break;
     case 2:
        if (robotcnt > 2)  
        {
           robothttp = robot3;
        }
     break;
     case 3:
        if (robotcnt > 3)  
        {
           robothttp = robot4;
        }
     break;
     default:
          robothttp = robot1;
          robotloop = 1;
    }

                 
    if (robotloop < robotcnt)
    {
      robotloop = robotloop + 1;
    }
    else
    {  
      robotloop = 1;
      robothttp = robot1;
    }

          
    Serial.println(robothttp.length());
    robothttp.replace("*","");
//    robothttp.trim();
    Serial.println(robothttp.length());
    
        Serial.println("hhttp to begin" + robothttp + "+");
//   put the ip address of the sql database here
        String comrequest = "http://192.168.9.999/getdata.php?Name=" + robothttp;
        Serial.println(comrequest);
        http.begin(comrequest ); //HTTP
        int httpCode = http.GET();
        Serial.println("http cvoe " + httpCode);
//        Serial.println("delay after httpget");
//        delay(1000); 
//        Serial.println("httpCode start");
//        Serial.println(http.getString());
        String payload = http.getString();
        Serial.println("http end of getstring ");
//        delay(1000);
        if(httpCode > 0) 
        {           
            Serial.println(HTTP_CODE_OK);
            Serial.println(httpCode);
//            if(httpCode == HTTP_CODE_OK) {
//                String payload = http.getString();
//                String payload = "nothing in payload";
                Serial.println(payload);
                byte command[12] ={0x08, 0x01};
                Serial.println("robot 1 " + payload[28]);
                if (payload.indexOf("commands") >= 0)
//                if (payload[28] == 'c')
                {
                    Serial.println("commands found");
                    while (eoc == 0)
                    {
                        if (payload[mod] == ',')
                        {
                            Serial.println( payload.substring(startmod+1,mod));
                            command[commandint] = payload.substring(startmod+1,mod).toInt();
                            Serial.println(command[commandint]);
                            Serial.println("comma found");
                            startmod = mod;
                            commandint = commandint + 1;
                        }
                        if (payload[mod] == ';')
                        {
                            memmove(&commands[1],command,sizeof(command)); 
                            for (int i = 0; i < commandint; i++) {
                                Serial.println(command[i]);
                            }                   
                            eoc = 1;
                            Serial.println("colon found");
                         }
                        else
                        {
                        mod = mod + 1;
                        }
                    }
                }
                else 
                {
                   Serial.println("no commands - " + robothttp);  
                }
            }
//        } 
        Serial.println("http endeddddd");
        http.end();
//    }
  Serial.println("out of http ened");


  Serial.println("testing connection");

  if (connected) {  
    Serial.println("all tb written to");  

  if (robot1.indexOf(robothttp) >= 0)
//  if (robothttp == robot1)
  {   
    pRemoteCharacteristic->writeValue(commands[1],sizeof(commands[1]));
    delay(50);
    Serial.println(robot1 + " has been written to");
  }
  if (robot2.indexOf(robothttp) >= 0)
  //if (robothttp == robot2)
  {   
    pRemoteCharacteristic1->writeValue(commands[1],sizeof(commands[1]));
    delay(50);
    Serial.println(robot2 + " has been written to");
  }

  if (robot3.indexOf(robothttp) >= 0)
  //if (robothttp == robot3)
  {   
    pRemoteCharacteristic2->writeValue(commands[1],sizeof(commands[1]));
    Serial.println(robot3 + " has been written to");
  }

  if (robot4.indexOf(robothttp) >= 0)
  //if (robothttp == robot4)
  {   
    pRemoteCharacteristic3->writeValue(commands[1],sizeof(commands[1]));
    Serial.println(robot4 + " has been written to");
  }

//    if (robot5.indexOf(robothttp) >= 0)
//  if (robothttp == robot5)
//  {   
//    pRemoteCharacteristic5->writeValue(commands[1],sizeof(commands[1]));
//    Serial.println("vernie has been written to");
//  }

//  }else if(doScan){
//    Serial.println("not connected");    
//    BLEDevice::getScan()->start(0);  

  }
  

  delay(2000);
} 
