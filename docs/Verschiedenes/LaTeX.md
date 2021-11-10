# LaTeX-Cheatsheet
**Template für allgemeine Dokumente unten**


## Struktur
- Neue Sections mit `\section{My Section}`
- Neue Seite mit `\newpage`


## Formatierung
### Block-Formatting
Mit `\begin{type}`, `\end{type}` geschrieben.

**center**: Zentriert den enthaltenen Text  
**tabular**: Tabelle. Format [kompliziert](https://www.overleaf.com/learn/latex/Tables)

### Spacing u.ä.
- `\vspace{0.5\baselineskip}`: Horizontales Spacing. Parameter `0.5` veränderbar (größer -> mehr Spacing)
- `\noindent`: Nicht die neu anfangende Zeile einrücken (oft nach `vspace` or neuem Paragraph sinnvoll)
- `\\`: Neue bzw. nächste Zeile


## Mathematik
Ausdrücke zwischen `$`, `$\mathbb{R}$` = $\mathbb{R}$

### Funktionen
Notiz: Bei Parametern können `{}` weggelassen werden, wenn der Parameter nur 1 Zeichen ist (zB `\sqrt 2` okay, `\sqrt 25` muss als `\sqrt{25}` geschrieben werden)

Name | Schreibweise | Beispiel | Beispiel (Rendered)
-|-|-|-
Hoch / Potenz / Superset | `^` | `2^x + x^{x*x}` | $2^x + x^{x*x}$
Subset | `_` | `2_{10} = 10_2` | $2_{10} = 10_2$
Bruch / Fraction | `\frac` | `\frac{25}{n}` | $\frac{25}{n}$
Limits | `\limits` | `\bigcup\limits_{n}` | $\bigcup\limits_{n}$
Zahlenmengen / Bold | `\mathbb` | `\mathbb{R}` | $\mathbb{R}$
Wurzel | `\sqrt` | `\sqrt{25}` | $\sqrt{25}$
Overline / Not | `\overline` | `\overline{A}` | $\overline{A}$
Not | `\not` | `\not=` | $\not=$


## Symbole (Mathematik)
Notiz: `{}` mit `\` escape: `\{\}` = $\{\}$

### Pfeile
Name | Schreibweise | Rendered
-|-|-
Pfeil | `\to` | $\to$
L-Pfeil | `\leftarrow` | $\leftarrow$
Maps to / Projektion | `\mapsto` | $\mapsto$
Impliziert | `\implies` | $\implies$
Logik-Equivalenz | `\iff` | $\iff$

### Mengen
Name | Schreibweise | Rendered
-|-|-
Katesisches Produkt | `\times` | $\times$
Potenzmenge | `\mathcal{P}` | $\mathcal{P}$
Leere Menge | `\emptyset` | $\emptyset$
Strich | `\mid` | $\mid$
Enthält | `\in` | $\in$
Cup (Union) | `\cup` | $\cup$
Cap (Intersect) | `\cap` | $\cap$
Differenz | `\setminus` | $\setminus$
Subset | `\subset`, `\subseteq` | $\subset$, $\subseteq$

### Logik
Name | Schreibweise | Rendered
-|-|-
And | `\land` | $\land$
Or | `\lor` | $\lor$
Xor | `\oplus` | $\oplus$
Impliziert | `\implies` | $\implies$
Equivalenz | `\iff` | $\iff$
Für alle | `\forall` | $\forall$
Mindestens 1 (es gibt) | `\exists` | $\exists$

### Operatoren
Name | Schreibweise | Rendered
-|-|-
\>= | `\ge` | $\ge$
<= | `\le` | $\le$
Multiplikation | `\cdot` | $\cdot$
Annäherung | `\approx` | $\approx$
Äquivalenzklasse / Relation | `\sim` | $\sim$
Summe | `\sum` | $\sum$
Komposition | `\circ` | $\circ$

### Arithmetik
Name | Schreibweise | Rendered
-|-|-
Floor | `\lfloor \rfloor` | $\lfloor \rfloor$
Ceiling | `\lceil \rceil` | $\lceil \rceil$

### Konstante
Name | Schreibweise | Rendered
-|-|-
Unendlich | `\infty` | $\infty$
Pi | `\pi` | $\pi$
Sigma | `\sigma`, `\Sigma` | $\sigma, \Sigma$
Epsilon / Dual Number | `\varepsilon` | $\varepsilon$

(Weitere griechische Buchstaben wie `\gamma`, `\theta` vorhanden)

### Weitere Symbole
[Weitere Symbole auf Wikipedia zu finden](https://en.wikipedia.org/wiki/List_of_mathematical_symbols_by_subject)


## Template
Folgendes Template kann soweit verwendet werden; jedoch nicht vergessen `\title`, `\author`, `\date` auszufüllen
```
\documentclass[12pt]{article}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{natbib}
\usepackage{graphicx}

\title{}
\author{}
\date{}


\begin{document}

\maketitle
\newpage


\section{My First Section}

\newpage
\section{Another Section}

\newpage
\section{According to all known laws of aviation...}


\bibliographystyle{plain}
\end{document}
```