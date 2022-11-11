# Sortieralgorithmen
Algorithmen, die eine endliche *Sequenz* von Elementen eines beliebigen
Datentyps in aufsteigender Reihenfolge, angegeben durch eine totale Ordnung
(Vergleichsoperation), sortiert (= eine Permutation der Sequenz erzeugt).

Sequenz fortgehend als Liste $S$ dargestellt. Indexing durch $S[0..1]$.

## Selection Sort
- Zwischenwert $i$ auf Index des letzten Elements gesetzt.
- Im Loop:
    - Maximalwert wird in $S[0..i]$ gesucht, dieser wird mit dem Element
      $S[i]$ vertauscht
    - $i$ wird um 1 dekrementiert
    - Wenn $i = 0$, ist die Liste sortiert.
- Suche des Maximalwerts:
    - Wert $m = S[0]$ initialisieren
    - $S[1..i]$ durchlaufen und jedes Element $n$ mit $m$ vergleichen, wenn
      $n > m$ dann $m = n$
    - Am Ende ist $m$ das größte Element.

"Immer Maximalwert mit Wert am Ende der Liste vertauschen und danach
zweitgrößtes Element mit vorletztem vertauschen, usw., bis alle Elemente an
ihre richtige Stelle getauscht wurden."

### Invariante
- Iterativ; nach $i$ Iterationen ist die vorliegende Permutation der Sequenz in
  den letzten $i$ Elementen sortiert.
- Somit korrekt: Wenn $i = 0$, dann ist die ganze Permutation sortiert.
- Durch Tausch bei jeder Iteration sichergestellt.

### Asymptotische Komplexität
- Anzahl Iterationen: $|S| - 1$
- Suche nach Maximalwert durchsucht $|S|$ Elemente
- Somit Komplexität $|S|^2$


## Bubble Sort
- Zwischenwert $i$ auf Index des letzten Elements gesetzt.
- Im Loop:
    - $S[0..i]$ wird durchlaufen und immer 2 nebeneinander liegende Werte werden
      verglichen. Wenn diese 2 Werte nicht in der richtigen Reihenfolge sind,
      werden sie vertauscht.
    - $i$ wird um 1 dekrementiert
    - Wenn $i = 0$, ist die Liste sortiert.

Durch den Tausch werden hohe werde "mitgeschleppt" und wandern die Liste hoch,
"bubble up".  
Nach erstem Durchlauf der inneren Schleife ist das letzte Element richtig,
nach dem zweiten das vorletzte, usw.

### Invariante
- Iterativ; nach $i$ Iterationen ist die vorliegende Permutation der Sequenz in
  den letzten $i$ Elementen sortiert.
- Somit korrekt: Wenn $i = 0$, dann ist die ganze Permutation sortiert.
- Durch Tausch aller nicht passender Elemente bei jeder Iteration
  sichergestellt.

### Asymptotische Komplexität
- Anzahl Iterationen $|S| - 1$
- Suche nach zu tauschenden Elementen durchschnittlich $|S| / 2$ Iterationen
- Somit Komplexität $|S|^2$


## Merge Sort
- Wenn $|S| \le 1$, wird nichts getan: bereits sortiert.
- Ansonsten zuerst $S$ in 2 gleich große Subsequenzen $L$ und $R$ zerlegt.
  (Länge um 1 unterschiedlich, wenn $|S|$ ungerade).
  Art der Zerlegung egal: Liste in der Mitte teilen, zufällig Elemente zuweisen,
  etc. alles valide
- Rekursiver Aufruf Merge Sort mit den Teilsequenzen $L, R$, dadurch $L, R$
  sortiert
- $L, R$ werden wieder zu $S$ zusammengeführt:
    - Indices $i_L, i_R$
    - Loop, bis alle Elemente aus $L, R$ entfernt wurden.
    - Für jeden Loop: Vergleich $L[i_L]$ mit $R[i_R]$; kleineres Element landet
      in $S$ und $i_L$ bzw. $i_R$ wird inkrementiert.
    - Wenn alle Elemente aus $L$ oder $R$ eingefügt wurden, kann der Rest des
      anderen am Ende von $S$ angehängt werden.
- Zum Schluss alle Elemente sortiert in $S$.

Durch den rekursiven Aufruf wird nach genug Rekursion $|S| = 1$, sodass dies
sortiert ist und Rekursion stoppt. Das Merging zweier Teilsequenzen mit
$|L|, |R| = 1$ ist immer richtig. Die Sortierung größerer Teilsequenzen ergibt
sich somit.

### Invariante
- Rekursiv; Bei jedem Schritt Liste aufgeteilt und sortiert, dann wieder merged
- Bei Merge:
    - Nach $i$ Iterationen: $i_R + i_L = i$, d.h. die Anzahl der Elemente, die
      zu $S$ hinzugefügt wurden, sind $i$ und entsprechen der Menge an
      durchlaufenen Elementen in $L$ und $R$.
    - Wird erhalten, in dem nach dem Einfügen eines Elements der Index
      inkrementiert wird.

### Asymptotische Komplexität
- Rekursionstiefe logarithmisch, da Liste bei jedem Schritt halbiert
- Insgesamt $n log n$.
- Bei Merge: Linear bzw. $n$, da nur ein Durchlauf.


## Quicksort
- Wenn $|S| \le 1$, wird nichts getan: bereits sortiert.
- Ansonsten zuerst Pivot $p$ wählen, normalerweise zufälliger Wert in $S$.
- $S$ in 3 gleich große Subsequenzen $L$, $M$ und $R$ zerlegen: $L$ alle Werte
  kleiner als $p$, $M$ alle gleich $p$, $R$ alle größer $p$.
- Rekursiver Aufruf Quicksort mit den Teilsequenzen $L, R$, dadurch $L, R$
  sortiert
- $L, M, R$ werden wieder zu $S$ zusammengeführt; $S = L+M+R$ in der
  Reihenfolge.
- Zum Schluss alle Elemente sortiert in $S$.

Durch den rekursiven Aufruf wird nach genug Rekursion $|S| = 1$, sodass dies
sortiert ist und Rekursion stoppt. Das Merging der Teilsequenzen mit
$|L|, |M|, |R| \le 1$ ist immer richtig. Die Sortierung größerer Teilsequenzen
ergibt sich somit.

### Invariante
- Rekursiv; Bei jedem Schritt Liste aufgeteilt und sortiert, dann wieder merged

### Asymptotische Komplexität
- Worst case: Quadratischer Aufwand, wenn immer alle Werte in $L$ oder $R$
  landen
- Bei guten Pivots: logarithmisch
- Insgesamt $n log n$.

### Variante: In-place
Wenn in-place: Anstatt Aufteilung wird Quellsequenz aufgeteilt in drei
Abschnitte für $L, M, R$, dessen Länge zuerst durch Durchlauf der Sequenz
ermittelt werden muss. Danach werden alle nicht passenden Elemente für die 3
Teilsequenzen getauscht, bis sie passen; hierfür werden 3 Indices benötigt.
Der rekursive Aufruf enthält zusätzlich einen Parameter, der den Abschnitt der
Liste angibt, der sortiert werden soll.
(Somit rekursiver Aufruf auf Abschnitte, die $L$ und $R$ darstellen).

Merging kann in dieser Variante ganz weggelassen werden, da auf dem Quellarray
gehandelt wird.


## Bucket Sort
- Lexiographischer Sortieralgorithmus
- Zuerst: Bucket-Array $B$ erstellen: Array aus Arrays; ein Array pro Buchstabe
  im Alphabet
- Das längste zu sortierende Wort ermitteln, Länge als $i$ speichern
- Zwischenspeicher $S'$, der Wörter enthält und zu Beginn leer ist
- Im Loop $i > 1; i--$:
    - Wörter aus $S'$ entfernen und in Buckets verteilen; Bucket durch
      Buchstabe an $i$ entschieden
    - Wörter mit Länge $i$ in Buckets verteilen; Bucket durch Buchstabe an
      $i$ entschieden
    - Wörter aus Buckets in $S'$ speichern
    - Richtige Reihenfolge der Wörter immer wichtig! 
      Wenn 2 Wörter aus $S'$ im gleichen Bucket, muss Reihenfolge im Bucket
      erhalten bleiben

Danach alle Elemente in den Buckets richtig lexiographisch sortiert, da zuerst
nach den letzten Buchstaben sortiert wurde und sich dann
"nach vorne gearbeitet" wurde.

### Invariante
- Iterativ; Nach $i$ Iterationen sind alle Wörter in $S'$ nach ihren letzten 
  $i$ Buchstaben lexiographisch sortiert.
- Korrekt, da wenn $i == 1$, alle Wörter von Beginn sortiert.
- Buckets, um Invariante zu halten

### Asymptotische Komplexität
- Jede Position wird in jedem Wort einmal untersucht
- Laufzeit linear zu Summe aller Wortlängen
