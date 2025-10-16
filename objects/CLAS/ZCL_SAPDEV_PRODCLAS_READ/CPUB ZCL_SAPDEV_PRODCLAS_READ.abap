"! <p class="shorttext synchronized" lang="en">Read Product and Classification from S/4 PCE</p>
CLASS zcl_sapdev_prodclas_read DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

    TYPES t_business_data_external TYPE TABLE OF ZCE_ProductClassif.

    TYPES t_product_range TYPE RANGE OF zsc_api_clfn_product=>tys_a_clfn_product_type.
    TYPES t_business_data TYPE zsc_api_clfn_product=>tyt_a_clfn_product_type.

    METHODS get_products
      IMPORTING filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs OPTIONAL
                !top              TYPE i                                        OPTIONAL
                !skip             TYPE i                                        OPTIONAL
      EXPORTING business_data     TYPE t_business_data
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error
                cx_http_dest_provider_error.

    INTERFACES if_oo_adt_classrun.
