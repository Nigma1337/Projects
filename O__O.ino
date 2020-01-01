#include <DHT.h>
#define DHTPIN 3     // Hvilken pin DHT22 sidder i.
#define DHTTYPE DHT22   // DHT 22
DHT dht(DHTPIN, DHTTYPE); //// int DHT sensoren

float h;  //Stores humidity value
float t; //Stores temperature value


int sensorValue1; //navnet på Co2 mål
void setup()
{
  Serial.begin(9600); //Starter med at læse inputs i standard porten (9600)
  dht.begin(); //start DHT     
}

void loop()
{
    //Læs data og gem det i h, t og sensorValue1
    h = dht.readHumidity();
    t = dht.readTemperature();
    sensorValue1 = analogRead(0);
    //Print MQ135s input.
    Serial.print("Luft kvalitet: ");
    Serial.println(sensorValue1);
    //Print luft fugtighed
    Serial.print("Luft fugtighed: ");
    Serial.println(h);
    //Print temperatur
    Serial.print("Temperatur: ");
    Serial.println(t);
}
    
