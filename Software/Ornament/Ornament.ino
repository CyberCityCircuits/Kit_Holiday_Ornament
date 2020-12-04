/*
 * Christmas Ornament November
 * 
 * 0 - Speaker
 * 1 - LED 1
 * 2 - LED 2
 * 3 - BUTTON 1
 * 4 - BUTTON 2
 * 
 */

#include "pitches.h"

int button_1 = 3;
int button_2 = 4;
int led_1    = 1;
int led_2    = 2;
int speaker  = 0;

int b1_tag = 0;
int b2_tag = 0;

int timer = 5000;

// Jingle Bells

const int melody[] = {
  NOTE_E5, NOTE_E5, NOTE_E5, NOTE_E5, NOTE_E5,
  NOTE_E5, NOTE_E5, NOTE_G5, NOTE_C5, NOTE_D5,
  NOTE_E5, NOTE_F5, NOTE_F5, NOTE_F5, NOTE_F5,
  NOTE_F5, NOTE_E5, NOTE_E5, NOTE_E5, NOTE_E5,
  NOTE_E5, NOTE_D5, NOTE_D5, NOTE_E5, NOTE_D5,
  NOTE_G5
};

const int tempo[] = {
   8,  8, 4, 8, 8, 4,
   8,  8, 8, 8, 2, 8,
   8,  8, 8, 8, 8, 8,
  16, 16, 8, 8, 8, 8,
   4, 4
};

// We wish you a merry Christmas

const int wish_melody[] = {
  NOTE_B3, NOTE_F4, NOTE_F4, NOTE_G4, NOTE_F4,
  NOTE_E4, NOTE_D4, NOTE_D4, NOTE_D4, NOTE_G4,
  NOTE_G4, NOTE_A4, NOTE_G4, NOTE_F4, NOTE_E4,
  NOTE_E4, NOTE_E4, NOTE_A4, NOTE_A4, NOTE_B4,
  NOTE_A4, NOTE_G4, NOTE_F4, NOTE_D4, NOTE_B3,
  NOTE_B3, NOTE_D4, NOTE_G4, NOTE_E4, NOTE_F4
};

const int wish_tempo[] = {
  4, 4, 8, 8, 8, 8,
  4, 4, 4, 4, 8, 8,
  8, 8, 4, 4, 4, 4,
  8, 8, 8, 8, 4, 4,
  8, 8, 4, 4, 4, 2
};

// Santa Claus is coming to town

const int santa_melody[] = {
  NOTE_G4, NOTE_E4, NOTE_F4, NOTE_G4, NOTE_G4,
  NOTE_G4, NOTE_A4, NOTE_B4, NOTE_C5, NOTE_C5,
  NOTE_C5, NOTE_E4, NOTE_F4, NOTE_G4, NOTE_G4,
  NOTE_G4, NOTE_A4, NOTE_G4, NOTE_F4, NOTE_F4,
  NOTE_E4, NOTE_G4, NOTE_C4, NOTE_E4, NOTE_D4, 
  NOTE_F4, NOTE_B3, NOTE_C4
};

const int santa_tempo[] = {
  8, 8, 8, 4, 4, 4,
  8, 8, 4, 4, 4, 8,
  8, 4, 4, 4, 8, 8, 
  4, 2, 4, 4, 4, 4,
  4, 2, 4, 1
};

const int silent_melody[] = {
  NOTE_G4, NOTE_A4, NOTE_G4, NOTE_E4, NOTE_G4, 
  NOTE_A4, NOTE_G4, NOTE_E4, NOTE_D5, NOTE_D5,
  NOTE_B4, NOTE_C5, NOTE_C5, NOTE_G4, NOTE_A4,
  NOTE_A4, NOTE_C5, NOTE_B4, NOTE_A4, NOTE_G4,
  NOTE_A4, NOTE_G4, NOTE_E4, NOTE_A4, NOTE_A4,
  NOTE_C5, NOTE_B4, NOTE_A4, NOTE_G4, NOTE_A4,
  NOTE_G4, NOTE_E4 
};

const int silent_tempo[] = {
  4, 8, 4, 2, 4, 8,
  4, 2, 2, 4, 2, 2,
  4, 2, 2, 4, 4, 8,
  4, 4, 8, 4, 2, 2,
  4, 4, 8, 4, 4, 8,
  4, 2
};

void setup() {
  pinMode(button_1, INPUT_PULLUP);
  pinMode(button_2, INPUT_PULLUP);
  pinMode(led_1   , OUTPUT);
  pinMode(led_2   , OUTPUT);
  pinMode(speaker , OUTPUT);
  randomSeed(analogRead(0));
}

void loop() {

  if(digitalRead(button_1) == 0) {
    if(b1_tag == 0) {
      PlayWish();
      b1_tag = 0;
    } else {
      //PlaySanta();
      b1_tag = 0;
    }
    LEDsOff();
  }

  if(digitalRead(button_2) == 0) {
    if(b2_tag == 0) {
      PlayJingle();
      b2_tag = 0;    
    } else {
      //PlaySilent(); 
      b2_tag = 0;
    }
    LEDsOff();
  }


  int rand_red = random(timer); //Select a number between 0 and 5000
  int rand_green = random(timer);
  
  if((millis() % rand_red) == 0) {
    digitalWrite(led_1, HIGH);
    delay(random(125, 300));
    digitalWrite(led_1, LOW);
  }
  if((millis() % rand_green) == 0) {
    digitalWrite(led_2, HIGH);
    delay(random(125, 300));
    digitalWrite(led_2, LOW);
  }

}

void LEDsOff() {
    digitalWrite(led_1, LOW);
    digitalWrite(led_2, LOW);  
}

void PlayJingle() {
    //Serial.println(" 'Jingle Bells'");
    int size = sizeof(melody) / sizeof(int);
    for (int thisNote = 0; thisNote < size; thisNote++) {
      int noteDuration = 1000 / tempo[thisNote];
      buzz(speaker, melody[thisNote], noteDuration);
      int pauseBetweenNotes = noteDuration * 1.30;
      delay(pauseBetweenNotes);

      // stop the tone playing:
      buzz(speaker, 0, noteDuration);
    }  
}

void PlayWish() {

    //Serial.println(" 'We wish you a Merry Christmas'");

    int size = sizeof(wish_melody) / sizeof(int);
    for (int thisNote = 0; thisNote < size; thisNote++) {
      int noteDuration = 1000 / wish_tempo[thisNote];
      buzz(speaker, wish_melody[thisNote], noteDuration);
      int pauseBetweenNotes = noteDuration * 1.30;
      delay(pauseBetweenNotes);

      // stop the tone playing:
      buzz(speaker, 0, noteDuration);  
    }
}

/*
void PlaySilent() {
    //Serial.println(" 'Silent Night'");
    int size = sizeof(silent_melody) / sizeof(int);
    for (int thisNote = 0; thisNote < size; thisNote++) {
      int noteDuration = 1000 / silent_tempo[thisNote];
      buzz(speaker, silent_melody[thisNote], noteDuration);
      int pauseBetweenNotes = noteDuration * 1.30;
      delay(pauseBetweenNotes);

      // stop the tone playing:
      buzz(speaker, 0, noteDuration);
    }  
}

void PlaySanta() {
    //Serial.println(" 'Santa Coming to town'");
    int size = sizeof(santa_melody) / sizeof(int);
    for (int thisNote = 0; thisNote < size; thisNote++) {
      int noteDuration = 1000 / santa_tempo[thisNote];
      buzz(speaker, santa_melody[thisNote], noteDuration);
      int pauseBetweenNotes = noteDuration * 1.30;
      delay(pauseBetweenNotes);

      // stop the tone playing:
      buzz(speaker, 0, noteDuration);
    }  
}
*/
void buzz(int targetPin, long frequency, long length) {
  digitalWrite(led_1, HIGH);
  digitalWrite(led_2, LOW);
  long delayValue = 1000000 / frequency / 2; // calculate the delay value between transitions
  //// 1 second's worth of microseconds, divided by the frequency, then split in half since
  //// there are two phases to each cycle
  long numCycles = frequency * length / 1000; // calculate the number of cycles for proper timing
  //// multiply frequency, which is really cycles per second, by the number of seconds to
  //// get the total number of cycles to produce
  for (long i = 0; i < numCycles; i++) { // for the calculated length of time...
    digitalWrite(targetPin, HIGH); // write the buzzer pin high to push out the diaphram
    delayMicroseconds(delayValue); // wait for the calculated delay value
    digitalWrite(targetPin, LOW); // write the buzzer pin low to pull back the diaphram
    delayMicroseconds(delayValue); // wait again or the calculated delay value
  }
  digitalWrite(led_1, LOW);
  digitalWrite(led_2, HIGH);

}
