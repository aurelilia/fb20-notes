# Algorithmus von Kruskal
Algorithmus zur Berechnung eines MST mit *maximalen* Kantenlängen.

- Kanten nach Größe absteigend sortieren
- [Set of Sets](./c_union.md) mit jedem Knoten
- Für jede Kante, absteigend:
    - Wenn beide Knoten im gleichen Set: Kante verwerfen
    - Wenn nicht: Merge der Knoten im Set
