# Lekce 1 - programovací prostředí + první program

V této lekci si představíme Jaculus, nainstalujeme si programovací prostředí a spustíme první program.

## Instalace

Pro práci s Jaculem je nutné nainstalovat několik programů.

### Node.js

Node.js je program, který nám umožní nahrávat kód do Jacula a komunikovat s ním.

1. Stáhněte si [Node.js](https://nodejs.org/en/download) (nejnovější stabilní verzi - LTS)</a>.
2. Nainstalujte jej dle výchozího nastavení (není potřeba nic měnit).

### Visual Studio Code

Visual Studio Code je programovací prostředí, které nám umožní psát kód a nahrávat jej do Jacula.

1. Stáhněte si [Visual Studio Code](https://code.visualstudio.com/download) (nejnovější stabilní verzi)</a>.
2. Nainstalujte jej dle výchozího nastavení (není potřeba nic měnit).

### Jaculus

Jaculus je program, který nám umožní nahrávat kód do Jacula a komunikovat s ním.

1. Po instalaci Nodu restartujte aplikaci Visual Studio Code.
2. V horním menu VSCode vyberte záložku `Terminal` a zvolte `New Terminal`.
3. Do terminálu zadejte příkaz. Na `Linuxu` bude jejspíše potřeba `sudo`.

	```bash
	npm install -g jaculus
	```

4. Pro otestování instalace zadejte do terminálu příkaz:

	```bash
	npx jac
	```

	Program by měl vypsat nápovědu.


### Jaculus VSCode Rozšíření

Rozšíření pro VSCode nám umožní jednoduše nahrávat kód do Jacula pomocí ikonek a klávesových zkratek.

1. V levém menu VSCode vyberte záložku `Extensions` a vyhledejte `Jaculus`.
	- SCREENSHOT
2. Zvolte `Install`.
3. Po otevření projektu by se vám ve spodní liště měly objevit oranžové ikonky Jacula.
   - SCREENSHOT

??? note "Používám Windows a nemůžu se připojit přes USB UART"
	Pokud se vám nedaří připojit na USB UART port, je nutné doinstalovat správné drivery.

	1. Stáhněte si <a target="_blank" href="https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers">driver</a> pro váš operační systém. Naleznete jej v záložce `Downloads -> Software -> CP210x Universal Windows Driver`.
	2. Rozbalte ZIP soubor a poté pravým tlačítkem klikněte na `silabser.inf` a vyberte `Install`.
	3. Vyzkoušejte, zda se vám podařilo připojit Jaculus. (možná budete muset restartovat počítač).


## První projekt

1. zip
2. rozbalit
3. otevřít v vscode
4. výběr portu
5. monitor

## Nahrání programu
1. build flash
2. monitor
3. vidím výstup

## Úprava programu
1. změna textu
2. rychlost blikání
3. změna barvy
4. přidání konstan pro zadefinování portů