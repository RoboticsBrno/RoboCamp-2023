EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4450 3400
NoConn ~ 4450 3500
$Comp
L Device:R R?
U 1 1 600FC98C
P 7900 3900
AR Path="/600FC98C" Ref="R?"  Part="1" 
AR Path="/600FB290/600FC98C" Ref="R6"  Part="1" 
F 0 "R6" H 7970 3946 50  0000 L CNN
F 1 "100k" H 7970 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 3900 50  0001 C CNN
F 3 "~" H 7900 3900 50  0001 C CNN
	1    7900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600FC992
P 5000 3900
AR Path="/600FC992" Ref="C?"  Part="1" 
AR Path="/600FB290/600FC992" Ref="C3"  Part="1" 
F 0 "C3" H 5115 3946 50  0000 L CNN
F 1 "10n" H 5115 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5038 3750 50  0001 C CNN
F 3 "~" H 5000 3900 50  0001 C CNN
	1    5000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3750 5700 3750
$Comp
L Device:R R?
U 1 1 600FC999
P 7900 3500
AR Path="/600FC999" Ref="R?"  Part="1" 
AR Path="/600FB290/600FC999" Ref="R5"  Part="1" 
F 0 "R5" H 7970 3546 50  0000 L CNN
F 1 "10k" H 7970 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 3500 50  0001 C CNN
F 3 "~" H 7900 3500 50  0001 C CNN
	1    7900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3750 7900 3750
Wire Wire Line
	7900 3650 7900 3750
Connection ~ 7900 3750
Wire Wire Line
	5700 3550 5350 3550
Wire Wire Line
	5350 3550 5350 4250
Wire Wire Line
	5350 4250 6850 4250
Wire Wire Line
	6850 4250 6850 4050
Wire Wire Line
	6850 3950 6700 3950
Wire Wire Line
	7900 4050 6850 4050
Connection ~ 6850 4050
Wire Wire Line
	6850 4050 6850 3950
$Comp
L Device:C C?
U 1 1 600FC9AA
P 7900 4200
AR Path="/600FC9AA" Ref="C?"  Part="1" 
AR Path="/600FB290/600FC9AA" Ref="C4"  Part="1" 
F 0 "C4" H 8015 4246 50  0000 L CNN
F 1 "4.7u" H 8015 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7938 4050 50  0001 C CNN
F 3 "~" H 7900 4200 50  0001 C CNN
	1    7900 4200
	1    0    0    -1  
$EndComp
Connection ~ 7900 4050
Wire Wire Line
	5700 3950 5600 3950
Wire Wire Line
	5600 3950 5600 3200
Wire Wire Line
	5600 3200 6200 3200
Wire Wire Line
	7900 3200 7900 3350
Wire Wire Line
	6200 3350 6200 3200
Connection ~ 6200 3200
Wire Wire Line
	6200 3200 7900 3200
Connection ~ 5600 3200
Wire Wire Line
	6200 4400 6200 4150
Wire Wire Line
	5000 4050 5000 4400
Wire Wire Line
	5000 4400 6200 4400
Connection ~ 6200 4400
Wire Wire Line
	6200 4400 7700 4400
Wire Wire Line
	5000 4400 4150 4400
Wire Wire Line
	4150 4400 4150 3800
Connection ~ 5000 4400
$Comp
L solderingChallenge-rescue:USB_A-Connector J?
U 1 1 600FC9C2
P 4150 3400
AR Path="/600FC9C2" Ref="J?"  Part="1" 
AR Path="/600FB290/600FC9C2" Ref="J4"  Part="1" 
F 0 "J4" H 4207 3867 50  0000 C CNN
F 1 "USB_A" H 4207 3776 50  0000 C CNN
F 2 "RoboCamp:usb-PCB" H 4300 3350 50  0001 C CNN
F 3 " ~" H 4300 3350 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
NoConn ~ 4050 3800
Wire Wire Line
	7900 4400 7900 4350
$Comp
L Device:R R?
U 1 1 600FC9CA
P 7550 3550
AR Path="/600FC9CA" Ref="R?"  Part="1" 
AR Path="/600FB290/600FC9CA" Ref="R4"  Part="1" 
F 0 "R4" V 7343 3550 50  0000 C CNN
F 1 "330R" V 7434 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7480 3550 50  0001 C CNN
F 3 "~" H 7550 3550 50  0001 C CNN
	1    7550 3550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 600FC9D2
P 7250 3550
AR Path="/600FC9D2" Ref="D?"  Part="1" 
AR Path="/600FB290/600FC9D2" Ref="D2"  Part="1" 
F 0 "D2" H 7243 3295 50  0000 C CNN
F 1 "LED" H 7243 3386 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7250 3550 50  0001 C CNN
F 3 "~" H 7250 3550 50  0001 C CNN
	1    7250 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 3550 7700 4400
Connection ~ 7700 4400
Wire Wire Line
	7700 4400 7900 4400
Connection ~ 4150 4400
$Comp
L power:PWR_FLAG #FLG?
U 1 1 600FC9EC
P 5600 3200
AR Path="/600FC9EC" Ref="#FLG?"  Part="1" 
AR Path="/600FB290/600FC9EC" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 5600 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 5600 3373 50  0000 C CNN
F 2 "" H 5600 3200 50  0001 C CNN
F 3 "~" H 5600 3200 50  0001 C CNN
	1    5600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 600FC9F3
P 4150 4400
AR Path="/600FC9F3" Ref="#FLG?"  Part="1" 
AR Path="/600FB290/600FC9F3" Ref="#FLG04"  Part="1" 
F 0 "#FLG04" H 4150 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 4573 50  0000 C CNN
F 2 "" H 4150 4400 50  0001 C CNN
F 3 "~" H 4150 4400 50  0001 C CNN
	1    4150 4400
	-1   0    0    1   
$EndComp
$Comp
L Timer:LMC555xM U2
U 1 1 60105C46
P 6200 3750
F 0 "U2" H 6300 4200 50  0000 C CNN
F 1 "LMC555xM" H 6400 4100 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7050 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmc555.pdf" H 7050 3350 50  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
Text Label 4800 3200 0    50   ~ 0
VCC
Text Label 4600 4400 0    50   ~ 0
GND
Wire Wire Line
	4450 3200 5600 3200
Wire Wire Line
	6700 3550 7100 3550
$EndSCHEMATC
