class-pool .
*"* class pool for class ZBP_C_BANKTP

*"* local type definitions
include ZBP_C_BANKTP==================ccdef.

*"* class ZBP_C_BANKTP definition
*"* public declarations
  include ZBP_C_BANKTP==================cu.
*"* protected declarations
  include ZBP_C_BANKTP==================co.
*"* private declarations
  include ZBP_C_BANKTP==================ci.
endclass. "ZBP_C_BANKTP definition

*"* macro definitions
include ZBP_C_BANKTP==================ccmac.
*"* local class implementation
include ZBP_C_BANKTP==================ccimp.

*"* test class
include ZBP_C_BANKTP==================ccau.

class ZBP_C_BANKTP implementation.
*"* method's implementations
  include methods.
endclass. "ZBP_C_BANKTP implementation
