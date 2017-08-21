# SM2 Key Derivation Function

A key derivation function (KDF) is necessary to implement EC encryption.

The SM2PKE KDF is defined in Section 5.4.3 of [@I-D.shen-sm2-ecdsa]
(originally from Section 3.4.3 of [@SM2-4]) and
should be used in conjunction with the SM3 hash algorithm [@SM3].

The pseudocode is provided here for convenience.

## Inputs

* Bit stream `Z`
* Length of key `klen` (an integer less than $$(2^32 - 1)v$$).

## Output

* Key `K` of length `klen`

## Pseudocode

```c
KDF (Z, klen) {
  Counter = 0x00000001
  n = klen / v

  Iterate from i = 1 to Ceil(n)
    Ha[i] = H_v( Z || Counter )
    Counter++

  If n is a whole number
    Ha![Ceil(n)] = Ha[Ceil(n)]
  Else
    Ha![Ceil(n)] = leftmost (klen − (v × Floor(n))) bits of Ha[Ceil(n)]

  K = Ha[1] || Ha[2] || ... || Ha[Ceil(n)−1] || Ha![Ceil(n)]
}
```

## Notes

* $$H_v()$$ is the hash function that outputs a v-bit long hash value.
* `ct` is a 32-bit register
