# SM2 Key Derivation Function {#sm2-kdf}

A key derivation function (KDF) is necessary to implement EC encryption.

The SM2PKE KDF is defined in Section 5.4.3 of [@I-D.shen-sm2-ecdsa]
(originally from Section 3.4.3 of [@SM2-4]) and **SHOULD** be used in
conjunction with an OSCCA-approved hash algorithm, such as SM3 [@SM3].

The pseudocode is provided here for convenience.

## Prerequisites

* $$H_v()$$ is a hash function that outputs a $$v$$-bit long hash value.

## Inputs

* Bit stream `Z`
* Length of output key `klen` (an integer less than $$(2^32 - 1) x v$$).

## Output

* Key `K` of length `klen`

## Pseudocode

```c
KDF (Z, klen) {
  Counter = 0x00000001 [a 32-bit register]
  n = klen / v

  Iterate from i = 1 to Ceil(n)
    Ha[i] = H_v( Z || Counter )
    Counter++

  If n is a whole number
    Ha![Ceil(n)] = Ha[Ceil(n)]
  Else
    Ha![Ceil(n)] = leftmost (klen − (v x Floor(n))) bits of Ha[Ceil(n)]

  K = Ha[1] || Ha[2] || ... || Ha[Ceil(n)−1] || Ha![Ceil(n)]
}
```
