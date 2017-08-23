# Message Encoding with Public Keys

## Public-Key Encrypted Session Key Packets (Tag 1)

Section 5.1 of [RFC4880], "Public-Key Encrypted Session Key Packets
(Tag 1)" is extended to support SM2PKE using the following
algorithm specific fields for SM2PKE, through applying the KDF described
in (#sm2-kdf).

<!-- TODO Jack is this accurate? -->

Algorithm Specific Fields for SM2 encryption:

* MPI of SM2 encrypted value `C = (C1 || C2 || C3)`, defined in step A2 of
  Section 7.2.1. of [@I-D.shen-sm2-ecdsa]

* A one-octet number giving the hash algorithm used for the calculation of
  `C3`, defined in step A7 of Section 7.2.1. of [@I-D.shen-sm2-ecdsa].

## Signature Packet (Tag 2)

### Version 3 Signature Packet Format

Section 5.2.2 of [@!RFC4880] define the signature format for "Version 3 Signature Packet Format".
Similar to ECDSA [@RFC6637], no changes in the format is necessary for SM2DSA.


### Version 4 Signature Packet Format

Section 5.2.3 of [@!RFC4880] define the signature format for "Version 4 Signature Packet Format".
Similar to ECDSA [@RFC6637], no changes in the format is necessary for SM2DSA.
