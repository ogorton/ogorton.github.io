<script type="text/javascript" async
  src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/latest.js?config=TeX-MML-AM_CHTML">
</script>

[Posts](../blog.md)

# Spooling n-dimensional arrays

To spool an n-dimensional array into a 1-d array, we need to map an arbitrary number of indices 
into a single index $y$:
```math
\begin{align}
    \mathrm{spool}(y) \leftarrow \mathrm{array}[i,j,k,l,m,n,o,p,...],
\end{align}
```
To create a one-to-one 
correspondence, we have to assign an order to the $n$ indices:
```math
\begin{align}
    x_n > x_{n-1} > ... > x_1.
\end{align}
```
Let's further define that each index $x$ runs from $x^{min}$ to $x^{max}$.
At which point we can use the following mapping:
```math
\begin{align}
    y = x_n + \sum_{i<n} (x_i - x_i^{min})\prod_{j>i}(x_j^{max}-x_j^{min}+1).
\end{align}
```
This mapping is only unique up to a choice of ordering.

## 2-d example

For example, in a two dimensional array $\mathrm{array}[x_2, x_1]$ where $x_1 = 1, ..., m$, and $x_2 = 0, ..., n-1$:
```math
\begin{align}
    y &= x_2 + (x_1 - 1)(n-1-0+1)\\
    &=x_2 + (x_1-1)n.
\end{align}
```
We could have also exchanged the ordering of the indices and used:
```math
\begin{align}
    y &= x_1 + (x_2-0)(m-1+1)\\
    &=x_1 + x_2m.
\end{align}
```

## 3-d example

Suppose a three dimensional array $\mathrm{array}[x_1, x_2, x_3]$ where $x_1 = 1, ..., r$, $x_2 = 0, ..., s$, 
and $x_3 = 1, ..., 2t$. We take the ordering $x_2 > x_3 > x_1$.
```math
\begin{align}
    y &= x_2 + (x_3-1)(s-0+1) + (x_1-1)(2t-1+1)(s-0+1)\\
    &= x_2 + (x_3-1)(s+1) + (x_1-1)2t(s+1).
\end{align}
```
Again, changing the ordering will change the expression. This ordering would be most efficient for 
a nested loop such as:
```
\begin{verbatim}
do x1 = 1, r:
  do x3 = 1, 2t:
    do x2 = 0, s:
      y = x2 + (x3-1)(s+1) + (x1-1)*2*t*(s+1)
      access spool[y]
\end{verbatim}
```
This requires $10(s+1)(2t)r$ integer operations to compute.

## Sectors

The 3-d example in the previous section can be improved by pre-computing parts of the index 
further up in the loop hierarchy. 

```math
\begin{align}
    y = x_n + \mathrm{sector}(x_{n-1},...,x_1),
\end{align}
```

where 

```math
\text{sector}(x_{n-1},...,x_1) \equiv \sum_{ i < n } (x_i - x_i^{min})\mathrm{sectorsize}(i).
```

The sectorsize quantities do not depend on the loop variable $x_i$, and can therefore be pre-computed beforehand:
```math
\begin{align}
   \mathrm{sectorsize}(i) \equiv \prod_{j>i}(x_j^{max}-x_j^{min}+1).
\end{align}
```
Or, recursively:
```math
\begin{align}
    \mathrm{sectorsize}(i) = (x_i^{max}-x_i^{min}+1) \mathrm{sectorsize}(i-1),
\end{align}
```
with sectorsize$(1)$ = 1.

## Improved 3-d example

Taking the same 3-d example as before, we can improve the performance by
computing sectors in shallower loops and by pre-computing sector sizes.
Recall that:
```math
\begin{align}
    y = x_2 + (x_3-1)(s+1) + (x_1-1)2t(s+1).
\end{align}
```
In this case:
```
secsize1 = 1
secsize2 = (s+1) # * secsize1
secsize3 = (2*t) * secsize2

do x1 = 1, r:
  sector1 = (x1 - 1) * secsize3
  do x3 = 1, 2t:
    sector31 = (x3 - 1) * secsize2 + sector1
    do x2 = 0, s:
      y = x2 + sector31
      access spool[y]
```
This requires $(2t)(s+1)r + 3(2t)r + 2r + 3$ operations to compute. Assuming $2t$, $s$, and $r$ are all similarly large,
this is a speedup of approximately $\frac{20str}{2str}=10$.
