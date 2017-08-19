# Message Encoding with Public Keys

Section 5.2.2 of [@!RFC4880], "Version 3 Signature Packet Format"
defines signature formats.  No changes in the format are needed for
ECDSA.

<!-- Section 5.1 of [@!RFC4880], "Public-Key Encrypted Session Key Packets
(Tag 1)" is extended to support ECDH.  The following two fields are
the result of applying the KDF, as described in Section 8.

Algorithm-Specific Fields for ECDH:

  o an MPI of an EC point representing an ephemeral public key

  o a one-octet size, followed by a symmetric key encoded using the
     method described in Section 8
 -->
