# Encoding of Public and Private Keys

## Public-Key Packet Formats

The following algorithm-specific packets are added to Section 5.5.2
of [@RFC4880], "Public-Key Packet Formats", to support SM2DSA and
SM2PKE.

This document extends the algorithm-specific portion with the following
fields.

Algorithm-Specific Fields for SM2DSA keys:

* a variable-length field containing a curve OID, formatted
  as follows:

 - a one-octet size of the following field; values 0 and
   0xFF are reserved for future extensions

 - octets representing a curve OID, described in (#sm2-curve)

*  MPI of an EC point representing a public key

Algorithm-Specific Fields for SM2PKE keys:

* a variable-length field containing a curve OID, formatted
  as follows:

 - a one-octet size of the following field; values 0 and
   0xFF are reserved for future extensions

 - octets representing a curve OID, described in (#sm2-curve)

*  MPI of an EC point representing a public key

Note that both SM2DSA and SM2PKE public keys are composed of the same
sequence of fields, and use the same codepoint to identify them.
They are distinguished by the key usage flags.


## Secret-Key Packet Formats

The following algorithm-specific packets are added to Section 5.5.3.
of [@RFC4880], "Secret-Key Packet Formats", to support SM2DSA and
SM2PKE.

This document extends the algorithm-specific portion with the following
fields.

Algorithm-Specific Fields for SM2DSA or SM2PKE secret keys:

*  an MPI of an integer representing the secret key, which is a
   scalar of the public EC point
