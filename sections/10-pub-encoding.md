# Message Encoding with Public Keys

## Public-Key Encrypted Session Key Packets (Tag 1)

Section 5.1 of [RFC4880], "Public-Key Encrypted Session Key Packets
(Tag 1)" is extended to support SM2PKE using the following
algorithm specific fields for SM2PKE, through applying the KDF described
in (#sm2-kdf).

Algorithm Specific Fields for SM2 encryption:

* The SM2 ciphertext is formatted in the OpenPGP bitstream as a single MPI.
  This consists of:

  * `C = (C1 || C3 || C2)` (step A8 of Section 4.1 [@SM2-4]), followed by

  * a single octet giving the code for the hash algorithm used within the
    calculation of the KDF mask `t` (step A5 of Section 4.1 [@SM2-4]) and the
    calculation of `C3` (step A7 of Section 4.1 [@SM2-4]).
    For OSCCA compliance, this **MUST** be an OSCCA-approved hash function, and
    in any case, it **SHOULD** be a hash which is listed in the receiving keys
    "Preferred Hash Algorithms" list (Section 5.2.3.8 of [@RFC4880]).


## Signature Packet (Tag 2)

### Version 3 Signature Packet Format

Section 5.2.2 of [@!RFC4880] defines the signature format for "Version 3 Signature Packet Format".
Similar to ECDSA [@RFC6637], no change in the format is necessary for SM2DSA.


### Version 4 Signature Packet Format

Section 5.2.3 of [@!RFC4880] defines the signature format for "Version 4 Signature Packet Format".
Similar to ECDSA [@RFC6637], no change in the format is necessary for SM2DSA.
