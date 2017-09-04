#  Conventions Used in This Document

The key words "**MUST**", "**MUST NOT**", "**REQUIRED**", "**SHALL**",
"**SHALL NOT**", "**SHOULD**", "**SHOULD NOT**", "**RECOMMENDED**",
"**MAY**", and "**OPTIONAL**" in this document are to be interpreted
as described in [@!RFC2119].

Compliant applications are a subset of the broader set of OpenPGP
applications described in [@!RFC4880]. Any [@!RFC2119] keyword within
this document applies to compliant applications only.

##  Definitions

OSCCA-compliant
: All cryptographic algorithms used are compliant with OSCCA [@OSCCA] regulations.

SM2DSA
: The elliptic curve digital signature algorithm defined in [@!GBT.32918.2-2016]

SM2KEP
: The elliptic curve key exchange protocol defined in [@!GBT.32918.3-2016]

SM2PKE
: The public key encryption algorithm defined in [[@!GBT.32918.4-2016]

## Basic Operations

This document utilizes definitions of operations from [@RFC7253] and
are included here for reference.

c^i
: The integer $$c$$ raised to the $$i$$-th power.

S || T
: String S concatenated with string T (e.g., 000 || 111 == 000111).
