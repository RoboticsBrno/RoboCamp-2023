# Lekce 1 - programovací prostředí

V této lekci si představíme Jaculus, nainstalujeme si programovací prostředí a spustíme první program.

## Instalace

Pro práci s Jaculem je nutné nainstalovat několik programů.

### Node.js

Node.js je program, který nám umožní nahrávat kód do Jacula a komunikovat s ním.

1. Stáhněte si <a target="_blank" href="https://nodejs.org/en/download">Node.js</a>.
2. Nainstalujte jej bez měnění nastavení v instalátoru (dle výchozího nastavení).

### Visual Studio Code

Visual Studio Code je programovací prostředí, které nám umožní psát kód a nahrávat jej do Jacula.

1. Stáhněte si <a target="_blank" href="https://code.visualstudio.com/">Visual Studio Code</a>.
2. Nainstalujte jej bez měnění nastavení v instalátoru (dle výchozího nastavení).

### Jaculus

Jaculus je program, který nám umožní nahrávat kód do Jacula a komunikovat s ním.

1. Po instalaci Nodu restartujte aplikaci Visual Studio Code.
2. V horním menu VSCode vyberte záložku `Terminal` a zvolte `Nový terminál`.
3. Do terminálu zadejte příkaz `npm install -g jaculus-tools`.
4. Pro otestování instalace zadejte do terminálu příkaz `jac`, měl by se vám vypsat nápovědu.


### Jaculus VSCode Rozšíření

Rozšíření pro VSCode nám umožní jednoduše nahrávat kód do Jacula pomocí ikonek a klávesových zkratek.

1. V levém menu VSCode vyberte záložku `Extensions` a vyhledejte `Jaculus`.
2. Zvolte `Nainstaovat` a poté `Restartovat`.
3. Po otevevření projektu by se vám ve spodní liště měly objevit oranžové ikonky Jacula.

??? note "Používám Windows a namůžu se připojit na USB port"
	Pokud se vám nedaří připojit na USB port, je nutné doinstalovat správné drivery.

	1. Stáhněte si <a target="_blank" href="https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers">driver</a> pro váš operační systém. Naleznete jej v záložce `Downloads -> Software -> CP210x Universal Windows Driver`.
	2. Rozbalte ZIP soubor a poté pravám plačítkem kliikněte na `silabser.inf` a vyberte `Install`.
	3. Vyzkoušejte, zda se vám podařilo připojit Jaculus. (možná budete muset restartovat počítač).


## Provní projekt



<!--
Otevřeme si programovací prostředí <a target="_blank" href="{{ microbit_url }}">Makecode</a>, které si krátce představíme.

![Rozhraní](assets/interface.png)


Ke kontrole běhu programu slouží bloky `on start` (`při startu`) a `forever` (`opakuj stále`). Bločky umístě v bloku `on start` se vykonají pouze jednou při spuštění a bločky v bloku `forever` se opakují do nekonečna.

## Zadání A

Zobrazíme něco na displeji.

### Ukázka

{{ microbit_snippet("project_1A", "Po spuštění programu se zobrazí jméno.") }}


## Připojení MicroBitu
Budeme postupovat podle <a target="_blank" href="https://makecode.microbit.org/device/usb">návodu</a>.

## Zadání B
Vypíšeme si svoje jméno na displej (nepoužívejte diakritiku).

### Ukázka

{{ microbit_snippet("project_1B") }}

## Zadání C
Budeme blikat LEDkou na displeji.

### Ukázka

{{ microbit_snippet("project_1C") }}

## Zadání výstupního úkolu
Vytvořte animaci zvětšujícího a zmenšujícího se čtverečku. -->
