# Algorithmus von Dijkstra
Zur Berechnung des Abstands aller Knoten zu einem Startknoten in einem
gerichteten Graphen mit Distanzen an Kanten.

Grundidee:

- Knoten enthalten kürzesten bekannten Abstand zum Startknoten, zu Beginn
  $\infty$.
- Knoten sind in einer Priority Queue (kleinster Abstand zuerst).
- Zu Beginn nur Startknoten in Queue
- Jede Iteration wird ein Knoten aus der Queue entnommen und erweitert,
  bis die Queue leer ist.
- Erweitern eines Knotens $K$:
    - Alle ZielKnoten, an denen einer von $K$ ausgehenden Kanten endet,
      betrachten.
    - Wenn die Distanz `dist(K) + dist(Kante)` kleiner als Distanz des
      Zielknotens, dann diesen mit der neuen kleineren Distanz überschreiben.
      In diesem Fall muss möglicherweise der Eintrag in der Queue auch
      verkleinert werden.
    - Wenn Zielknoten noch nicht untersucht, in die Queue hinzufügen.

Wenn die Queue leer ist, enthalten alle Knoten die Länge des kürzesten Pfades
ausgehend vom Startknoten.


## Rekonstruktion von Pfaden
Möglich, indem jeder Knoten den vorherigen Knoten enthält. Dann
kann von Zielknoten zu Startknoten gelaufen werden.
