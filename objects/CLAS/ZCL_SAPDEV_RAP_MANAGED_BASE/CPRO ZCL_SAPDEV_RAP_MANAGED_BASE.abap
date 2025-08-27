  PROTECTED SECTION.
    METHODS read_ancestor
      IMPORTING i_entity_name   TYPE abp_entity_name
                i_instance_ref  TYPE REF TO data
                i_ancestor_info TYPE csequence
                "i_ancestor_info TYPE cl_abap_behvdescr=>t_pathnode
      RETURNING VALUE(r_result) TYPE REF TO data.

