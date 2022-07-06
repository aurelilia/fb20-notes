# Heap/BPQ
## Bounded Priority Queue
Queue, die Liste von total sortierten Elementen enthält, mit Interface:

- `insert(E)`: Einfügen eines neuen Elements
- `next(): E` Entfernen des kleinsten momentan enthaltenen Elements (`None` wenn leer)
- `decrease(E, by)`: Wert eines Elements reduzieren

Da bounded: Es besteht eine Maximalzahl an Elementen, siehe [BM](./6_hashtable.md).


## Heap
Binärbaum, bei dem gilt: Die 2 Kindesknoten sind immer größer als der Knoten selbst.  
Somit ist die Wurzel immer der kleinste Knoten.

Baum ist als Array darstellt; jede Schicht von links nach rechts. Damit ergibt sich,
dass für jeden Knoten der linke und rechte Kindknoten sich bei `i * 2 + 1` bzw `i * 2 + 2`
im Array befinden, wobei `i` die Position des Knotens ist. Die Wurzel ist an `i = 0`.

### Einfügen eines Elements
`insert(E)`: Element wird an dem Ende des Arrays hinzugefügt, bzw. am Ende
des Baums eingehängt. Danach solange mit Parent-Knoten tauschen, bis das
neue Element größer als der Parent-Knoten, oder die Wurzel ist.

### Entfernen des kleinsten Elements
`next(): E`: Wurzel (kleinstes Element) zwischenspeichern, dann
letztes Element an Position der Wurzel setzen und am Ende entfernen.  
Dann solange das nun an der Wurzel befindende Element mit dem kleineren
Kindknoten tauschen, bis Invariante wieder erfüllt; dann
zwischengespeichertes Wurzelelement zurückgeben.

### Reduzieren eines Elements
`decrease(E, by)`: Knoten finden, dann Wert um die gegebene Menge reduzieren.  
Um Invariante zu sichern, den Knoten wie beim Einfügen tauschen.

### Reduzieren in konstanter Zeit
Möglich durch "IDs" (Array-Indices), die in separatem Array für alle Elemente die Position angeben.  
Dieses Array muss für alle Operationen aktualisiert werden.

Somit kann für die Reduktion einfach die ID des Elements angegeben werden und dieses
muss nicht gesucht werden, da das Positions-Array dessen Position
an der durch die ID gegebenen Stelle vermerkt.
