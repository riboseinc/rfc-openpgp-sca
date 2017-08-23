# SM2 ECC Curve OID {#sm2-curve}

<!--TODO: what other curves are available? GmSSL lists 3 other ones.-->

This section provides the "SM2 Recommended Curve" described in
[@SM2-5] according to the method of [@RFC6637].

<!--TODO: from 6637-->
The named curves are referenced as a sequence of bytes in this
document, called throughout, curve OID.  Section 11 describes in
detail how this sequence of bytes is formed.
The parameter curve OID is an array of octets that define a named
curve.  The table below specifies the exact sequence of bytes for
each named curve referenced in this document:

ASN.1 Object Identifier | OID len | Curve OID bytes in hexadecimal representation | Curve name
:------|:-----|:----|:---
1.2.156.10197.1.301 | 8 | 2A 81 1C CF 55 01 82 2D | SM2 Recommended

<!--TODO, most text from 6637 below-->

The sequence of octets in the third column is the result of applying
the Distinguished Encoding Rules (DER) to the ASN.1 Object Identifier
with subsequent truncation.  The truncation removes the two fields of
encoded Object Identifier.  The first omitted field is one octet
representing the Object Identifier tag, and the second omitted field
is the length of the Object Identifier body.

The complete ASN.1 DER encoding for the SM2 Recommended curve
OID is "06 08 2A 81 1C CF 55 01 82 2D", from which the first entry in
the table above is constructed by omitting the first two octets. Only
the truncated sequence of octets is the valid representation of a curve
OID.

