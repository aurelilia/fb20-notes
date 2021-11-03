# Übung 2
*Alle nicht mit $Zahl_{\text{Basis}}$ versehenen Zahlen sind dezimal.*

## 2.1 Wertebereich binärer Zahlendarstellungen
### 2.1.1
- k = 6:
  - VZL: 0, 63
  - VUB: -31,31
  - ZK: -32,31

- k = 8:
  - VZL: 0, 255
  - VUB: -127,127
  - ZK: -128,127

- k = 8:
  - VZL: 0, 8191
  - VUB: -4095,4095
  - ZK: -4096,4095

### 2.1.2
|$n$ | VZL | VUB | ZK |
|----|-----|-----|----|
|301 | 9   | 10  | 10 |
|3   | 2   | 3   | 3  |
|512 | 10  | 11  | 11 |
|15  | 4   | 5   | 5  |
|-25 | --- | 6   | 6  |
|-255| --- | 10  | 9  |


## 2.2 Zweierpotenzen
### a)
1. $2^2 + 2^0 = 5$
2. $2^5 + 2^3 + 2^1 = 42$
3. $2^9 + 2^8 + 2^4 + 2^2 + 2^1 + 2^0 = 791$

### b)
Nein.

### c)
1. $5 = 101_2$
2. $42 = 101010_2$
3. $791 = 1100010111_2$


## 2.3 Konvertierung zwischen Zahlendarstellungen
### 2.3.1
|DEC | BIN            | HEX |
|----|----------------|-----|
|234 | 0000 1110 1010 | 0EA |
|164 | 0000 1001 0100 | 094 |
|508 | 0001 1111 1100 | 1FC |
|125 | 0000 0111 1101 | 07D |

### 2.3.2
|DEC | BIN            | HEX |
|----|----------------|-----|
|15  | 0000 0000 1111 | 00F |
|83  | 0000 0101 0011 | 053 |
|508 | 0001 1111 1100 | 1FC |
|-148| 1111 0110 1100 | F6C |
|33  | 0000 0010 0001 | 021 |
|185 | 0000 1100 0101 | 0C5 |


## 2.4 Addition von Zweierkomplement-Zahlen
```
  1      1
  0 1 0 0 1 0 0 0
+ 1 1 1 0 1 0 0 1
------------------
  0 0 1 1 0 0 0 1
```
$\rightarrow$ Überlauf aufgetreten

```
  1 1  1 1     1
  0 1 1 1 1 1 0 1
+ 0 0 0 1 1 0 0 1
------------------
  1 0 0 1 0 1 1 0
```
$\rightarrow$ Kein Überlauf aufgetreten


## 2.5 Subtraktion von Zweierkomplement-Zahlen
### a)
$00101101_2 - 01000110_2$  
$00101101_2 + 10111010_2 = 11100111_2 = -25$

### b)
$10110100_2 - 11000111_2$
$10110100_2 + 00111001_2 = 11101101_2 = -19??$


## 2.6 Eigenschaften von Zweierkomplement-Zahlen
Korrekt: a, b, c, d, e  
(???)