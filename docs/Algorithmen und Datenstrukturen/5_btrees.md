# B-Trees
## Vielwegbäume
Bäume, bei denen jeder Knoten mehrere Werte hat und mehrere Kinder.  

### Vielwegsuchbäume
- Werte im Knoten aufsteigend sortiert
- Alle Werte im $n$-ten Kind haben Werte, die kleiner sind als der $n$-te Wert
  (und größer als der $n-1$-te Wert, wenn $n \not= 0$; Ausnahme ist letztes Kind)

### Wozu Vielwegbäume?
Hauptgrund: Bessere Cache Locality als Binary Trees.


## B-Tree
Vielwegbäum mit Ordnung $M$, wobei jeder Knoten $2M - 1$ Werte enthalten kann
und somit $2M$ Nachfolger.

Jeder Knoten muss $M - 1$ Kindesknoten haben. Dadurch ergibt sich, dass die Höhe
des Baums beschränkt ist - bereits Stufe 3 hat $2M^2$ Knoten, und somit
ist die Tiefe durch praktische Speicherbegrenzungen begrenzt.


## Finden eines Werts
- Pointer $P$ auf Wurzelknoten
- In Loop:
    - Werte in $P$ durchlaufen, bis richtiger Kindesknoten gefunden (oder Wert, dann diesen zurückgeben)
    - $P$ auf diesen setzen
    - Wenn Kind nicht vorhanden: Wert nicht im Baum


## Einfügen eines Werts
- Wie bei Binärbaum bis Blatt traversieren
- Wenn Slot im Blatt nicht voll: Einfügen
- Wenn voll: Split
    - Knoten wird in 2 zerlegt
    - Mittlere Wert wird in Elternknoten verschoben, Werte nach Mitte in neuen Knoten nach 
      dem aufzuteilenden Knoten verschoben
    - Danach einfügen

### Split an der Wurzel
- Wurzel wird wie bei anderen Knoten aufgeteilt
- Wurzel wird ersetzt durch neuen, dritten Knoten, der den Mittelwert enthält
- Somit neue Wurzel mit 2 Kindern 


## Entfernen eines Werts
- In einem Blattknoten: Wert kann einfach entfernt werden.
- In einem inneren Knoten: Analog zu Binärbaum, ersetzen durch Blattknotenwert durch Traversal

### Merge
Wenn Wert entfernt wird und Knoten nun $M-2$ Werte enthält, muss dieser mit dem
vorherigen Knoten im Elternknoten merged werden - effektiv gegenteilige Operation
zu Split.

Wenn vorheriger Knoten zu voll: Rotate:  

- Erster Wert aus nachfolgendem Kindesknoten wird in den Elternknoten verschoben
- Vorheriger Wert im Elternknoten wird in den zu kleinen Kindes
