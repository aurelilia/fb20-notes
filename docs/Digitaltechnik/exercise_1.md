# Übung 1

### 1.1 Informationsmengen
#### 1.1.1
a. 13 Bit = 2^13 = 8192  
b. 1 Byte = 2^8 = 256  
c. 4 Nibble = 2^(4*4) = 65536

#### 1.1.2
f(x) = 2^x  
f'(n) = 2^(4*x)

#### 1.1.3
a. 17 Bits, da f(16) < 65537 < f(17)  
b. 2 Bytes, da f(2*8) = 65536  
c. Unendlich, da es unendlich rationale Zahlen zwischen [0, 5] gibt.

### 1.2
#### 1.2.1
Zeit volle Umdrehung:  
r = 360 / 5 = 72ms

32bit Maximalwert:  
t = 2^32 = 4294967296

Zeit bis Overflow in ms:  
r * t = 309237645312

In Jahren:  
(309237645312 / 1000 / 60 / 60 / 24 / 365,25) ≈ 9,8 ≈ 10

#### 1.2.2
"Worst-Case"-Annahme von 20.000 Schritten pro Tag für 80 Jahre:  
s = 20.000 * 365,25 * 80 = 584400000

Mindestanzahl Bits:  
log₂(584400000) ≈ 29.12 = 30


### 1.3
a. 100MiByte = 100 * 1048576 Byte = 100 * 2097152 Nibble = 209715200  
b. 50GHz = 50 * 1000000000Hz = 50000000000Hz  
c. 32 Gibit - 32 MiByte = (4294967296 Byte - 33554432 Byte) * 8 = 34091302912

