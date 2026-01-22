  METHOD get_number.
    TRY.
        cl_numberrange_runtime=>number_get( EXPORTING nr_range_nr = i_interval
                                                      object      = i_object
                                            IMPORTING number      = e_number
                                                      returncode  = DATA(rc) ).
        CASE rc.
          " RC= 1 is Ignored, business user is not interested of such in a popup !
          WHEN '2'.
            e_behv_message = NEW zcm_sapdev_rap( textid       = zcm_sapdev_rap=>nro_interval_ran_out
                                                 severity     = if_abap_behv_message=>severity-information
                                                 nro_object   = CONV #( i_object )
                                                 nro_interval = CONV #( i_interval ) ).
          WHEN OTHERS.
            RETURN.
        ENDCASE.

      CATCH cx_nr_object_not_found INTO DATA(ex_object_not_found).
        e_behv_message = NEW zcm_sapdev_rap( textid      = zcm_sapdev_rap=>nro_exception
                                             previous    = ex_object_not_found
                                             nro_message = CONV symsgv( ex_object_not_found->get_text( ) ) ).

      CATCH cx_number_ranges INTO DATA(ex_nro).
        e_behv_message = NEW zcm_sapdev_rap( textid      = zcm_sapdev_rap=>nro_exception
                                             previous    = ex_nro
                                             nro_message = CONV symsgv( ex_nro->get_text( ) ) ).
    ENDTRY.
  ENDMETHOD.