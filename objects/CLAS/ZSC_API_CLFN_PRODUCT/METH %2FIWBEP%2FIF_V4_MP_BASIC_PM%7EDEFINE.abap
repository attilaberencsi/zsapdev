  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_CLFN_PRODUCT_SRV' ) ##NO_TEXT.

    def_a_clfn_class_for_key_dat_2( ).
    def_a_clfn_product_type( ).
    def_a_product_charc_type( ).
    def_a_product_charc_value_type( ).
    def_a_product_class_charc_type( ).
    def_a_product_class_type( ).
    def_a_product_description_type( ).
    def_a_product_plant_procurem_2( ).
    def_a_product_plant_type( ).
    def_a_product_sales_delivery_t( ).
    def_a_product_sales_tax_type( ).
    def_a_product_storage_locati_2( ).
    def_a_product_supply_plannin_2( ).
    def_a_product_work_schedulin_2( ).

  ENDMETHOD.