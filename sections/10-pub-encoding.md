# Message Encoding with Public Keys

Section 5.2.2 of [@!RFC4880], "Version 3 Signature Packet Format"
defines signature formats. Similar to ECDSA [@RFC6637], no changes in
the format is necessary for SM2DSA.

TODO: Jack

The SM2 ciphertext has a specific form (it's a triplet of an ECC point, the masked plaintext, and a SM3 hash that serves as an authenticator). However here it's just formatted as a BIGNUM holding an opaque block of bits. Which I think is fairly consistent with OpenPGPs approach to such things (eg using a single BIGNUM to hold ECC points).


