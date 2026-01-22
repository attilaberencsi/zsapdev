  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor( previous = previous ).
    CLEAR me->textid.

    me->field_name   = field_name.
    me->nro_message  = nro_message.
    me->nro_object   = nro_object.
    me->nro_interval = nro_interval.

    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    if_abap_behv_message~m_severity = severity.
  ENDMETHOD.