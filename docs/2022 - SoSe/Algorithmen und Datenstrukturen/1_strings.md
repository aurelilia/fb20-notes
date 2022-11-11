# String Matching
Algorithmen, die alle Indices $R$ finden, an denen *Suchstring* $T$ im
Eingabestring $S$ vorkommt.  
Beispiele hier mit $A = \{a,g,i,n\}$, $S := gaggingagag$, $T := gag$, $R$
entspricht dann $\{1,7,9\}$.

"Gegeben sind Strings $S, T$ über Alphabet $A$. Gesucht sind alle alle Vorkommen
von $T$ in $S$, d.h. die Indices aller Substrings von $S$, die identisch zu
$T$ sind."


## Simple SM
- Aktuelle Kandidaten in Zwischenliste $I$
- Eingabestring $S$ durchlaufen; wenn ein Kandidat in $I$ nicht zum nächsten
  Zeichen passt entfernen, wenn Kandidat vollständiges Match, dann verschieben zu $R$.

### Beispiel
| Iter | S[i] | I    | R       | Notiz                                      |
| ---- | ---- | ---- | ------- | ------------------------------------------ |
| 1    | g    | {1}  | {}      | g valider Anfang, neuer Kandidat           |
| 2    | a    | {1}  | {}      | Kandidat 1 weiterhin gültig                |
| 3    | g    | {3}  | {1}     | Kandidat 1 zu R; neuer Kandidat 3          |
| 4    | g    | {}   | {1}     | Kandidat 3: g != a, ungültig und verworfen |
| 5    | i    | {}   | {1}     |
| 6    | n    | {}   | {1}     |
| 7    | g    | {7}  | {1}     | g valider Anfang, neuer Kandidat           |
| 8    | a    | {7}  | {1}     | Kandidat 7 weiterhin gültig                |
| 9    | g    | {9}  | {1,7}   | Kandidat 7 zu R; neuer Kandidat 9          |
| 10   | a    | {9}  | {1,7}   | Kandidat 9 weiterhin gültig                |
| 11   | g    | {11} | {1,7,9} | Kandidat 9 zu R; neuer Kandidat 11         |

Somit endet der Algorithmus wie erwartet mit $R := \{1,7,9\}$. Der Zustand
des Zwischenzustands $I$ ist zu Ende irrelevant.

### Invariante
- $i$ gibt die aktuelle Position in $S$ an.
- $R$ besteht aus allen Vorkommen $T \in S$, die komplett in $0..i$ liegen.
- $I$ besteht aus den Kandidaten (Präfixe von $T$) in aufsteigender Reihenfolge
  im Bereich $1..i$.
- Sichergestellt, indem $R$ und $I$ zu Beginn leer sind und bei jeder Iteration
  aktualisiert werden

### Asymptotische Komplexität
- Anzahl Iterationen = $|S|$, Maximal $|T|$ Elemente in $I$
- Komplexität im Worst-Case $|S| * |T|$


## BOFA SM
- Basierend auf DFA, dessen Zustand als Integer $q$ gespeichert wird
- Anzahl der Zustände: $|S| + 1$ (Letzter Zustand bedeutet, dass ein Match an
  $q - |S| - 1$ vorliegt)
- Eingabestring $S$ durchlaufen; durch Lookup-Table für jedes Element nächster
  Zustand aus $q$ und S[i] bestimmt

### Beispiel
Lookup-Tabelle:

| State\Letter | a   | g   | i   | n   |
| ------------ | --- | --- | --- | --- |
| 0            | 0   | 1   | 0   | 0   |
| 1            | 2   | 1   | 0   | 0   |
| 2            | 0   | 3   | 0   | 0   |
| 3            | 2   | 1   | 0   | 0   |

| Iteration | S[i] | q   | R       |
| --------- | ---- | --- | ------- |
| 1         | g    | 1   | {}      |
| 2         | a    | 2   | {}      |
| 3         | g    | 3   | {1}     |
| 4         | g    | 1   | {1}     |
| 5         | i    | 0   | {1}     |
| 6         | n    | 0   | {1}     |
| 7         | g    | 1   | {1}     |
| 8         | a    | 2   | {1}     |
| 9         | g    | 3   | {1,7}   |
| 10        | a    | 2   | {1,7}   |
| 11        | g    | 3   | {1,7,9} |

Somit endet der Algorithmus wie erwartet mit $R := \{1,7,9\}$. Der Zustand
des Zwischenzustands $q$ ist zu Ende irrelevant.

### Invariante
- $i$ gibt die aktuelle Position in $S$ an.
- $R$ besteht aus allen Vorkommen $T \in S$, die komplett in $0..i$ liegen.
- $q$ enthält die Länge des längsten Kandidaten (Prefix von $T$) in
  aufsteigender Reihenfolge im Bereich $1..i$.
- Sichergestellt, indem $R$ und $I$ zu Beginn leer sind und bei jeder Iteration
  aktualisiert werden  
  Falls $q$ höchster Zustand, Anfangsposition in $R$.

### Asymptotische Komplexität
- Anzahl Iterationen, Komplexität: $|S|$
- Preprocessing: $|T|^3 * |A|$
