[Posts](../blog.md.html)

# Angular momentum coupling identities from Edmonds

Sometimes I need an angular momentum coulping identity from the famous reference on the topic.
Here are some of them.


## Tensor product of two operators

If we have two operators which act only on one of the subspaces, we get:
$$
\langle j_1'j_2';J' | [\hat{T}_{k_1}\otimes \hat{U}_{k_2}]_K | j_1j_2;J \rangle = [J'][K][J] 
  \begin{Bmatrix} j_1' & j_1 & k_1 \\ j_2' & j_1 & k_2 \\ J' & J & K \end{Bmatrix} 
  \langle j_1' | \hat{T}_{k_1} | j_1\rangle \langle j_2' | \hat{U}_{k_2} | j_2 \rangle.
$$

The array in curly brackets is a 9-j symbol.

## Tensor product of two operators with identity substructure

If either $T_{k_1}$ or $U_{k_2}$ is the identity operator, as is the case for the one-body density matrices, then this expression further simplifies to 
$$
\bra{j_1'j_2';J'}[\hat{T}_{k_1}]\ket{j_1j_2;J} \\
= \delta_{j_2'j_2}(-1)^{j_1'+j_2+J+K}[J'][J]
\begin{Bmatrix} 
j_1' & J' & j_2 \\ 
J & j_1 & k
\end{Bmatrix}
\bra{j_1'}\hat{T}_k\ket{j_1}
$$
