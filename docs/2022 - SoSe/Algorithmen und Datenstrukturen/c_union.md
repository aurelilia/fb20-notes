# Union Find
Set of Sets mit Interface:

- `find(E): E`: Gibt Repräsentanten eines Sets zurück
- `unite(E1, E2)`: Führt die 2 Sets, die E1 und E2 enthalten, zusammen

Der Repräsentant eines Sets muss von Beginn gegeben sein.  
Weiter wird davon ausgegangen, dass die Implementation ein Array
von Listen ist.


## Finden des Repräsentanten
Zunächst wird das gegebene Element gesucht. Dieses sollte zusätzlich einen Pointer
zum Repräsentanten bzw. der Liste haben, sodass die Repräsentante zurückgegeben wird.

### Asymptotische Komplexität
Konstant.


## Vereinigen von Mengen
Die kleinere Menge wird an das Ende der größeren gehängt.  
Bedeutet: Die Liste der kleineren Menge wird an die Liste der größeren appended
und aus dem Array entfernt.

Zusätzlich muss der Pointer zur Liste auf die neue aktualisiert werden.

### Asymptotische Komplexität
Im Worst-Case insgesamt für alle Vereinigungen $O(n \text{log} n)$,
da pro Aufruf linear in der angehängten Liste.
