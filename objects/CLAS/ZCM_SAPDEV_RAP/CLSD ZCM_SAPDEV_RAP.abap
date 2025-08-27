class-pool .
*"* class pool for class ZCM_SAPDEV_RAP

*"* local type definitions
include ZCM_SAPDEV_RAP================ccdef.

*"* class ZCM_SAPDEV_RAP definition
*"* public declarations
  include ZCM_SAPDEV_RAP================cu.
*"* protected declarations
  include ZCM_SAPDEV_RAP================co.
*"* private declarations
  include ZCM_SAPDEV_RAP================ci.
endclass. "ZCM_SAPDEV_RAP definition

*"* macro definitions
include ZCM_SAPDEV_RAP================ccmac.
*"* local class implementation
include ZCM_SAPDEV_RAP================ccimp.

class ZCM_SAPDEV_RAP implementation.
*"* method's implementations
  include methods.
endclass. "ZCM_SAPDEV_RAP implementation
