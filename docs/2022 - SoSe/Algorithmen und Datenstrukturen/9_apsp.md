# All Pairs Shortest Paths
Algorithmus zur Berechnung einer Matrix, die alle kürzesten Pfade zwischen
Knoten eines gerichteten Graphen angibt.

Konzept: Iterativ, zu Beginn sind alle Felder, die zum gleichen Knoten sind 0,
alle direkten Pfade sind ebenfalls eingetragen, alle anderen Felder $\infty$.  
(Beispiel: `K1 -> K1 = 0`, `K1 -> K2 = 5` wenn direkte Kante mit Länge 5,
`K1 -> K3 = INF`)

Bei jeder Iteration werden Wege, die einen weiteren Knoten traversieren, betrachtet
und alle Felder der Matrix werden möglicherweise mit dem neuen kürzeren Weg
aktualisiert.


## Bellman-Ford
Da diese Matrix ein mathematischer Körper ist, ergibt sich, dass sich die Matrix
nach $n$ Iterationen wie folgt erhalten lässt:

$L$: Matrix zu Beginn des Algorithmus  
$M^n = M^{n-1} \cdot L$

Somit kann die Matrix mit nur einfacher Multiplikation berechnet werden.

### Repeated Squaring
Durch die Eigenschaften der Matrixmultiplikation lässt sich dieser Prozess
weiter beschleunigen:

$M^{n \cdot 2} = M^n \cdot M^n$.


## Floyd-Warshal
TODO
