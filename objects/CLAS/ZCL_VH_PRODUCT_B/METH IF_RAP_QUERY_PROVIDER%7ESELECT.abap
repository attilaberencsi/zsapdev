METHOD IF_RAP_QUERY_PROVIDER~SELECT.
  DATA business_data TYPE TABLE OF ZVH_PRODUCT_B.
  DATA business_data_line TYPE ZVH_PRODUCT_B .
  DATA(skip)    = io_request->get_paging( )->get_offset( ).
  DATA(requested_fields)  = io_request->get_requested_elements( ).
  DATA(sort_order)    = io_request->get_sort_elements( ).
  TRY.
    DATA(filter_condition) = io_request->get_filter( )->get_as_sql_string( ).
    business_data = get_products(  ).
    SELECT * FROM @business_data AS implementation_types
       WHERE (filter_condition) INTO TABLE @business_data.
    io_response->set_total_number_of_records( lines( business_data ) ).
    io_response->set_data( business_data ).
    CATCH cx_root INTO DATA(exception).
    DATA(exception_message) = cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_longtext( ).
    DATA(exception_t100_key) = cl_message_helper=>get_latest_t100_exception( exception )->t100key.
    RAISE EXCEPTION TYPE zcx_sapdev_rapgen_customentity
        EXPORTING
          textid   = VALUE scx_t100key( msgid = exception_t100_key-msgid
          msgno = exception_t100_key-msgno
          attr1 = exception_t100_key-attr1
          attr2 = exception_t100_key-attr2
          attr3 = exception_t100_key-attr3
          attr4 = exception_t100_key-attr4 )
    previous = exception.
  ENDTRY.

ENDMETHOD.