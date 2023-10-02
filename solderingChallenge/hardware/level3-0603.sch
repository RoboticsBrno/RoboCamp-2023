EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 4750 3350
NoConn ~ 4750 3450
$Comp
L Device:R R?
U 1 1 600FE705
P 8200 3850
AR Path="/600FE705" Ref="R?"  Part="1" 
AR Path="/600FD428/600FE705" Ref="R9"  Part="1" 
F 0 "R9" H 8270 3896 50  0000 L CNN
F 1 "100k" H 8270 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8130 3850 50  0001 C CNN
F 3 "~" H 8200 3850 50  0001 C CNN
	1    8200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600FE70B
P 5300 3850
AR Path="/600FE70B" Ref="C?"  Part="1" 
AR Path="/600FD428/600FE70B" Ref="C5"  Part="1" 
F 0 "C5" H 5415 3896 50  0000 L CNN
F 1 "10n" H 5415 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 3700 50  0001 C CNN
F 3 "~" H 5300 3850 50  0001 C CNN
	1    5300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3700 6000 3700
$Comp
L Device:R R?
U 1 1 600FE712
P 8200 3450
AR Path="/600FE712" Ref="R?"  Part="1" 
AR Path="/600FD428/600FE712" Ref="R8"  Part="1" 
F 0 "R8" H 8270 3496 50  0000 L CNN
F 1 "10k" H 8270 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8130 3450 50  0001 C CNN
F 3 "~" H 8200 3450 50  0001 C CNN
	1    8200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3700 8200 3700
Wire Wire Line
	8200 3600 8200 3700
Connection ~ 8200 3700
Wire Wire Line
	6000 3500 5650 3500
Wire Wire Line
	5650 3500 5650 4200
Wire Wire Line
	5650 4200 7150 4200
Wire Wire Line
	7150 4200 7150 4000
Wire Wire Line
	7150 3900 7000 3900
Wire Wire Line
	8200 4000 7150 4000
Connection ~ 7150 4000
Wire Wire Line
	7150 4000 7150 3900
$Comp
L Device:C C?
U 1 1 600FE723
P 8200 4150
AR Path="/600FE723" Ref="C?"  Part="1" 
AR Path="/600FD428/600FE723" Ref="C6"  Part="1" 
F 0 "C6" H 8315 4196 50  0000 L CNN
F 1 "4.7u" H 8315 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8238 4000 50  0001 C CNN
F 3 "~" H 8200 4150 50  0001 C CNN
	1    8200 4150
	1    0    0    -1  
$EndComp
Connection ~ 8200 4000
Wire Wire Line
	6000 3900 5900 3900
Wire Wire Line
	5900 3900 5900 3150
Wire Wire Line
	5900 3150 6500 3150
Wire Wire Line
	8200 3150 8200 3300
Wire Wire Line
	6500 3300 6500 3150
Connection ~ 6500 3150
Wire Wire Line
	6500 3150 8200 3150
Connection ~ 5900 3150
Wire Wire Line
	6500 4350 6500 4100
Wire Wire Line
	5300 4000 5300 4350
Wire Wire Line
	5300 4350 6500 4350
Connection ~ 6500 4350
Wire Wire Line
	6500 4350 8000 4350
Wire Wire Line
	5300 4350 4450 4350
Wire Wire Line
	4450 4350 4450 3750
Connection ~ 5300 4350
$Comp
L solderingChallenge-rescue:USB_A-Connector J?
U 1 1 600FE73B
P 4450 3350
AR Path="/600FE73B" Ref="J?"  Part="1" 
AR Path="/600FD428/600FE73B" Ref="J6"  Part="1" 
F 0 "J6" H 4507 3817 50  0000 C CNN
F 1 "USB_A" H 4507 3726 50  0000 C CNN
F 2 "RoboCamp:usb-PCB" H 4600 3300 50  0001 C CNN
F 3 " ~" H 4600 3300 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
NoConn ~ 4350 3750
Wire Wire Line
	8200 4350 8200 4300
$Comp
L Device:R R?
U 1 1 600FE743
P 7850 3500
AR Path="/600FE743" Ref="R?"  Part="1" 
AR Path="/600FD428/600FE743" Ref="R7"  Part="1" 
F 0 "R7" V 7643 3500 50  0000 C CNN
F 1 "330R" V 7734 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7780 3500 50  0001 C CNN
F 3 "~" H 7850 3500 50  0001 C CNN
	1    7850 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3500 7650 3500
$Comp
L Device:LED D?
U 1 1 600FE74B
P 7500 3500
AR Path="/600FE74B" Ref="D?"  Part="1" 
AR Path="/600FD428/600FE74B" Ref="D3"  Part="1" 
F 0 "D3" H 7493 3245 50  0000 C CNN
F 1 "LED" H 7493 3336 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 3500 50  0001 C CNN
F 3 "~" H 7500 3500 50  0001 C CNN
	1    7500 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 3500 8000 4350
Connection ~ 8000 4350
Wire Wire Line
	8000 4350 8200 4350
Connection ~ 4450 4350
$Comp
L power:PWR_FLAG #FLG?
U 1 1 600FE765
P 5900 3150
AR Path="/600FE765" Ref="#FLG?"  Part="1" 
AR Path="/600FD428/600FE765" Ref="#FLG05"  Part="1" 
F 0 "#FLG05" H 5900 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 3323 50  0000 C CNN
F 2 "" H 5900 3150 50  0001 C CNN
F 3 "~" H 5900 3150 50  0001 C CNN
	1    5900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 600FE76C
P 4450 4350
AR Path="/600FE76C" Ref="#FLG?"  Part="1" 
AR Path="/600FD428/600FE76C" Ref="#FLG06"  Part="1" 
F 0 "#FLG06" H 4450 4425 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 4523 50  0000 C CNN
F 2 "" H 4450 4350 50  0001 C CNN
F 3 "~" H 4450 4350 50  0001 C CNN
	1    4450 4350
	-1   0    0    1   
$EndComp
$Comp
L Timer:LMC555xMM U3
U 1 1 6010C318
P 6500 3700
F 0 "U3" H 6600 4150 50  0000 C CNN
F 1 "LMC555xMM" H 6750 4050 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 7150 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmc555.pdf" H 7350 3300 50  0001 C CNN
	1    6500 3700
	1    0    0    -1  
$EndComp
Text Label 5300 3150 0    50   ~ 0
VCC
Text Label 4750 4350 0    50   ~ 0
GND
Wire Wire Line
	7000 3500 7350 3500
Wire Wire Line
	4750 3150 5900 3150
$EndSCHEMATC
