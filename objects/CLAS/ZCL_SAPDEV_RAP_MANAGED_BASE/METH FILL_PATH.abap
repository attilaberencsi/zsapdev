  METHOD fill_path.
*    cl_abap_behvdescr=>get_path( EXPORTING p_entity = i_entity_name
*                                 IMPORTING p_path   = DATA(path) ).
*
*    DATA(first) = abap_true.
*    LOOP AT path INTO DATA(ancestor) STEP -1.
*      IF first = abap_true.
*        DATA(instance_ref) = REF data( i_instance ).
*        DATA(entity_name) = i_entity_name.
*        first = abap_false.
*      ENDIF.
*
*      DATA(ancestor_instance_ref) = read_ancestor( i_entity_name   = entity_name
*                                                   i_instance_ref  = instance_ref
*                                                   i_ancestor_info = ancestor ).
*
*      ASSIGN ancestor_instance_ref->* TO FIELD-SYMBOL(<ancestor_instance>).
*      IF ancestor-alias IS NOT INITIAL.
*        ASSIGN COMPONENT ancestor-alias OF STRUCTURE c_path TO FIELD-SYMBOL(<ancestor_keys>).
*      ELSE.
*        ASSIGN COMPONENT ancestor-entity OF STRUCTURE c_path TO <ancestor_keys>.
*      ENDIF.
*
*      MOVE-CORRESPONDING <ancestor_instance> TO <ancestor_keys>.
*
*      UNASSIGN: <ancestor_keys>, <ancestor_instance>.
*
*      CLEAR: instance_ref,
*             entity_name.
*
*      instance_ref = ancestor_instance_ref.
*      entity_name = ancestor-entity.
*    ENDLOOP.
  ENDMETHOD.