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

* a variable-length field containing parameters, formatted as
  follows:

 - a one-octet size of the following fields; values 0 and 0xff are
   reserved for future extensions

 - a one-octet value 01, reserved for future extensions

 - a one-octet hash function ID used in the SM2DSA algorithm

Algorithm-Specific Fields for SM2PKE keys:

* a variable-length field containing a curve OID, formatted
  as follows:

 - a one-octet size of the following field; values 0 and
   0xFF are reserved for future extensions

 - octets representing a curve OID, described in (#sm2-curve)

*  MPI of an EC point representing a public key

* a variable-length field containing KDF parameters, formatted as
  follows:

 - a one-octet size of the following fields; values 0 and 0xff are
   reserved for future extensions

 - a one-octet value 01, reserved for future extensions

 - a one-octet hash function ID used with a KDF

Note that both SM2DSA and SM2PKE public keys are composed of the same sequence
of fields, but the second, variable-length field is used for different
purposes.


## Secret-Key Packet Formats

The following algorithm-specific packets are added to Section 5.5.3.
of [@RFC4880], "Secret-Key Packet Formats", to support SM2DSA and
SM2PKE.

This document extends the algorithm-specific portion with the following
fields.

Algorithm-Specific Fields for SM2DSA or SM2PKE secret keys:

*  an MPI of an integer representing the secret key, which is a
   scalar of the public EC point
