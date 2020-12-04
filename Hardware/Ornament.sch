EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1700 2250 0    50   Input ~ 0
GND
Text GLabel 1700 750  0    50   Input ~ 0
VCC
Text GLabel 2650 1200 2    50   Input ~ 0
ATTINY85_MOSI
Text GLabel 2650 1300 2    50   Input ~ 0
ATTINY85_MISO
Text GLabel 2650 1400 2    50   Input ~ 0
ATTINY85_SCK
Text GLabel 2650 1500 2    50   Input ~ 0
ATTINY85_PB3
Text GLabel 2650 1600 2    50   Input ~ 0
ATTINY85_PB4
Wire Wire Line
	2500 1200 2650 1200
Wire Wire Line
	2500 1300 2650 1300
Wire Wire Line
	2500 1400 2650 1400
Wire Wire Line
	2500 1500 2650 1500
Wire Wire Line
	2500 1600 2650 1600
Wire Wire Line
	2500 1700 2650 1700
Wire Wire Line
	1900 2250 1700 2250
Wire Wire Line
	1900 750  1700 750 
$Comp
L Device:R R1
U 1 1 5C6BF1B3
P 4850 950
F 0 "R1" V 4643 950 50  0000 C CNN
F 1 "10000" V 4734 950 50  0000 C CNN
F 2 "CCC-Parts-Library:R_0603" V 4780 950 50  0001 C CNN
F 3 "~" H 4850 950 50  0001 C CNN
	1    4850 950 
	0    1    1    0   
$EndComp
Text GLabel 5150 950  2    50   Input ~ 0
VCC
Wire Wire Line
	4550 950  4700 950 
Wire Wire Line
	5000 950  5150 950 
Text GLabel 2650 1700 2    50   Input ~ 0
ATTINY85_RESET
$Comp
L Device:Battery_Cell BT1
U 1 1 5C6D3B8A
P 5900 1250
F 0 "BT1" H 6018 1346 50  0000 L CNN
F 1 "Battery_Cell" H 6018 1255 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Battery CR2032" V 5900 1310 50  0001 C CNN
F 3 "~" V 5900 1310 50  0001 C CNN
	1    5900 1250
	1    0    0    -1  
$EndComp
Text GLabel 6000 1500 2    50   Input ~ 0
GND
Wire Wire Line
	5900 1350 5900 1500
Wire Wire Line
	5900 1500 6000 1500
Text GLabel 6550 950  2    50   Input ~ 0
VCC
Wire Wire Line
	5900 1050 5900 950 
Wire Wire Line
	6450 950  6550 950 
$Comp
L MCU_Microchip_ATtiny:ATtiny85V-10MU U1
U 1 1 5ECF26B6
P 1900 1500
F 0 "U1" H 1357 1546 50  0000 R CNN
F 1 "ATtiny85V-10MU" H 1357 1455 50  0000 R CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 1900 1500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 1900 1500 50  0001 C CNN
	1    1900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 750  1900 900 
Wire Wire Line
	1900 2250 1900 2100
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 5ED153C2
P 2000 3050
F 0 "J1" H 1671 3146 50  0000 R CNN
F 1 "AVR-ISP-6" H 1671 3055 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" V 1750 3100 50  0001 C CNN
F 3 " ~" H 725 2500 50  0001 C CNN
	1    2000 3050
	1    0    0    -1  
$EndComp
Text GLabel 1700 3600 0    50   Input ~ 0
GND
Wire Wire Line
	1900 3600 1700 3600
Wire Wire Line
	1900 3600 1900 3450
Text GLabel 1700 2400 0    50   Input ~ 0
VCC
Wire Wire Line
	1900 2400 1700 2400
Wire Wire Line
	1900 2400 1900 2550
Text GLabel 2550 2950 2    50   Input ~ 0
ATTINY85_MOSI
Text GLabel 2550 2850 2    50   Input ~ 0
ATTINY85_MISO
Text GLabel 2550 3050 2    50   Input ~ 0
ATTINY85_SCK
Text GLabel 2550 3150 2    50   Input ~ 0
ATTINY85_RESET
Wire Wire Line
	2400 3150 2550 3150
Wire Wire Line
	2400 3050 2550 3050
Wire Wire Line
	2400 2950 2550 2950
Wire Wire Line
	2400 2850 2550 2850
Text GLabel 4550 950  0    50   Input ~ 0
ATTINY85_RESET
$Comp
L Device:Speaker LS1
U 1 1 5F692FD6
P 6700 1850
F 0 "LS1" H 6870 1846 50  0000 L CNN
F 1 "Speaker" H 6870 1755 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Speaker_Large_Fuet" H 6700 1650 50  0001 C CNN
F 3 "~" H 6690 1800 50  0001 C CNN
	1    6700 1850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F69384C
P 4800 1550
F 0 "SW1" H 4800 1835 50  0000 C CNN
F 1 "SW_Push" H 4800 1744 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic_-_Button_Labeled" H 4800 1750 50  0001 C CNN
F 3 "~" H 4800 1750 50  0001 C CNN
	1    4800 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F6939A9
P 4800 2000
F 0 "SW2" H 4800 2285 50  0000 C CNN
F 1 "SW_Push" H 4800 2194 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic_-_Button_Labeled" H 4800 2200 50  0001 C CNN
F 3 "~" H 4800 2200 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
Text GLabel 6350 1850 0    50   Input ~ 0
ATTINY85_MOSI
Text GLabel 4450 2350 0    50   Input ~ 0
ATTINY85_MISO
Text GLabel 4450 2750 0    50   Input ~ 0
ATTINY85_SCK
Text GLabel 4450 1550 0    50   Input ~ 0
ATTINY85_PB3
Text GLabel 4450 2000 0    50   Input ~ 0
ATTINY85_PB4
Wire Wire Line
	6350 1850 6500 1850
Text GLabel 6350 1950 0    50   Input ~ 0
GND
Wire Wire Line
	6350 1950 6500 1950
Wire Wire Line
	4450 1550 4600 1550
Wire Wire Line
	4450 2000 4600 2000
Text GLabel 5150 1550 2    50   Input ~ 0
GND
Wire Wire Line
	5150 1550 5000 1550
Text GLabel 5150 2000 2    50   Input ~ 0
GND
Wire Wire Line
	5150 2000 5000 2000
$Comp
L Device:LED D1
U 1 1 5F699DDE
P 4800 2350
F 0 "D1" H 4793 2567 50  0000 C CNN
F 1 "LED" H 4793 2476 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - LED 5mm(2.56P) 003" H 4800 2350 50  0001 C CNN
F 3 "~" H 4800 2350 50  0001 C CNN
	1    4800 2350
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F69B5EA
P 4800 2750
F 0 "D2" H 4793 2967 50  0000 C CNN
F 1 "LED" H 4793 2876 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - LED 5mm(2.56P) 003" H 4800 2750 50  0001 C CNN
F 3 "~" H 4800 2750 50  0001 C CNN
	1    4800 2750
	-1   0    0    -1  
$EndComp
Text GLabel 5150 2350 2    50   Input ~ 0
GND
Text GLabel 5150 2750 2    50   Input ~ 0
GND
Wire Wire Line
	4450 2350 4650 2350
Wire Wire Line
	4450 2750 4650 2750
Wire Wire Line
	4950 2750 5150 2750
Wire Wire Line
	4950 2350 5150 2350
$Comp
L Switch:SW_SPST SW3
U 1 1 5F6A1EF5
P 6250 950
F 0 "SW3" H 6250 1185 50  0000 C CNN
F 1 "SW_SPST" H 6250 1094 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6250 950 50  0001 C CNN
F 3 "~" H 6250 950 50  0001 C CNN
	1    6250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 950  5900 950 
$EndSCHEMATC
