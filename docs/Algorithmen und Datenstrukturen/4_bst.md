# Binary Search Tree
Binärer Baum, bei dem jeder Knoten ein total geordnetes Element enthält.

- Der linke Unterbaum eines Knotens enthält ausschließlich <= Knoten.
- Der rechte Unterbaum enthält ausschließlich >= Knoten.

## Suche nach Element
Ausgehend von Wurzelknoten ist finden von Element $e$ einfach, mit Pointer $p = \text{Wurzel}$:

- Ist $p > e$, dann $p = p_l$
- Ansonsten $p = p_r$

Dies solange wiederholen, bis $p = e$ oder der nächste Knoten im Baum leer ist (dann ist $e$ nicht im Baum).  
Da die Elemente links immer kleiner und die Elemente rechts immer größer sind, wird so
immer $e$ im Baum gefunden.


## Einfügen eines Elements
Element $e$ einfügen: Baum wie bei Suche mit $p$ traversieren, bis der nächste 
Knoten nicht vorhanden. Dann Element $e$ als diesen Knoten an den Baum anhängen.


## Löschen eines Elements
Zunächst wie vorher traversieren.

### Blattknoten
Blattknoten einfach aus dem Baum entfernen.

### Knoten mit einem Kind
Den Knoten durch den Kindesknoten ersetzen.

### Knoten mit 2 Kindern
Baum weiter traversieren: Zuerst linken Kindesknoten, dann immer rechten bis kein
rechter Kindesknoten vorhanden. Dann Wert des zu löschenden Knotens mit dem des aktuellen
Knotens überschreiben und aktuellen Knoten löschen (da dieser max. 1 Kind hat,
lässt sich dieses löschen mit einem der 2 oben beschriebenen Methoden durchführen).  

Somit wurde der Wert des zu löschenden Knoten effektiv mit dem eines einfach zu löschenden
Knoten ersetzt, und dieser Knoten gelöscht.

Alternativ kann auch erst der rechte Kindesknoten traversiert werden, dann immer links.  
Jedoch *muss* eines dieser 2 Varianten benutzt werden, damit die Invariante des Baumes
erhalten bleibt (durch diese Art der Traversierung wird immer das nächstgrößte/kleinste
Element gefunden und an die Stelle des zu löschenden verschoben).


## Traversieren des Baumes
Idee: Stack mit Pointer für jeden Knoten, der besucht wird.  
Zusätzlich zu Pointer enthält jedes Stack-Element Integer mit Werten:

- 0: Noch keine Kindknoten traversiert.
- 1: Linker Kindknoten traversiert.
- 2: Beide Kindknoten traversiert.

- Wert `(0, $wurzel)` auf den Stack.
- Dann Loop:
    - Wenn Top of Stack `(0, _)`: `(0, $left_child)` auf den Stack (wenn linkes Kind `null`: Stattdessen Increment).
    - Wenn Top of Stack `(1, _)`: `(0, $right_child)` auf den Stack (wenn rechtes Kind `null`: Stattdessen Increment).
    - Wenn Top of Stack `(2, _)`: Stack-Pop (und entfernten Knoten behandeln), dann Increment des momentanen Werts.
    - Wenn Stack leer: Baum vollständig traversiert.

Dadurch wird der Baum von links nach rechts iterativ traversiert, alle Knoten werden in aufsteigender
Reihenfolge besucht.
