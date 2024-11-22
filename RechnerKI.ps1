# Einfacher Rechner in PowerShell

function Rechner {
    Write-Host "Willkommen beim einfachen Rechner!"

    # Benutzereingaben
    $zahl1 = Read-Host "Geben Sie die erste Zahl ein"
    $zahl2 = Read-Host "Geben Sie die zweite Zahl ein"

    # Umwandeln der Eingaben in Zahlen
    $zahl1 = [double]$zahl1
    $zahl2 = [double]$zahl2

    Write-Host "Wählen Sie eine Operation:"
    Write-Host "1. Addition (+)"
    Write-Host "2. Subtraktion (-)"
    Write-Host "3. Multiplikation (*)"
    Write-Host "4. Division (/)"

    $operation = Read-Host "Geben Sie die Nummer der gewählten Operation ein (1/2/3/4)"

    switch ($operation) {
        '1' {
            $ergebnis = $zahl1 + $zahl2
            Write-Host "$zahl1 + $zahl2 = $ergebnis"
        }
        '2' {
            $ergebnis = $zahl1 - $zahl2
            Write-Host "$zahl1 - $zahl2 = $ergebnis"
        }
        '3' {
            $ergebnis = $zahl1 * $zahl2
            Write-Host "$zahl1 * $zahl2 = $ergebnis"
        }
        '4' {
            if ($zahl2 -ne 0) {
                $ergebnis = $zahl1 / $zahl2
                Write-Host "$zahl1 / $zahl2 = $ergebnis"
            } else {
                Write-Host "Fehler: Division durch Null ist nicht erlaubt!"
            }
        }
        default {
            Write-Host "Ungültige Eingabe! Bitte wählen Sie 1, 2, 3 oder 4."
        }
    }
}

# Das Programm starten
Rechner