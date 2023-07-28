# Často kladené dotazy

## Do kterého micro USB mám připojit kabel?
- Používej konektor označený `USB` (ten druhý vám nemusí fungovat).
- ??? "Proč ten druhý nefunguje?"
	Konektor s označením `UART` je připojený skrze převodník. Musel by být nainstalovaný na počítači ovladač, aby tento port fungoval.

## Jak komunikovat se zařízením?
- V levém spodním rohu vyberte COM port (`Select COM Port`).
- Poté je možné spustit monitor (`Monitor`) skrze ikonku v levém spodním rohu.
- Následně se vám otevře terminál, ve kterém vidíte výstup ze zařízení.

## Jak se odpojit od zařízení?
- Pomocí klaves ++ctrl+c++ se odpojíte z monitoru.

## Jak zjistit verzi firmwaru v Jaculu?
- Připojte Jacula k počítači.
- Pomocí ++ctrl+shift+p++ se vám otevře okno pro zadávání příkazů.
- Zadejte `Jaculus: Get firmware version`.
- Výsledek by se měl objevit v terminálu.

## Jak si nainstalovat/přeinstalovat Jaculus na ELKS
- Musíte mít nainstalovaný Python 3 a git
- Zjistěte si port ELKSe, na které chcete nainstalovat Jacula
- Port na windowsech bude COM a číslo, například `COM26`
- Do terminálu zadejte `jac install --port <port> --platform esp32s3 --idf force-init`
- Pokud už jste instalovali Jaclua na vašem počítačí, použijte tento příkaz `jac install --port <port> --platform esp32s3`. Protože `--idf force-init` zajistí že se vám vždy nainstaluje espidf, ale to už není potřeba, protože už ho máte nainstalované.
- Pokud chcete nainstalovat Jaculus na Logica, platformu změňte z `esp32s3` na `esp32`, jinak platí vše co je napsané předem.