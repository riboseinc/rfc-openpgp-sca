#  Introduction {#introduction}

SM2 [@!I-D.shen-sm2-ecdsa] [@!SM2],
SM3 [@I-D.shen-sm3-hash] [@!SM3]
and SM4 [@!SM4] are cryptographic standards issued by the
Organization of State Commercial Administration of China [@OSCCA] as
authorized cryptographic algorithms for the use within China. These
algorithms are published in public.

Adoption of this document enables exchange of OpenPGP-secured email in a
OSCCA-compliant manner through usage of the authorized combination of
SM2, SM3 and SM4.

SM2 is a set of public key cryptographic algorithms based on elliptic
curves that includes:

* Digital Signature Algorithm [@!SM2-2]
* Key Exchange Protocol [@SM2-3]
* Public Key Encryption Algorithm [@SM2-4]

SM3 [@!I-D.shen-sm3-hash] is a hash algorithm designed for electronic
authentication purposes.

SM4 [@!SM4] is a symmetric encryption algorithm designed for data encryption.


This document extends OpenPGP [@!RFC4880] and its ECC extension
[@!RFC6637] to support SM2, SM3 and SM4:

* support the SM3 hash algorithm for data validation purposes
* support signatures utilizing the combination of SM3 with other digital signing algorithms, such as RSA and SM2
* support the SM2 asymmetric encryption algorithm for public key operations
* support usage of SM2 in combination with supported hash algorithms, such as SHA-256 and SM4
* support the SM4 symmetric encryption algorithm for data protection purposes
* defines the OpenPGP "OSCCA-compliant profile" to enable usage of OpenPGP
  in an OSCCA-compliant manner.