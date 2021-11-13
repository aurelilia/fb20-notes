# Euklidischer Algorithmus
**Dieses Cheatsheet wurde original von eint Kommiliton*in auf Papier verfasst. Ich habe nur dieses Transskript geschrieben.**

## Das Problem
**Suche des größten gemeinsamen Teilers (ggT)**  
z.B: $324$ & $132$

Allgemeine Festellungen:  
- Es gibt immer einen Teiler ($= 1$)  
- Es gibt einen ggT, weil alle Teiler $< 1 \space 3 \space 2$ sein muss (*obere Grenze*) 

<br>

Wenn ein Teiler $d$ ein gemeinsamer Teiler von $a$ und $b$ ist, dann teilt $d$ auch $a + b \land a - b$.

z.B bei Teiler $d = 2$: (Vorgriff vom erweiterten Alg., aber $d \not= ggT(a,b)$)

\begin{align}
324 &= 162 \cdot 2 \\
132 &= 66 \cdot 2 \\
\\
a + b &= 162 \cdot 2 + 66 \cdot 2 \\
      &= (162 + 66) \cdot 2 \\
\\
a - b &= 162 \cdot 2 - 66 \cdot 2 \\
      &= (162 - 66) \cdot 2 \\
\end{align}

## Der Algorithmus
**Nutzung von mod ("modulo") und Ersetzung von größeren Komponenten mit kleineren Rest bis $\mod 0$ ist.**

### Visuell
$324 \space \space \space 132$  
$\phantom{324 \space \space \space} 132 \space \space \space 60$  
$\phantom{324 \space \space \space 132 \space \space \space} 60 \space \space \space \textbf{12} = ggT(324, 132)$  
$\phantom{324 \space \space \space 132 \space \space \space 60 \space \space \space} \textbf{12} \space \space \space 0$  

### Schiftlich
\begin{align}
324 \mod 132 &= 60 (324 / 132 = 2 \space\space R 60) \\
132 \mod 60 &= 12 (132 / 60 = 2 \space\space R 12) \\
60 \mod 12 &= 0 (60 / 12 = 5 \space\space R 0) \\
\end{align}