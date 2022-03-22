# Begriffe
Kommutativgesetz: $A ∧ B <=> B ∧ A$                       (gilt auch bei ∨)  
Assoziativgesetz: $(A ∧ B) ∧ C <=> A ∧ (B ∧ C)$           (gilt auch bei ∨)  
Distributivgesetze: $C ∧ (A ∨ B) <=> (C ∧ A) ∨ (C ∧ B)$   (gilt auch mit ∧/∨ andersherum)  
Kontraposition: $(A \implies B) <=> ((¬B) \implies ¬A)$  
Karthesisches Produkt: $A × B = \{ (x, y) : x ∈ A ∧ y ∈ B \}$  

- reflexiv: $\forall x: x R x$  
- symmetrisch: $\forall x,y: x R y <=> y R x$  
- transitiv: $\forall x,y,z: x R y \implies (y R z \implies x R z)$   
- antisymmetrisch: $x R y \land y R x \implies x = y$

- Surjektivität: $\forall y \in B: \exists x \in A: f(x) = y$  
  "Zu jedem $y$ in der Zielmenge gibt es mindestens 1 $x$ im Definitionsbereich"
- Injektivität: $\forall x,y \in A: f(x) = f(y)$; $x = y$  
  "Zu jedem $y$ und $x$ im Definitionsbereich steht nur ein $x$ zu einem $y$."  
  $\implies$ "Jedes $y$ hat höchstens 1 $x$"

- Supremum: Kleinste obere Schranke 
- Infimum: Größte obere Schranke

- Gruppe: Paar $(G, *)$
- Assoziativgesetz: $(a * b) * c = a * (b * c)$ für alle $a, b, c \in G$
- Neutrales Element: Es gibt $n \in G$, sodass $\forall a \in G: n * a = a \land a * n = a$
- Inverses Element: Zu jedem $a \in G$ gibt es $a^\# \in G$, sodass $a * a^\# = n \land a^\# * a = n$
- Zusätzlich, falls $\forall a, b \in G: a * b = b * a$ (Kommutativität), ist G **abelsch**.

- Ring: Gruppe mit zusätzlicher Verknüpfung, zb $(R, +, \cdot)$
- 2. Verknüpfung assoziativ
- Neutrales und Einselelement

- Körper: Ring mit Eins, bei dem K ohne 0 abelsche Gruppe

