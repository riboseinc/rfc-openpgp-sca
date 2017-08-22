#  Security Considerations

* Only certified products by OSCCA are considered secure and are allowed to be sold or used in China.

* SM2 is an elliptic curve cryptosystem published by Chinese Commercial Cryptography Administration Office, certified by OSCCA. Its security relies on the assumption that the elliptic curve discrete logarithm problem (ECLP) is computationally infeasible. With advance in cryptanalysis, new attack algorithms may reduce the complexity of ECLP, making it easier to attack the SM2 cryptosystem that is considered secure at the moment. You should check with OSCCA to determine if the algorithms in SM2 have been found vulnerable.

* SM3 is a cryptographic Hash algorithm published by Chinese Commercial Cryptography Administration Office, certified by OSCCA. No formal proof of security is provided. As claimed in [@SM3-IETF], the security properties of SM3 are under public study. There are no known feasible attacks against SM3 algorithm by the time of publishing this document.

* SM4 is a block cipher certified by OSCCA. No formal proof of security is provided. There are no known feasible attacks against SM4 algorithm by the time of publishing this document. On the other hand, there are security concerns w.r.t. side-channel attacks, when SM4 algorithm is implemented in a device [@Ref1-see below]. For instance, [@Ref1-see below] illustrated an attack by measuring the power consumption of the device. A chosen ciphertext attack, assuming a fixed correlation between the sub-keys and data mask, is able to recover the round key successfully. When SM4 algorithm is implemented in a device, the parameters/keys should be randomly generated without fixed correlation.

Ref1: DU Zhi-bo, WU Zhen, WANG Min, RAO Jin-tao. Improved chosen-plaintext power analysis attack against SM4 at the round-output. Journal on Communications Vol 36 No 10. October 2015.

* SM2 has a key length of 512 bits for public key and 256 bits for private key. It is considered an alternative to ECDSA P-256 [@OSCCA]. Its security strength is comparable to a 128-bit symmetric key strength [@SM2-IETF], e.g., AES-128.

* SM3 is a hash function that generates a 256-bit hash value. It is considered as an alternative to SHA-256.

* SM4 is a block cipher symmetric algorithm with key length of 128 bits. It is considered as an alternative of AES-128.