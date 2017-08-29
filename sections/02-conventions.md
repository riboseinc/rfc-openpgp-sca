#  Conventions Used in This Document

The key words "**MUST**", "**MUST NOT**", "**REQUIRED**", "**SHALL**",
"**SHALL NOT**", "**SHOULD**", "**SHOULD NOT**", "**RECOMMENDED**",
"**MAY**", and "**OPTIONAL**" in this document are to be interpreted
as described in [@!RFC2119].

Compliant applications are a subset of the broader set of OpenPGP
applications described in [@!RFC4880]. Any [@!RFC2119] keyword within
this document applies to compliant applications only.

The "||" symbol used in this document refers to the bit-string
concatenation function. For example, `T = a || b` indicates that `T`
is the concatenation of bit-strings `a` and `b`.

##  Definitions

OSCCA-compliant
: All algorithms used for encryption and signatures are compliant with
  OSCCA regulations.

SM2DSA
: The elliptic curve digital signature algorithm defined in [@SM2-2] and
  [@I-D.shen-sm2-ecdsa]

SM2KEP
: The elliptic curve key exchange protocol defined in [@SM2-3]

SM2PKE
: The public key encryption algorithm defined in [@SM2-4]

