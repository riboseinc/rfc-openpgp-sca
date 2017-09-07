# SM2 Key Derivation Function {#sm2-kdf}

A key derivation function (KDF) is necessary to implement EC encryption.

The SM2PKE KDF is defined in Section 3.4.3 of [@!GBT.32918.4-2016] (and
Section 5.4.3 of [@I-D.shen-sm2-ecdsa], Section 3.4.3 of [@SM2-4]).

For OSCCA-compliance, it **SHOULD** be used in conjunction with an
OSCCA-approved hash algorithm, such as SM3 [@!GBT.32905-2016].

The SM2PKE KDF is equivalent to the KDF2 function of IEEE 1363
[@IEEE-1363], leaving KDF2's label and salt parameters empty.

Pseudocode of the SM2KDF function is provided here for convenience. This
function contains edited variable names for clarity.

## Prerequisites

* $$Hash(S)$$ is a hash function that outputs a $$v$$-bit long hash value
  based on input $$S$$.
* $$Left(b, S)$$ is a function that outputs the leftmost $$b$$-bits of
  the input bitstream $$S$$.
* $$Floor(r)$$ and $$Ceil(r)$$ are the floor and ceiling functions
  respectively for the input of real number $$r$$. Both functions
  outputs an integer.

## Inputs

KEYLEN
: Desired key length. A positive integer less than $$(2^32 - 1) x v$$.

Z
: Plaintext. String of any length.

## Outputs

K
: Generated key. String of length KEYLEN.

K is defined as follows.

```
  Counter = 1       // a 32-bit counter
  n = KEYLEN / v

  for each 1 <= i <= Ceil(n)
    Ha_i = Hash( Z || Counter )
    Counter = Counter + 1
  end for

  if n is a whole number then
    Ha! = Ha_{Ceil(n)}
  else
    Ha! = Left(Ha_{Ceil(n)}, KEYLEN − (v x Floor(n)))
  end if

  K = Ha_1 || Ha_2 || ... || Ha_{Ceil(n)−1} || Ha!
```
