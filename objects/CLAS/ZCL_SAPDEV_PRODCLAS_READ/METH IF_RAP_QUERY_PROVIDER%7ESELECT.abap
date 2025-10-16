  METHOD if_rap_query_provider~select.
    DATA business_data          TYPE t_business_data.
    DATA business_data_external TYPE t_business_data_external.

    DATA(top)  = io_request->get_paging( )->get_page_size( ).
    DATA(skip) = io_request->get_paging( )->get_offset( ).
    DATA(requested_fields) = io_request->get_requested_elements( ).
    DATA(sort_order) = io_request->get_sort_elements( ).

    TRY.
        DATA(filter_condition) = io_request->get_filter( )->get_as_ranges( ).

        get_products( EXPORTING filter_conditions = filter_condition
                                top               = CONV i( top )
                                skip              = CONV i( skip )
                      IMPORTING business_data     = business_data ).

        business_data_external = CORRESPONDING #( business_data
                                          MAPPING Product = product
                                                  ProductType = product_type
                                                  ProductGroup = product_group ).

        io_response->set_total_number_of_records( lines( business_data_external ) ).
        io_response->set_data( business_data_external ).

      CATCH cx_root INTO DATA(exception).
        " TODO: variable is assigned but never used (ABAP cleaner)
        DATA(exception_message) = cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_longtext( ).
    ENDTRY.
  ENDMETHOD.