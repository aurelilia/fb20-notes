# Übung 4
## 4.1a Logikgatter und Boole'sche Algebra
$C = (A \oplus A) \oplus (B \oplus B)$  
$F = C \oplus C$


## 4.3 Fehlerhafte Schaltung
a) Sie brennen aus, wenn $A \not= B$.  
b) Valide wenn $A = B$  
c) Ja


## 4.4 Komplementbildung
\begin{align}
a &= A + B(CD) & \text{T7} \\
a &= A + BCD & \text{--}
\\\\
b &= \overline C + (\overline AD + \overline B) + D(\overline{B\overline B} \oplus C) & \text{T5} \\
b &= \overline C + (\overline AD + \overline B) + DC & \text{T10} \\
b &= (\overline AD + \overline B) + D & \text{T9} \\
b &= \overline B + D & \text{--} \\
\end{align}

// Ich kann nicht lesen. Dachte es soll einfach vereinfacht werden. ¯\\\_(ツ)_/¯ 


## 4.6.1 Lichtsteuerung für ein Kraftfahrzeug
$E_L = (L + W)E_I$  
$E_R = (R + W)E_I$  

## 4.6.2 Redundantes Überwachungssystem
$E_G = \overline{C_1 + C_2 + C_3}$  
$E_R = (C_1 \oplus C_2 \oplus C_3) + (E_IN)$  
$N = C_1C_2 + C_1C_3 + C_2C_3$
