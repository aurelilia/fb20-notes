# Klausurvorbereitung
*Dieses Dokument enthält relativ unorganisierte zu Dingen, die ich zur Klausur noch wiederholen*
*muss. Sie ist warscheinlich nicht sehr hilfreich.*

## TODO
- Auf Papier Schaltungen, KV-Diagramme, Timing-Diagramme üben
- Übungen wiederholen:
  - 4.2
  - 5.3
  - 7.1
  - 7.2
  - 7.4
  - 8.1
  - 8.4
- Vorlesungen genauer lesen:
  - 08.12
  - 15.12


### Umwandlung binär zu negativer Zweierkomplement-Zahl
1. Unsigned binär bilden: $53_{10} = 011 0101_2$
2. Bitwise not anwenden: $011 0101_2 = 1001010_2$
3. Inkrement 1: $100 1011_2 = -53_{10}$

### Parität
- Bits für $m$ Wörter mit $n$ Bit-Breite: $m * (n + 1)$

### CMOS
- (Mögl. FETs mehr anschauen?)
- Pull-Up (pMOS) für An-Zustände, Pull-Down (nMOS) für Aus-Zustände
- Transmissionsgatter: Wie "doppelseitiger" CMOS, Input unten invertiert als weiterer Eingang

### KNF & DNF
- KNF: Zustände mit 0, (A + B)(C + D); Alle Inputs invertiert
- DNF: Zustände mit 1, AB+CD; Inputs nicht invertiert
- Maxterm: Summe über alle Eingangsvariablen

### Bubble Pushing
- Gattertyp ändern, alle Bubbles invertieren
- Ziel: Bubbles minimieren!

### Multiplexer und Decoder
- Multiplexer ("MUX16") als Lookup: Input ist Ausgangswerte, Stellenangabe Inputs
- Decoder ("DECODE4") kann erste Stufe von zweistufiger Logik ersetzen

### Verzögerungen
$t_{pd}$: maximale Zeit vom Eingang zum Ausgang (Ausbreitungsverzögerung, propagation delay)  
$t_{cd}$: minimale Zeit vom Eingang zum Ausgang (Kontaminationsverzögerung, contamination delay)  
Berechnung bei Schaltung: Alle Änderungswege, davon min/max

### Störimpulse
- Zwischen Blöcken in KV-Diagrammen
- Mit Timing-Diagrammen verifizieren
- Korrigieren, indem 2-er Block aus Übergang in die Funktion mitaufgenommen wird

### Adder
- Ripple-Carry-Adder: Volladdierer aneinander gereiht
- Überlauf dann der Fall, wenn Vorzeichen A == B != F

### Latches/FFs
- Latches übernehmen bei CLK = 1, FF bei steigender Flanke CLK
- Wenn CLK und Eingang gleichzeitig 1 werden: Nicht durch FF übernommen wegen Delay!

### Taktzeit
- Max. Taktgeschwindigkeit: 1 / t_pd
- Bei t_pd in ps: Angabe in GHz

