#  Security Considerations

* Products and services that utilize cryptography are regulated by OSCCA [@OSCCA];
  they must be explicitly approved or certified by OSCCA before being allowed to
  be sold or used in China.

* SM2 [@SM2] is an elliptic curve cryptosystem (ECC) published by OSCCA [@OSCCA].
  Its security relies on the assumption that the elliptic curve discrete
  logarithm problem (ECLP) is computationally infeasible. With advances in
  cryptanalysis, new attack algorithms may reduce the complexity of ECLP, making
  it easier to attack the SM2 cryptosystem that is considered secure at the time
  this document is published. You **SHOULD** check current literature to
  determine if the algorithms in SM2 have been found vulnerable.

* SM3 [@SM3] is a cryptographic hash algorithm published by OSCCA [@OSCCA].
  No formal proof of security is provided. As claimed in [@I-D.shen-sm3-hash],
  the security properties of SM3 are under public study. There are no known
  feasible attacks against the SM3 algorithm at the time this document is
  published.

* SM4 [@SM4] is a block cipher certified by OSCCA [@OSCCA].
  No formal proof of security is provided. There are no known feasible
  attacks against SM4 algorithm by the time of publishing this document.
  On the other hand, there are security concerns with regards to
  side-channel attacks, when the SM4 algorithm is implemented in a
  device [@SM4-Power]. For instance, [@SM4-Power] illustrated an attack
  by measuring the power consumption of the device. A chosen ciphertext
  attack, assuming a fixed correlation between the sub-keys and data
  mask, is able to recover the round key successfully. When the SM4
  algorithm is implemented in hardware, the parameters/keys **SHOULD**
  be randomly generated without fixed correlation.

* SM2 has a key length of 512 bits for public key and 256 bits for private key.
  It is considered an alternative to ECDSA P-256 [@RFC6637]. Its security strength
  is comparable to a 128-bit symmetric key strength [@I-D.ietf-msec-mikey-ecc],
  e.g., AES-128.

* SM3 is a hash function that generates a 256-bit hash value. It is considered
  as an alternative to SHA-256.

* SM4 is a block cipher symmetric algorithm with key length of 128 bits. It is
  considered as an alternative to AES-128.
