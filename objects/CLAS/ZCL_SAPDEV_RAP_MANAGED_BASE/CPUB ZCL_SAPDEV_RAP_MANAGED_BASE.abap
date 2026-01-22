"! <p class="shorttext synchronized" lang="en">RAP Managed Handler Base</p>
"! <p>This is a handler helper utility to execute common operations</p>
CLASS zcl_sapdev_rap_managed_base DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    "! <p class="shorttext synchronized">BO Name</p>
    DATA bdef_name TYPE abp_root_entity_name READ-ONLY.

    "! <p class="shorttext synchronized">Setup</p>
    "!
    "! @parameter i_bdef_name | <p class="shorttext synchronized">Behavior definition name</p>
    METHODS constructor
      IMPORTING i_bdef_name TYPE abp_root_entity_name.

    "! <p class="shorttext synchronized">Validate Mandatory fields</p>
    "! <p><strong>BDEF</strong><br/>
    "! <strong>validation</strong> validate_mandatory_fields <strong>on save { create; update; }</strong>
    "! </p>
    "!
    "! @parameter keys            | <p class="shorttext synchronized">type table for validation</p>
    "! @parameter failed_entity   | <p class="shorttext synchronized">failed-entity</p>
    "! @parameter reported_entity | <p class="shorttext synchronized">reported-entity</p>
    METHODS validate_mandatory_fields
      IMPORTING !keys           TYPE STANDARD TABLE
      CHANGING  failed_entity   TYPE STANDARD TABLE
                reported_entity TYPE STANDARD TABLE.

    "! <p class="shorttext synchronized">Fill Message Path (%path)</p>
    "!
    "! @parameter i_entity_name | <p class="shorttext synchronized">Entity Name</p>
    "! @parameter i_instance    | <p class="shorttext synchronized">Instance</p>
    "! @parameter c_path        | <p class="shorttext synchronized">%path</p>
    METHODS fill_path
      IMPORTING i_entity_name TYPE abp_entity_name
                i_instance    TYPE any
      CHANGING  c_path        TYPE any.

    "! Retrieve next number from range
    "! @parameter i_object       | Number Range Object
    "! @parameter i_interval     | Interval Number
    "! @parameter e_number       | Number
    "! @parameter e_behv_message | Number
    CLASS-METHODS get_number
      IMPORTING i_object       TYPE cl_numberrange_runtime=>nr_object
                i_interval     TYPE cl_numberrange_runtime=>nr_interval
      EXPORTING e_number       TYPE cl_numberrange_runtime=>nr_number
                e_behv_message TYPE REF TO if_abap_behv_message.
