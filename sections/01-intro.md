#  Introduction {#introduction}

SM2 [@!GBT.32918.1-2016] [@GMT-0003-2012] [@SM2] [@I-D.shen-sm2-ecdsa],
SM3 [@!GBT.32905-2016] [@GMT-0004-2012] [@SM3] [@I-D.shen-sm3-hash] and
SM4 [@!GBT.32907-2016] [@GMT-0002-2012] [@SM4]
are cryptographic standards issued by the
Organization of State Commercial Administration of China [@OSCCA] as
authorized cryptographic algorithms for the use within China. These
algorithms are published in public.

Adoption of this document enables exchange of OpenPGP-secured email [@!RFC4880]
in a OSCCA-compliant manner through usage of the authorized combination of
SM2, SM3 and SM4.

SM2 is a set of public key cryptographic algorithms based on elliptic curves
that include:

* Digital Signature Algorithm [@!GBT.32918.2-2016] [@SM2-2]
* Key Exchange Protocol [@!GBT.32918.3-2016] [@SM2-3]
* Public Key Encryption Algorithm [@!GBT.32918.4-2016] [@SM2-4]

SM3 [@!GBT.32905-2016] is a hash algorithm designed for electronic
authentication purposes.

SM4 [@!GBT.32907-2016] is a symmetric encryption algorithm designed for data
encryption.

This document extends OpenPGP [@!RFC4880] and its ECC extension
[@!RFC6637] to support SM2, SM3 and SM4:

* support the SM3 hash algorithm for data validation purposes
* support signatures utilizing the combination of SM3 with other digital signing algorithms, such as RSA and SM2
* support the SM2 asymmetric encryption algorithm for public key operations
* support usage of SM2 in combination with supported hash algorithms, such as SHA-256 and SM3
* support the SM4 symmetric encryption algorithm for data protection purposes
* defines the OpenPGP profile "OSCCA-SM234" to enable usage of OpenPGP
  in an OSCCA-compliant manner.
