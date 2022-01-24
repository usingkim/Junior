#include "Arduino.h"
#include "Hangul.h"

Hangul::Hangul(uint8_t pin, uint8_t numpixels) {
	_pin = pin;
	_numpixels = numpixels;
}
void Hangul::AMPM(uint8_t hours) {
	pixels.setPixelColor(0, color);

	if (hours >= 12 && hours <= 23) // 오후
	{
		pixels.setPixelColor(1, pixels.Color(0, 0, 0));
		pixels.setPixelColor(3, color);
	}
	else if ((hours < 12 && hours >= 0) || hours == 24)
	{
		pixels.setPixelColor(1, color);
		pixels.setPixelColor(3, pixels.Color(0, 0, 0));
	}
}
void Hangul::hourChange(uint8_t hours, uint8_t minutes) {
	uint8_t ConvertHour = 0;

	if (hours >= 12) ConvertHour = hours - 12;
	else ConvertHour = hours;

	for (int i = 8; i <= 23; i++) {
		pixels.setPixelColor(i, pixels.Color(0, 0, 0));
	}
	for (int i = 29; i <= 31; i++) {
		pixels.setPixelColor(i, pixels.Color(0, 0, 0));
	}
	pixels.setPixelColor(28, color);

	switch (ConvertHour)
	{
	case 0:
	case 12:
		pixels.setPixelColor(11, color);
		pixels.setPixelColor(15, color);
		break;
	case 1:
		pixels.setPixelColor(12, color);
		break;
	case 2:
		pixels.setPixelColor(11, color);
		break;
	case 3:
		pixels.setPixelColor(9, color);
		break;
	case 4:
		pixels.setPixelColor(8, color);
		break;
	case 5:
		pixels.setPixelColor(14, color);
		pixels.setPixelColor(17, color);
		break;
	case 6:
		pixels.setPixelColor(16, color);
		pixels.setPixelColor(17, color);
		break;
	case 7:
		pixels.setPixelColor(19, color);
		pixels.setPixelColor(20, color);
		break;
	case 8:
		pixels.setPixelColor(22, color);
		pixels.setPixelColor(23, color);
		break;
	case 9:
		pixels.setPixelColor(30, color);
		pixels.setPixelColor(31, color);
		break;
	case 10:
		pixels.setPixelColor(15, color);
		break;
	case 11:
		pixels.setPixelColor(12, color);
		pixels.setPixelColor(15, color);
		break;
	}
}
void Hangul::minuteChange(uint8_t minutes) {
	uint8_t one = 0;
	one = minutes % 10;

	for (int i = 24; i < numOfNeo; i++)
	{
		if (i >= 28 && i <= 31) continue;
		pixels.setPixelColor(i, pixels.Color(0, 0, 0));
	}


	if (minutes >= 10) pixels.setPixelColor(33, color);

	if (minutes >= 20 && minutes < 30) pixels.setPixelColor(32, color);
	else if (minutes >= 30 && minutes < 40) pixels.setPixelColor(24, color);
	else if (minutes >= 40 && minutes < 50) pixels.setPixelColor(25, color);
	else if (minutes >= 50 && minutes < 60) pixels.setPixelColor(27, color);
	
	if (one>0) {
		switch (one) {
		case 1:
			pixels.setPixelColor(41, color);
			break;
		case 2:
			pixels.setPixelColor(43, color);
			break;
		case 3:
			pixels.setPixelColor(44, color);
			break;
		case 4:
			pixels.setPixelColor(46, color);
			break;
		case 5:
			pixels.setPixelColor(47, color);
			break;
		case 6:
			pixels.setPixelColor(39, color);
			break;
		case 7:
			pixels.setPixelColor(38, color);
			break;
		case 8:
			pixels.setPixelColor(36, color);
			break;
		case 9:
			pixels.setPixelColor(35, color);
			break;
		}
	}

	if(minutes != 0) pixels.setPixelColor(40, color);

}
void Hangul::resetLED() {
	for (uint8_t i = 0; i < numOfNeo; i++)
	{
		pixels.setPixelColor(i, pixels.Color(0, 0, 0));
		pixels.show();
	}
}
void Hangul::setTimee(String input) {
	uint8_t Hours, Minutes, Seconds = 0;
	uint8_t first_c, seconds_c;

	first_c = input.indexOf(":");
	seconds_c = input.indexOf(":", first_c + 1);

	Hours = input.substring(0, first_c).toInt(); // 여기서 시간 보정이 가능하다.
	Minutes = input.substring(first_c + 1, seconds_c).toInt();
	Seconds = input.substring(seconds_c + 1).toInt();

	//Hours = 0;
	//Minutes = 0;

	_time.hours = Hours;
	_time.minutes = Minutes;
	_time.secs = Seconds;
}
void Hangul::blinkSec() {
	uint8_t b = 0;

	b = _time.secs % 2;
	if (b == 1) {
		pixels.setPixelColor(4, pixels.Color(50, 50, 0));
		pixels.setPixelColor(6, pixels.Color(50, 50, 0));
		pixels.setPixelColor(7, pixels.Color(50, 50, 0));
	}
	else {
		pixels.setPixelColor(4, 0);
		pixels.setPixelColor(6, 0);
		pixels.setPixelColor(7, 0);
	}

}
void Hangul::updateTime() {

	blinkSec();
	AMPM(_time.hours);
	hourChange(_time.hours, _time.minutes);
	minuteChange(_time.minutes);
	//neverBlink();
	pixels.show();
	_old_secs = _time.secs;
}

void Hangul::colorChange(uint8_t r, uint8_t g, uint8_t b) {
	color = pixels.Color(r, g, b);
	updateTime();
}

void Hangul::neverBlink() {
	/*int arr[] = { 1,3,4,9,12,17,20,25,28,33,36,41,44 };

	for (int i = 0; i < sizeof(arr) / sizeof(int); i++) {
		pixels.setPixelColor(arr[i]+1, 0);
	}*/
}