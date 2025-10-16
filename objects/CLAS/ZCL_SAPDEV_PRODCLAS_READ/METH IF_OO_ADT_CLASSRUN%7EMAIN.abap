  METHOD if_oo_adt_classrun~main.

    DATA business_data     TYPE t_business_data.
    DATA filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs.
    DATA ranges_table      TYPE if_rap_query_filter=>tt_range_option.

    ranges_table = VALUE #( (  sign = 'I' option = 'GE' low = 'TG-11' ) ).
    filter_conditions = VALUE #( ( name = 'PRODUCT'  range = ranges_table ) ).

    TRY.
        get_products( EXPORTING filter_conditions = filter_conditions
                                top               = 3
                                skip              = 1
                      IMPORTING business_data     = business_data ).
        out->write( business_data ).
      CATCH cx_root INTO DATA(exception).
        out->write( cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_longtext( ) ).
    ENDTRY.

  ENDMETHOD.