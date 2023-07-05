EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4750 3450
NoConn ~ 4750 3550
$Comp
L Timer:LM555xN U?
U 1 1 600F9A49
P 6500 3800
AR Path="/600F9A49" Ref="U?"  Part="1" 
AR Path="/600F28F2/600F9A49" Ref="U1"  Part="1" 
F 0 "U1" H 6800 4250 50  0000 C CNN
F 1 "LM555xN" H 6700 4150 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7150 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 7350 3400 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 600F9A4F
P 8200 3950
AR Path="/600F9A4F" Ref="R?"  Part="1" 
AR Path="/600F28F2/600F9A4F" Ref="R3"  Part="1" 
F 0 "R3" H 8270 3996 50  0000 L CNN
F 1 "100k" H 8270 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8130 3950 50  0001 C CNN
F 3 "~" H 8200 3950 50  0001 C CNN
	1    8200 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600F9A55
P 5300 3950
AR Path="/600F9A55" Ref="C?"  Part="1" 
AR Path="/600F28F2/600F9A55" Ref="C1"  Part="1" 
F 0 "C1" H 5415 3996 50  0000 L CNN
F 1 "10n" H 5415 3905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 5338 3800 50  0001 C CNN
F 3 "~" H 5300 3950 50  0001 C CNN
	1    5300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3800 6000 3800
$Comp
L Device:R R?
U 1 1 600F9A5C
P 8200 3550
AR Path="/600F9A5C" Ref="R?"  Part="1" 
AR Path="/600F28F2/600F9A5C" Ref="R2"  Part="1" 
F 0 "R2" H 8270 3596 50  0000 L CNN
F 1 "10k" H 8270 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8130 3550 50  0001 C CNN
F 3 "~" H 8200 3550 50  0001 C CNN
	1    8200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3800 8200 3800
Wire Wire Line
	8200 3700 8200 3800
Connection ~ 8200 3800
Wire Wire Line
	6000 3600 5650 3600
Wire Wire Line
	5650 3600 5650 4300
Wire Wire Line
	5650 4300 7150 4300
Wire Wire Line
	7150 4300 7150 4100
Wire Wire Line
	7150 4000 7000 4000
Wire Wire Line
	8200 4100 7150 4100
Connection ~ 7150 4100
Wire Wire Line
	7150 4100 7150 4000
$Comp
L Device:C C?
U 1 1 600F9A6D
P 8200 4250
AR Path="/600F9A6D" Ref="C?"  Part="1" 
AR Path="/600F28F2/600F9A6D" Ref="C2"  Part="1" 
F 0 "C2" H 8315 4296 50  0000 L CNN
F 1 "4.7u" H 8315 4205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 8238 4100 50  0001 C CNN
F 3 "~" H 8200 4250 50  0001 C CNN
	1    8200 4250
	1    0    0    -1  
$EndComp
Connection ~ 8200 4100
Wire Wire Line
	6000 4000 5900 4000
Wire Wire Line
	5900 4000 5900 3250
Wire Wire Line
	5900 3250 6500 3250
Wire Wire Line
	8200 3250 8200 3400
Wire Wire Line
	6500 3400 6500 3250
Connection ~ 6500 3250
Wire Wire Line
	6500 3250 8200 3250
Connection ~ 5900 3250
Wire Wire Line
	6500 4450 6500 4200
Wire Wire Line
	5300 4100 5300 4450
Wire Wire Line
	5300 4450 6500 4450
Connection ~ 6500 4450
Wire Wire Line
	6500 4450 8000 4450
Wire Wire Line
	5300 4450 4450 4450
Wire Wire Line
	4450 4450 4450 3850
Connection ~ 5300 4450
$Comp
L solderingChallenge-rescue:USB_A-Connector J?
U 1 1 600F9A85
P 4450 3450
AR Path="/600F9A85" Ref="J?"  Part="1" 
AR Path="/600F28F2/600F9A85" Ref="J2"  Part="1" 
F 0 "J2" H 4507 3917 50  0000 C CNN
F 1 "USB_A" H 4507 3826 50  0000 C CNN
F 2 "RoboCamp:usb-PCB" H 4600 3400 50  0001 C CNN
F 3 " ~" H 4600 3400 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
NoConn ~ 4350 3850
Wire Wire Line
	8200 4450 8200 4400
$Comp
L Device:R R?
U 1 1 600F9A8D
P 7700 3600
AR Path="/600F9A8D" Ref="R?"  Part="1" 
AR Path="/600F28F2/600F9A8D" Ref="R1"  Part="1" 
F 0 "R1" V 7493 3600 50  0000 C CNN
F 1 "330R" V 7584 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7630 3600 50  0001 C CNN
F 3 "~" H 7700 3600 50  0001 C CNN
	1    7700 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3600 7400 3600
Wire Wire Line
	7100 3600 7000 3600
$Comp
L Device:LED D?
U 1 1 600F9A95
P 7250 3600
AR Path="/600F9A95" Ref="D?"  Part="1" 
AR Path="/600F28F2/600F9A95" Ref="D1"  Part="1" 
F 0 "D1" H 7243 3345 50  0000 C CNN
F 1 "LED" H 7243 3436 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7250 3600 50  0001 C CNN
F 3 "~" H 7250 3600 50  0001 C CNN
	1    7250 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 3600 8000 3600
Wire Wire Line
	8000 3600 8000 4450
Connection ~ 8000 4450
Wire Wire Line
	8000 4450 8200 4450
Connection ~ 4450 4450
$Comp
L power:PWR_FLAG #FLG?
U 1 1 600F9AAF
P 5900 3250
AR Path="/600F9AAF" Ref="#FLG?"  Part="1" 
AR Path="/600F28F2/600F9AAF" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 5900 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 3423 50  0000 C CNN
F 2 "" H 5900 3250 50  0001 C CNN
F 3 "~" H 5900 3250 50  0001 C CNN
	1    5900 3250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 600F9AB6
P 4450 4450
AR Path="/600F9AB6" Ref="#FLG?"  Part="1" 
AR Path="/600F28F2/600F9AB6" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 4450 4525 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 4623 50  0000 C CNN
F 2 "" H 4450 4450 50  0001 C CNN
F 3 "~" H 4450 4450 50  0001 C CNN
	1    4450 4450
	-1   0    0    1   
$EndComp
Text Label 4850 4450 0    50   ~ 0
GND
Text Label 5300 3250 0    50   ~ 0
VCC
Wire Wire Line
	4750 3250 5900 3250
$EndSCHEMATC
