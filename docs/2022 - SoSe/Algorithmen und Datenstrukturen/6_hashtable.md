# Hashing & Maps
## Maps
Maps sind Datenstrukturen, die *keys* eines beliebigen Datentyps je
genau ein *value*, ebenfalls beliebigen Datentyps zuweisen.

Einfache Signatur einer solchen Map besteht aus 2 Funktionen:

- `put(K, V)`: Einfügen eines KV-Paars
- `get(K): V`: Holen eines Values, oder `None` falls KV nicht in Map

### Bounded Maps
Bounded Maps sind Maps, die eine maximale Anzahl an Elementen halten
können. Versuche, mehr Elemente hinzuzufügen, schlagen fehl.

### Sets
Variante von Maps, bei denen `V = ()`, i.e. die Values sind
leer. Dies ist nützlich, wenn nur die Existenz eines Keys in dem
Set wichtig ist. (Equivalent to mathematischen Mengen)


## Hashing
- Hashing: Erzeugen eines Integers aus einem beliebigen Wert
- *Hashfunktion*: Funktion mit Signatur $f: V \to \mathbb{N}$, erzeugt Hash eines Werts
    - Meistens ist diese in eine Integer-Range gebunden, sodass tatsächliche Signatur:
    - $f(V, n) = \text{hash}(V) \space \text{mod} \space n$


## Hashtabellen
Hashtabellen sind eine Implementation von Maps, bestehend aus einem simplen Array.  
Der Array-Index der Keys ist durch die *Hashfunktion* bestimmt, die
mit dem Key aufgerufen wird.

### Einfügen eines Werts
`put(key, value)`: Zunächst Index mit `hash(key, array.size)` bestimmen.

- Wenn Index noch kein Element enthält: `array[i] = (key, value)`
- Wenn Index Element enthält: So lange nächsten Index bestimmen,
  bis dieser keine Element enthält. (siehe unten: "Nächster Index")

### Finden eines Werts
`get(key): V`: Zunächst Index mit `hash(K, array.size)` bestimmen.

- Wenn `array[i].key == key`: `array[i].value` zurückgeben.
- Wenn nicht: So lange nächsten Index bestimmen, bis einer von 2 Fällen:
    - `array[i].key == key`: `array[i].value` zurückgeben.
    - `array[i] == None`: Paar ist nicht in der Map, `None` zurückgeben


## Nächster Index
Im Fall einer Kollision gibt es mehrere Strategien, den nächsten Index zu berechnen.  
Oft ist dies Teil der Hashfunktion als ein dritter Parameter.

### Linear Probing
Es wird einfach der nächste Index versucht, also $(hash + 1) \space \text{mod} \space n$.  
Problem: Kann oft zu "Clustern" von Werten führen, welches Operationen verlangsamt.

### Quadratic Probing
Linear Probing, jedoch mit quadratischen Schritten.  
$(hash + i^2) \space \text{mod} \space n$.   
Problem: Nicht alle Indices werden abgedeckt.

### Double Hashing
Kombination aus 2 Hashfunktionen: $hash_1 + i \cdot hash_2$
