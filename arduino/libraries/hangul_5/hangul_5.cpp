#include "Arduino.h"
#include "hangul_5.h"

Hangul::Hangul(uint8_t pin, uint8_t numpixels) {
	_pin = pin;
	_numpixels = numpixels;
}
void Hangul::hourChange(uint8_t hours, uint8_t minutes) {
	uint8_t ConvertHour = 0;

	if (hours >= 12) ConvertHour = hours - 12;
	else ConvertHour = hours;

	for (int i = 0; i <= 14; i++) {
		pixels.setPixelColor(i, pixels.Color(0, 0, 0));
	}

	pixels.setPixelColor(14, color);

	if (minutes >= 0 && minutes < 5) pixels.setPixelColor(24, pixels.Color(0, 0, 0));

	switch (ConvertHour)
	{
	case 0:
		if (minutes == 0) {
			pixels.setPixelColor(18, color);
			if (hours == 0) pixels.setPixelColor(19, color);
			else pixels.setPixelColor(21, color);
			pixels.setPixelColor(14, pixels.Color(0, 0, 0));
		}
		else {
			pixels.setPixelColor(0, color);
			pixels.setPixelColor(9, color);
		}
		break;
	case 1:
		pixels.setPixelColor(1, color);
		break;
	case 2:
		pixels.setPixelColor(9, color);
		break;
	case 3:
		pixels.setPixelColor(3, color);
		break;
	case 4:
		pixels.setPixelColor(4, color);
		break;
	case 5:
		pixels.setPixelColor(2, color);
		pixels.setPixelColor(7, color);
		break;
	case 6:
		pixels.setPixelColor(7, color);
		pixels.setPixelColor(8, color);
		break;
	case 7:
		pixels.setPixelColor(5, color);
		pixels.setPixelColor(6, color);
		break;
	case 8:
		pixels.setPixelColor(10, color);
		pixels.setPixelColor(11, color);
		break;
	case 9:
		pixels.setPixelColor(12, color);
		pixels.setPixelColor(13, color);
		break;
	case 10:
		pixels.setPixelColor(0, color);
		break;
	case 11:
		pixels.setPixelColor(0, color);
		pixels.setPixelColor(1, color);
		break;
	}
}
void Hangul::minuteChange(uint8_t minutes) {
	uint8_t one = 0;
	one = minutes % 10;

	for (int i = 17; i <= 24; i++)
	{
		pixels.setPixelColor(i, pixels.Color(0, 0, 0));
	}

	if (minutes >= 5) pixels.setPixelColor(24, color);
	else pixels.setPixelColor(24, pixels.Color(0, 0, 0));

	if (minutes >= 10 && minutes < 40) pixels.setPixelColor(15, color);

	if (minutes >= 20 && minutes < 30) pixels.setPixelColor(17, color);
	else if (minutes >= 30 && minutes < 40) pixels.setPixelColor(16, color);
	else if (minutes >= 40 && minutes < 50) {
		pixels.setPixelColor(22, color);
		pixels.setPixelColor(20, color);
	}
	else if (minutes >= 50 && minutes < 60)
	{
		pixels.setPixelColor(21, color);
		pixels.setPixelColor(22, color);
	}

	if (one >= 5) pixels.setPixelColor(23, color);
	else pixels.setPixelColor(23, pixels.Color(0, 0, 0));

}
void Hangul::resetLED() {
	for (uint8_t i = 0; i < numOfNeo; i++)
	{
		pixels.setPixelColor(i, pixels.Color(0, 0, 0));
	}
	pixels.show();
}
void Hangul::setTimee(String input) {
	uint8_t Hours, Minutes, Seconds = 0;
	uint8_t first_c, seconds_c;

	first_c = input.indexOf(":");
	seconds_c = input.indexOf(":", first_c + 1);

	// 여기서 시간 보정 가능
	Hours = input.substring(0, first_c).toInt();
	Minutes = input.substring(first_c + 1, seconds_c).toInt();
	Seconds = input.substring(seconds_c + 1).toInt();

	_time.hours = Hours;
	_time.minutes = Minutes;
	_time.secs = Seconds;
}
void Hangul::updateTime() {

	minuteChange(_time.minutes);
	hourChange(_time.hours, _time.minutes);

	pixels.show();
	_old_secs = _time.secs;
}
void Hangul::colorChange(uint8_t r, uint8_t g, uint8_t b) {
	color = pixels.Color(r, g, b);
	updateTime();
}
