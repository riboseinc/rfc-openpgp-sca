# Message Encoding with Public Keys

## Public-Key Encrypted Session Key Packets (Tag 1)

Section 5.1 of [RFC4880], "Public-Key Encrypted Session Key Packets
(Tag 1)" is extended to support SM2PKE using the following
algorithm specific fields for SM2PKE, through applying the KDF described
in (#sm2-kdf).

Algorithm Specific Fields for SM2 encryption:

* The SM2 ciphertext is formatted in the PGP bitstream as a single MPI.  This
  consists of `C = (C1 || C2 || C3)`, described in step A2 of Section 7.2.1. of
  [@I-D.shen-sm2-ecdsa], followed by a single octet giving the code for the hash
  algorithm used for the calculation of the KDF mask `t` and `C3`, described in
  step A5 and A7 of Section 7.2.1. of [@I-D.shen-sm2-ecdsa]. For OSCCA
  compliance this **MUST** be SM3 or another approved hash and in any case it
  **SHOULD** be a hash which is listed in the receiving keys "Preferred Hash
  Algorithms" list.

## Signature Packet (Tag 2)

### Version 3 Signature Packet Format

Section 5.2.2 of [@!RFC4880] define the signature format for "Version 3 Signature Packet Format".
Similar to ECDSA [@RFC6637], no changes in the format is necessary for SM2DSA.


### Version 4 Signature Packet Format

Section 5.2.3 of [@!RFC4880] define the signature format for "Version 4 Signature Packet Format".
Similar to ECDSA [@RFC6637], no changes in the format is necessary for SM2DSA.
