# Algorithmus von Prim
Algorithmus zur Berechnung eines minimal spannenden Baums aus einem
ungerichteten Graph, bedeutet:

- Alle Knoten sind von allen anderen Knoten erreichbar
- Summe aller Kantenlängen ist minimal, indem Kanten entfernt werden
- Baum ist zusammenhängend und zyklenfrei

Konzept:

- Zufällig gewählter Startknoten $S$
- Bounded Priority Queue, die alle Knoten außer $S$ enthält,
  sowie dessen Kante zu $S$ (oder $\infty$)
- Bearbeiten des nächsten BPQ-Knotens, bis leer, für alle Knoten $K$:
    - Für alle Knoten mit Kante zu $K$: Falls kleiner als gespeicherte Kante,
      Kante überschreiben
- Zum Schluss sind alle in Knoten vermerkten Kanten zu behalten und alle
  anderen Kanten zu löschen, um den Baum zu erhalten.

### Invariante
- Nach $n$ Iterationen $n+1$ Knoten verarbeitet
- Die gespeicherten Kanten bilden einen MST aus den verarbeiteten Knoten

### Asymptotische Komplexität
- Dominiert durch BPQ
- $\text{Knotenzahl} + \text{Kantenzahl} \cdot log \text{Knotenzahl}$
