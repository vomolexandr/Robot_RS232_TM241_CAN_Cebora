#include <SoftwareSerial.h>

SoftwareSerial RS232(3, 2); // RX, TX

void setup()
{
  Serial.begin(9600);
  RS232.begin(19200);
}

void loop()
{
  if (RS232.available() > 0)
  {
    while (RS232.available() > 0)
    {
      Serial.print((char)RS232.read());
    }
    Serial.println("");
    RS232.flush();
  }
  RS232.write("S00000000000000000000000000000000100400-5.00000000000000000010.0");
  for (int i = 0; i < 5; i++)
  {
    RS232.write(random(48, 57));
  }
  RS232.write("F");
  delay(200);
}
