#  Introduction {#introduction}

SM2 [@SM2], SM3 [@SM3] and SM4 [@SM4] are cryptographic standards issued by the
Organization of State Commercial Administration of China [@OSCCA] as
authorized cryptographic algorithms for the use within China. These
algorithms are published in public.

SM2 is a set of public key cryptographic algorithms based on elliptic
curves that includes:

* Digital Signature Algorithm
* Key Exchange Protocol
* Public Key Encryption Algorithm

SM3 is a hash algorithm designed for electronic authentication purposes.

SM4 is a symmetric encryption algorithm designed for data encryption.


This document extends OpenPGP [@!RFC4880] and its ECC extension
[@!RFC6637] to support SM2 and SM3:

* support the SM3 hash algorithm for data validation purposes
* allowing signatures utilizing the combination of SM3 and RSA, SM3 and SM2
* support the SM2 asymmetric encryption algorithm for public key operations
* the usage of SM2 in combination with existing supported hashes, such as SHA-256
* support the SM4 symmetric encryption algorithm for data protection purposes

Adoption of this document enables exchange of OpenPGP-secured email in a
OSCCA-compliant manner through usage of the authorized combination of
SM2, SM3 and SM4.

