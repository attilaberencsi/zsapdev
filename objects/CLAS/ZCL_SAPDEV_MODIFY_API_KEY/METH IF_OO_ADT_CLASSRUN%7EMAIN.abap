  METHOD if_oo_adt_classrun~main.
    INSERT INTO zsapdev_apikey VALUES @( VALUE #( provider_name = 'Idera'
                                                  api_name      = 'exchangeratesapi'
                                                  api_key       = ''  ) ).
  ENDMETHOD.