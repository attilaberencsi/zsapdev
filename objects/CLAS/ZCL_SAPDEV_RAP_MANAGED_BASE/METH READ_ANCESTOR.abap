  METHOD read_ancestor.
*    DATA:
*      associations TYPE cl_abap_behv_load=>tt_assoc.
*
*    FIELD-SYMBOLS:
*      <keys>    TYPE STANDARD TABLE,
*      <parents> TYPE STANDARD TABLE.
*
*    " Get Parent Association Name
*    DATA(relation) = cl_abap_behv_load=>get_load( EXPORTING entity       = i_entity_name
*                                                  IMPORTING associations = associations ).
*
*    DATA(parent_association_name) = associations[ source_entity = i_entity_name
*                                                  target_entity = i_ancestor_info-entity ]-name.
*
*    DATA(keys_ref) = cl_abap_behvdescr=>create_data( p_root     = bdef_name
*                                                     p_name     = i_entity_name
*                                                     p_op       = if_abap_behv=>op-r-read_ba
*                                                     p_sub_name = parent_association_name
*                                                     p_kind     = if_abap_behv=>typekind-import ).
*
*    DATA(parents_ref) = cl_abap_behvdescr=>create_data( p_root     = bdef_name
*                                                        p_name     = i_entity_name
*                                                        p_op       = if_abap_behv=>op-r-read_ba
*                                                        p_sub_name = parent_association_name
*                                                        p_kind     = if_abap_behv=>typekind-result ).
*
*    ASSIGN i_instance_ref->* TO FIELD-SYMBOL(<instance>).
*    ASSIGN keys_ref->* TO <keys>.
*    APPEND INITIAL LINE TO <keys> ASSIGNING FIELD-SYMBOL(<key>).
*    MOVE-CORRESPONDING <instance> TO <key>.
*
*    LOOP AT i_ancestor_info-keys INTO DATA(key_field_name).
*      <key>-(cl_abap_behv=>co_techfield_name-control)-(key_field_name) = if_abap_behv=>mk-on.
*    ENDLOOP.
*
*    DATA(eml_reads) = VALUE abp_behv_retrievals_tab( ( op          = if_abap_behv=>op-r-read_ba
*                                                       entity_name = i_entity_name
*                                                       sub_name    = parent_association_name
*                                                       instances   = REF data( <keys> )
*                                                       full        = abap_true
*                                                       results     = parents_ref ) ).
*
*    READ ENTITIES OPERATIONS eml_reads FAILED FINAL(read_failed).
*    ASSIGN parents_ref->* TO <parents>.
*
*    ASSIGN <parents>[ 1 ] TO FIELD-SYMBOL(<parent>).
*
*    RETURN REF data( <parent> ).
  ENDMETHOD.