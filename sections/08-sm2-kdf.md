# SM2 Key Derivation Function

A key derivation function (KDF) is necessary to implement the EC
encryption. The SM2PKE KDF is defined in Section 5.4.3 of [@SM2-4] and
can be used with the SM3 hash algorithm [@SM3].
It is provided here for convenience.

## Inputs

* Bit stream `Z`
* Length of key `klen` (an integer less than $$(2^32 - 1)v$$).

## Output

* Key `K` of length `klen`

## Function

~~~ c
function KDF (Z, klen) {
  ct = 0x00000001
  n = klen / v

  for i = 1 to ceil(n) {
    Ha[i] = H_v( Z || ct )
    ct++
  }

  if ( n is a whole number ) {
    Ha![ceil(n)] = Ha[ceil(n)]
  } else {
    Ha![ceil(n)] = leftmost (klen − (v × floor(n))) bits of Ha[ceil(n)]
  }

  # Key `K` of length `klen`
  return Ha[1] || Ha[2] || ... || Ha[ceil(n)−1] || Ha![ceil(n)]
}
~~~

## Notes

* $$H_v()$$ is the hash function that outputs a v-bit long hash value.
* `ct` is a 32-bit register
