class ZRAP630_CL_VH_PRODUCT_B definition
  public
  final
  create public .

public section.

  interfaces IF_RAP_QUERY_PROVIDER .

  types:
    T_PRODUCTS TYPE STANDARD TABLE OF ZRAP630I_VH_PRODUCT_B WITH  EMPTY KEY .

  data:
    PRODUCTY TYPE t_products READ-ONLY .

  methods GET_PRODUCTS
    returning
      value(PRODUCTS) type t_products .