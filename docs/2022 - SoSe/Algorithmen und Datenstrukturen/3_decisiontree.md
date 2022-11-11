# Decision Trees
Einfache Binärbäume, die eine Abfolge von binären Entscheidungen darstellen.  
Bei negativer Entscheidung: Linkes Kind, bei positiver rechtes.

Wenn eine bestimmte Entscheidung immer gleich ausfällt, ist dies durch
ein fehlenden Kindesknoten dargestellt.

Die Höhe des Baumes zeigt die Anzahl der Entscheidungen im Worst-Case.  
Ein Baum mit $M$ Blättern hat mindestens Höhe $log_2(M)$.  
Ein Baum der Höhe $n$ hat maximal $2^n$ Blätter.

## Bezug zu Sortieralgorithmen
Für alle auf pairwise Comparison basierte Sortieralgorithmen gilt:  
Es werden mindestens $n log(n)$ im Worst-Case benötigt.

Vergleiche sind ein Knoten in dem Entscheidungsbaum des Algorithmus.

