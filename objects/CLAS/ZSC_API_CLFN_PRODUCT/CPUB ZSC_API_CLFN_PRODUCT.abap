"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_CLFN_PRODUCT_SRV</em>
CLASS zsc_api_clfn_product DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">A_ClfnClassForKeyDateType</p>
      BEGIN OF tys_a_clfn_class_for_key_dat_2,
        "! <em>Key property</em> ClassInternalID
        class_internal_id          TYPE c LENGTH 10,
        "! ClassType
        class_type                 TYPE c LENGTH 3,
        "! ClassTypeName
        class_type_name            TYPE c LENGTH 40,
        "! Class
        class                      TYPE c LENGTH 18,
        "! ClassStatus
        class_status               TYPE c LENGTH 1,
        "! ClassStatusName
        class_status_name          TYPE c LENGTH 40,
        "! ClassGroup
        class_group                TYPE c LENGTH 10,
        "! ClassGroupName
        class_group_name           TYPE c LENGTH 40,
        "! ClassSearchAuthGrp
        class_search_auth_grp      TYPE c LENGTH 3,
        "! ClassClassfctnAuthGrp
        class_classfctn_auth_grp   TYPE c LENGTH 3,
        "! ClassMaintAuthGrp
        class_maint_auth_grp       TYPE c LENGTH 3,
        "! DocNumber
        doc_number                 TYPE c LENGTH 25,
        "! DocumentType
        document_type              TYPE c LENGTH 3,
        "! DocumentPart
        document_part              TYPE c LENGTH 3,
        "! DocumentVersion
        document_version           TYPE c LENGTH 2,
        "! SameClassfctnReaction
        same_classfctn_reaction    TYPE c LENGTH 1,
        "! ClassStandardOrgName
        class_standard_org_name    TYPE c LENGTH 10,
        "! ClassStandardNumber
        class_standard_number      TYPE c LENGTH 20,
        "! ClassStandardStartDate
        class_standard_start_date  TYPE datn,
        "! ClassStandardVersionStartDate
        class_standard_version_sta TYPE datn,
        "! ClassStandardVersion
        class_standard_version     TYPE c LENGTH 2,
        "! ClassStandardCharcTable
        class_standard_charc_table TYPE c LENGTH 20,
        "! CreationDate
        creation_date              TYPE datn,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! ClassIsLocal
        class_is_local             TYPE abap_bool,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! ClassLastChangedDateTime
        class_last_changed_date_ti TYPE timestampl,
        "! KeyDate
        key_date                   TYPE datn,
      END OF tys_a_clfn_class_for_key_dat_2,
      "! <p class="shorttext synchronized">List of A_ClfnClassForKeyDateType</p>
      tyt_a_clfn_class_for_key_dat_2 TYPE STANDARD TABLE OF tys_a_clfn_class_for_key_dat_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ClfnProductType</p>
      BEGIN OF tys_a_clfn_product_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! ProductType
        product_type               TYPE c LENGTH 4,
        "! CrossPlantStatus
        cross_plant_status         TYPE c LENGTH 2,
        "! CrossPlantStatusValidityDate
        cross_plant_status_validit TYPE datn,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ProductOldID
        product_old_id             TYPE c LENGTH 40,
        "! GrossWeight
        gross_weight               TYPE p LENGTH 7 DECIMALS 3,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! SourceOfSupply
        source_of_supply           TYPE c LENGTH 1,
        "! WeightUnit
        weight_unit                TYPE c LENGTH 3,
        "! NetWeight
        net_weight                 TYPE p LENGTH 7 DECIMALS 3,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! CompetitorID
        competitor_id              TYPE c LENGTH 10,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! ProductHierarchy
        product_hierarchy          TYPE c LENGTH 18,
        "! Division
        division                   TYPE c LENGTH 2,
        "! VarblPurOrdUnitIsActive
        varbl_pur_ord_unit_is_acti TYPE c LENGTH 1,
        "! VolumeUnit
        volume_unit                TYPE c LENGTH 3,
        "! MaterialVolume
        material_volume            TYPE p LENGTH 7 DECIMALS 3,
        "! ANPCode
        anpcode                    TYPE c LENGTH 9,
        "! Brand
        brand                      TYPE c LENGTH 4,
        "! ProcurementRule
        procurement_rule           TYPE c LENGTH 1,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! LowLevelCode
        low_level_code             TYPE c LENGTH 3,
        "! ProdNoInGenProdInPrepackProd
        prod_no_in_gen_prod_in_pre TYPE c LENGTH 40,
        "! SerialIdentifierAssgmtProfile
        serial_identifier_assgmt_p TYPE c LENGTH 4,
        "! SizeOrDimensionText
        size_or_dimension_text     TYPE c LENGTH 32,
        "! IndustryStandardName
        industry_standard_name     TYPE c LENGTH 18,
        "! ProductStandardID
        product_standard_id        TYPE c LENGTH 18,
        "! InternationalArticleNumberCat
        international_article_numb TYPE c LENGTH 2,
        "! ProductIsConfigurable
        product_is_configurable    TYPE abap_bool,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! ExternalProductGroup
        external_product_group     TYPE c LENGTH 18,
        "! CrossPlantConfigurableProduct
        cross_plant_configurable_p TYPE c LENGTH 40,
        "! SerialNoExplicitnessLevel
        serial_no_explicitness_lev TYPE c LENGTH 1,
        "! ProductManufacturerNumber
        product_manufacturer_numbe TYPE c LENGTH 40,
        "! ManufacturerPartProfile
        manufacturer_part_profile  TYPE c LENGTH 4,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! MaterialRevisionLevel
        material_revision_level    TYPE c LENGTH 2,
        "! HandlingIndicator
        handling_indicator         TYPE c LENGTH 4,
        "! WarehouseProductGroup
        warehouse_product_group    TYPE c LENGTH 4,
        "! WarehouseStorageCondition
        warehouse_storage_conditio TYPE c LENGTH 2,
        "! StandardHandlingUnitType
        standard_handling_unit_typ TYPE c LENGTH 4,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! AdjustmentProfile
        adjustment_profile         TYPE c LENGTH 3,
        "! PreferredUnitOfMeasure
        preferred_unit_of_measure  TYPE c LENGTH 3,
        "! IsPilferable
        is_pilferable              TYPE abap_bool,
        "! IsRelevantForHzdsSubstances
        is_relevant_for_hzds_subst TYPE abap_bool,
        "! QuarantinePeriod
        quarantine_period          TYPE p LENGTH 2 DECIMALS 0,
        "! TimeUnitForQuarantinePeriod
        time_unit_for_quarantine_p TYPE c LENGTH 3,
        "! QualityInspectionGroup
        quality_inspection_group   TYPE c LENGTH 4,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! HandlingUnitType
        handling_unit_type         TYPE c LENGTH 4,
        "! HasVariableTareWeight
        has_variable_tare_weight   TYPE abap_bool,
        "! MaximumPackagingLength
        maximum_packaging_length   TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingWidth
        maximum_packaging_width    TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingHeight
        maximum_packaging_height   TYPE p LENGTH 8 DECIMALS 3,
        "! UnitForMaxPackagingDimensions
        unit_for_max_packaging_dim TYPE c LENGTH 3,
      END OF tys_a_clfn_product_type,
      "! <p class="shorttext synchronized">List of A_ClfnProductType</p>
      tyt_a_clfn_product_type TYPE STANDARD TABLE OF tys_a_clfn_product_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductCharcType</p>
      BEGIN OF tys_a_product_charc_type,
        "! <em>Key property</em> Product
        product           TYPE c LENGTH 90,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id TYPE c LENGTH 10,
        "! <em>Key property</em> ClassType
        class_type        TYPE c LENGTH 3,
        "! KeyDate
        key_date          TYPE datn,
        "! ChangeNumber
        change_number     TYPE c LENGTH 12,
      END OF tys_a_product_charc_type,
      "! <p class="shorttext synchronized">List of A_ProductCharcType</p>
      tyt_a_product_charc_type TYPE STANDARD TABLE OF tys_a_product_charc_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductCharcValueType</p>
      BEGIN OF tys_a_product_charc_value_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 90,
        "! <em>Key property</em> ClassType
        class_type                 TYPE c LENGTH 3,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id          TYPE c LENGTH 10,
        "! <em>Key property</em> CharcValuePositionNumber
        charc_value_position_numbe TYPE c LENGTH 3,
        "! KeyDate
        key_date                   TYPE datn,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! CharcValueDependency
        charc_value_dependency     TYPE c LENGTH 1,
        "! CharcValue
        charc_value                TYPE c LENGTH 70,
        "! CharcFromNumericValue
        charc_from_numeric_value   TYPE /iwbep/v4_float,
        "! CharcFromNumericValueUnit
        charc_from_numeric_value_u TYPE c LENGTH 3,
        "! CharcToNumericValue
        charc_to_numeric_value     TYPE /iwbep/v4_float,
        "! CharcToNumericValueUnit
        charc_to_numeric_value_uni TYPE c LENGTH 3,
        "! CharcFromDecimalValue
        charc_from_decimal_value   TYPE p LENGTH 16 DECIMALS 14,
        "! CharcToDecimalValue
        charc_to_decimal_value     TYPE p LENGTH 16 DECIMALS 14,
        "! CharcFromAmount
        charc_from_amount          TYPE p LENGTH 13 DECIMALS 3,
        "! CharcToAmount
        charc_to_amount            TYPE p LENGTH 13 DECIMALS 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! CharcFromDate
        charc_from_date            TYPE datn,
        "! CharcToDate
        charc_to_date              TYPE datn,
        "! CharcFromTime
        charc_from_time            TYPE timn,
        "! CharcToTime
        charc_to_time              TYPE timn,
        "! CharacteristicAuthor
        characteristic_author      TYPE c LENGTH 1,
        "! CharcMaintAuthGrp
        charc_maint_auth_grp       TYPE c LENGTH 3,
      END OF tys_a_product_charc_value_type,
      "! <p class="shorttext synchronized">List of A_ProductCharcValueType</p>
      tyt_a_product_charc_value_type TYPE STANDARD TABLE OF tys_a_product_charc_value_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductClassCharcType</p>
      BEGIN OF tys_a_product_class_charc_type,
        "! <em>Key property</em> Product
        product           TYPE c LENGTH 90,
        "! <em>Key property</em> ClassInternalID
        class_internal_id TYPE c LENGTH 10,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id TYPE c LENGTH 10,
        "! KeyDate
        key_date          TYPE datn,
        "! ChangeNumber
        change_number     TYPE c LENGTH 12,
        "! ClassType
        class_type        TYPE c LENGTH 3,
      END OF tys_a_product_class_charc_type,
      "! <p class="shorttext synchronized">List of A_ProductClassCharcType</p>
      tyt_a_product_class_charc_type TYPE STANDARD TABLE OF tys_a_product_class_charc_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductClassType</p>
      BEGIN OF tys_a_product_class_type,
        "! <em>Key property</em> Product
        product           TYPE c LENGTH 90,
        "! <em>Key property</em> ClassInternalID
        class_internal_id TYPE c LENGTH 10,
        "! KeyDate
        key_date          TYPE datn,
        "! ChangeNumber
        change_number     TYPE c LENGTH 12,
        "! ClassType
        class_type        TYPE c LENGTH 3,
      END OF tys_a_product_class_type,
      "! <p class="shorttext synchronized">List of A_ProductClassType</p>
      tyt_a_product_class_type TYPE STANDARD TABLE OF tys_a_product_class_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductDescriptionType</p>
      BEGIN OF tys_a_product_description_type,
        "! <em>Key property</em> Product
        product             TYPE c LENGTH 40,
        "! <em>Key property</em> Language
        language            TYPE c LENGTH 2,
        "! ProductDescription
        product_description TYPE c LENGTH 40,
      END OF tys_a_product_description_type,
      "! <p class="shorttext synchronized">List of A_ProductDescriptionType</p>
      tyt_a_product_description_type TYPE STANDARD TABLE OF tys_a_product_description_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantProcurementType</p>
      BEGIN OF tys_a_product_plant_procurem_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! IsAutoPurOrdCreationAllowed
        is_auto_pur_ord_creation_a TYPE abap_bool,
        "! IsSourceListRequired
        is_source_list_required    TYPE abap_bool,
        "! SourceOfSupplyCategory
        source_of_supply_category  TYPE c LENGTH 1,
      END OF tys_a_product_plant_procurem_2,
      "! <p class="shorttext synchronized">List of A_ProductPlantProcurementType</p>
      tyt_a_product_plant_procurem_2 TYPE STANDARD TABLE OF tys_a_product_plant_procurem_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantType</p>
      BEGIN OF tys_a_product_plant_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! RegionOfOrigin
        region_of_origin           TYPE c LENGTH 3,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! ProfileCode
        profile_code               TYPE c LENGTH 2,
        "! ProfileValidityStartDate
        profile_validity_start_dat TYPE datn,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! FiscalYearVariant
        fiscal_year_variant        TYPE c LENGTH 2,
        "! PeriodType
        period_type                TYPE c LENGTH 1,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! Commodity
        commodity                  TYPE c LENGTH 17,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! MaintenanceStatusName
        maintenance_status_name    TYPE c LENGTH 15,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! ABCIndicator
        abcindicator               TYPE c LENGTH 1,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! ConsumptionTaxCtrlCode
        consumption_tax_ctrl_code  TYPE c LENGTH 16,
        "! IsCoProduct
        is_co_product              TYPE abap_bool,
        "! ProductIsConfigurable
        product_is_configurable    TYPE c LENGTH 40,
        "! StockDeterminationGroup
        stock_determination_group  TYPE c LENGTH 4,
        "! StockInTransferQuantity
        stock_in_transfer_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! StockInTransitQuantity
        stock_in_transit_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! HasPostToInspectionStock
        has_post_to_inspection_sto TYPE abap_bool,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! IsNegativeStockAllowed
        is_negative_stock_allowed  TYPE abap_bool,
        "! GoodsReceiptBlockedStockQty
        goods_receipt_blocked_stoc TYPE p LENGTH 7 DECIMALS 3,
        "! HasConsignmentCtrl
        has_consignment_ctrl       TYPE c LENGTH 1,
        "! FiscalYearCurrentPeriod
        fiscal_year_current_period TYPE c LENGTH 4,
        "! FiscalMonthCurrentPeriod
        fiscal_month_current_perio TYPE c LENGTH 2,
        "! ProcurementType
        procurement_type           TYPE c LENGTH 1,
        "! IsInternalBatchManaged
        is_internal_batch_managed  TYPE abap_bool,
        "! ProductCFOPCategory
        product_cfopcategory       TYPE c LENGTH 2,
        "! ProductIsExciseTaxRelevant
        product_is_excise_tax_rele TYPE abap_bool,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_plant_type,
      "! <p class="shorttext synchronized">List of A_ProductPlantType</p>
      tyt_a_product_plant_type TYPE STANDARD TABLE OF tys_a_product_plant_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesDeliveryType</p>
      BEGIN OF tys_a_product_sales_delivery_t,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ProductSalesOrg
        product_sales_org          TYPE c LENGTH 4,
        "! <em>Key property</em> ProductDistributionChnl
        product_distribution_chnl  TYPE c LENGTH 2,
        "! MinimumOrderQuantity
        minimum_order_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! SupplyingPlant
        supplying_plant            TYPE c LENGTH 4,
        "! PriceSpecificationProductGroup
        price_specification_produc TYPE c LENGTH 2,
        "! AccountDetnProductGroup
        account_detn_product_group TYPE c LENGTH 2,
        "! DeliveryNoteProcMinDelivQty
        delivery_note_proc_min_del TYPE p LENGTH 7 DECIMALS 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! DeliveryQuantityUnit
        delivery_quantity_unit     TYPE c LENGTH 3,
        "! DeliveryQuantity
        delivery_quantity          TYPE p LENGTH 7 DECIMALS 3,
        "! ProductSalesStatus
        product_sales_status       TYPE c LENGTH 2,
        "! ProductSalesStatusValidityDate
        product_sales_status_valid TYPE datn,
        "! SalesMeasureUnit
        sales_measure_unit         TYPE c LENGTH 3,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ProductHierarchy
        product_hierarchy          TYPE c LENGTH 18,
        "! FirstSalesSpecProductGroup
        first_sales_spec_product_g TYPE c LENGTH 3,
        "! SecondSalesSpecProductGroup
        second_sales_spec_product  TYPE c LENGTH 3,
        "! ThirdSalesSpecProductGroup
        third_sales_spec_product_g TYPE c LENGTH 3,
        "! FourthSalesSpecProductGroup
        fourth_sales_spec_product  TYPE c LENGTH 3,
        "! FifthSalesSpecProductGroup
        fifth_sales_spec_product_g TYPE c LENGTH 3,
        "! MinimumMakeToOrderOrderQty
        minimum_make_to_order_orde TYPE p LENGTH 7 DECIMALS 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_sales_delivery_t,
      "! <p class="shorttext synchronized">List of A_ProductSalesDeliveryType</p>
      tyt_a_product_sales_delivery_t TYPE STANDARD TABLE OF tys_a_product_sales_delivery_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesTaxType</p>
      BEGIN OF tys_a_product_sales_tax_type,
        "! <em>Key property</em> Product
        product            TYPE c LENGTH 40,
        "! <em>Key property</em> Country
        country            TYPE c LENGTH 3,
        "! <em>Key property</em> TaxCategory
        tax_category       TYPE c LENGTH 4,
        "! <em>Key property</em> TaxClassification
        tax_classification TYPE c LENGTH 1,
      END OF tys_a_product_sales_tax_type,
      "! <p class="shorttext synchronized">List of A_ProductSalesTaxType</p>
      tyt_a_product_sales_tax_type TYPE STANDARD TABLE OF tys_a_product_sales_tax_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductStorageLocationType</p>
      BEGIN OF tys_a_product_storage_locati_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! <em>Key property</em> StorageLocation
        storage_location           TYPE c LENGTH 4,
        "! WarehouseStorageBin
        warehouse_storage_bin      TYPE c LENGTH 10,
        "! MaintenanceStatus
        maintenance_status         TYPE c LENGTH 15,
        "! PhysicalInventoryBlockInd
        physical_inventory_block_i TYPE c LENGTH 1,
        "! CreationDate
        creation_date              TYPE datn,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! DateOfLastPostedCntUnRstrcdStk
        date_of_last_posted_cnt_un TYPE datn,
        "! InventoryCorrectionFactor
        inventory_correction_facto TYPE /iwbep/v4_float,
        "! InvtryRestrictedUseStockInd
        invtry_restricted_use_stoc TYPE c LENGTH 3,
        "! InvtryCurrentYearStockInd
        invtry_current_year_stock  TYPE c LENGTH 3,
        "! InvtryQualInspCurrentYrStkInd
        invtry_qual_insp_current_y TYPE c LENGTH 3,
        "! InventoryBlockStockInd
        inventory_block_stock_ind  TYPE c LENGTH 3,
        "! InvtryRestStockPrevPeriodInd
        invtry_rest_stock_prev_per TYPE c LENGTH 3,
        "! InventoryStockPrevPeriod
        inventory_stock_prev_perio TYPE c LENGTH 3,
        "! InvtryStockQltyInspPrevPeriod
        invtry_stock_qlty_insp_pre TYPE c LENGTH 3,
        "! HasInvtryBlockStockPrevPeriod
        has_invtry_block_stock_pre TYPE c LENGTH 3,
        "! FiscalYearCurrentPeriod
        fiscal_year_current_period TYPE c LENGTH 4,
        "! FiscalMonthCurrentPeriod
        fiscal_month_current_perio TYPE c LENGTH 2,
        "! FiscalYearCurrentInvtryPeriod
        fiscal_year_current_invtry TYPE c LENGTH 4,
      END OF tys_a_product_storage_locati_2,
      "! <p class="shorttext synchronized">List of A_ProductStorageLocationType</p>
      tyt_a_product_storage_locati_2 TYPE STANDARD TABLE OF tys_a_product_storage_locati_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSupplyPlanningType</p>
      BEGIN OF tys_a_product_supply_plannin_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizeRoundingQuantity
        lot_size_rounding_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizingProcedure
        lot_sizing_procedure       TYPE c LENGTH 2,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! SafetyStockQuantity
        safety_stock_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumSafetyStockQuantity
        minimum_safety_stock_quant TYPE p LENGTH 7 DECIMALS 3,
        "! PlanningTimeFence
        planning_time_fence        TYPE c LENGTH 3,
        "! ABCIndicator
        abcindicator               TYPE c LENGTH 1,
        "! MaximumStockQuantity
        maximum_stock_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! ReorderThresholdQuantity
        reorder_threshold_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! PlannedDeliveryDurationInDays
        planned_delivery_duration  TYPE p LENGTH 2 DECIMALS 0,
        "! SafetyDuration
        safety_duration            TYPE c LENGTH 2,
        "! PlanningStrategyGroup
        planning_strategy_group    TYPE c LENGTH 2,
        "! TotalReplenishmentLeadTime
        total_replenishment_lead_t TYPE p LENGTH 2 DECIMALS 0,
        "! ProcurementType
        procurement_type           TYPE c LENGTH 1,
        "! ProcurementSubType
        procurement_sub_type       TYPE c LENGTH 2,
        "! AssemblyScrapPercent
        assembly_scrap_percent     TYPE p LENGTH 3 DECIMALS 2,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! MRPGroup
        mrpgroup                   TYPE c LENGTH 4,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_supply_plannin_2,
      "! <p class="shorttext synchronized">List of A_ProductSupplyPlanningType</p>
      tyt_a_product_supply_plannin_2 TYPE STANDARD TABLE OF tys_a_product_supply_plannin_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductWorkSchedulingType</p>
      BEGIN OF tys_a_product_work_schedulin_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! MaterialBaseQuantity
        material_base_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! UnlimitedOverDelivIsAllowed
        unlimited_over_deliv_is_al TYPE abap_bool,
        "! OverDelivToleranceLimit
        over_deliv_tolerance_limit TYPE p LENGTH 2 DECIMALS 1,
        "! UnderDelivToleranceLimit
        under_deliv_tolerance_limi TYPE p LENGTH 2 DECIMALS 1,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_work_schedulin_2,
      "! <p class="shorttext synchronized">List of A_ProductWorkSchedulingType</p>
      tyt_a_product_work_schedulin_2 TYPE STANDARD TABLE OF tys_a_product_work_schedulin_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_ClfnClassForKeyDate
        "! <br/> Collection of type 'A_ClfnClassForKeyDateType'
        a_clfn_class_for_key_date  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CLFN_CLASS_FOR_KEY_DATE',
        "! A_ClfnProduct
        "! <br/> Collection of type 'A_ClfnProductType'
        a_clfn_product             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CLFN_PRODUCT',
        "! A_ProductCharc
        "! <br/> Collection of type 'A_ProductCharcType'
        a_product_charc            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CHARC',
        "! A_ProductCharcValue
        "! <br/> Collection of type 'A_ProductCharcValueType'
        a_product_charc_value      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CHARC_VALUE',
        "! A_ProductClass
        "! <br/> Collection of type 'A_ProductClassType'
        a_product_class            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CLASS',
        "! A_ProductClassCharc
        "! <br/> Collection of type 'A_ProductClassCharcType'
        a_product_class_charc      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CLASS_CHARC',
        "! A_ProductDescription
        "! <br/> Collection of type 'A_ProductDescriptionType'
        a_product_description      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_DESCRIPTION',
        "! A_ProductPlant
        "! <br/> Collection of type 'A_ProductPlantType'
        a_product_plant            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT',
        "! A_ProductPlantProcurement
        "! <br/> Collection of type 'A_ProductPlantProcurementType'
        a_product_plant_procuremen TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_PROCUREMEN',
        "! A_ProductSalesDelivery
        "! <br/> Collection of type 'A_ProductSalesDeliveryType'
        a_product_sales_delivery   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES_DELIVERY',
        "! A_ProductSalesTax
        "! <br/> Collection of type 'A_ProductSalesTaxType'
        a_product_sales_tax        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES_TAX',
        "! A_ProductStorageLocation
        "! <br/> Collection of type 'A_ProductStorageLocationType'
        a_product_storage_location TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_STORAGE_LOCATION',
        "! A_ProductSupplyPlanning
        "! <br/> Collection of type 'A_ProductSupplyPlanningType'
        a_product_supply_planning  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SUPPLY_PLANNING',
        "! A_ProductWorkScheduling
        "! <br/> Collection of type 'A_ProductWorkSchedulingType'
        a_product_work_scheduling  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_WORK_SCHEDULING',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_ClfnClassForKeyDateType</p>
        "! See also structure type {@link ..tys_a_clfn_class_for_key_dat_2}
        BEGIN OF a_clfn_class_for_key_dat_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_clfn_class_for_key_dat_2,
        "! <p class="shorttext synchronized">Internal names for A_ClfnProductType</p>
        "! See also structure type {@link ..tys_a_clfn_product_type}
        BEGIN OF a_clfn_product_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Description
            to_description       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DESCRIPTION',
            "! to_Plant
            to_plant             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT',
            "! to_ProductCharc
            to_product_charc     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_CHARC',
            "! to_ProductClass
            to_product_class     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_CLASS',
            "! to_ProductSalesTax
            to_product_sales_tax TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_SALES_TAX',
            "! to_SalesDelivery
            to_sales_delivery    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_DELIVERY',
          END OF navigation,
        END OF a_clfn_product_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductCharcType</p>
        "! See also structure type {@link ..tys_a_product_charc_type}
        BEGIN OF a_product_charc_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Valuation
            to_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION',
          END OF navigation,
        END OF a_product_charc_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductCharcValueType</p>
        "! See also structure type {@link ..tys_a_product_charc_value_type}
        BEGIN OF a_product_charc_value_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_charc_value_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductClassCharcType</p>
        "! See also structure type {@link ..tys_a_product_class_charc_type}
        BEGIN OF a_product_class_charc_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Valuation
            to_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION',
          END OF navigation,
        END OF a_product_class_charc_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductClassType</p>
        "! See also structure type {@link ..tys_a_product_class_type}
        BEGIN OF a_product_class_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Characteristics
            to_characteristics TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CHARACTERISTICS',
            "! to_ClassDetails
            to_class_details   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CLASS_DETAILS',
          END OF navigation,
        END OF a_product_class_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductDescriptionType</p>
        "! See also structure type {@link ..tys_a_product_description_type}
        BEGIN OF a_product_description_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_description_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantProcurementType</p>
        "! See also structure type {@link ..tys_a_product_plant_procurem_2}
        BEGIN OF a_product_plant_procurem_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_procurem_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantType</p>
        "! See also structure type {@link ..tys_a_product_plant_type}
        BEGIN OF a_product_plant_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_ProductPlantProcurement
            to_product_plant_procureme TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_PLANT_PROCUREME',
            "! to_ProductSupplyPlanning
            to_product_supply_planning TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_SUPPLY_PLANNING',
            "! to_ProductWorkScheduling
            to_product_work_scheduling TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_WORK_SCHEDULING',
            "! to_StorageLocation
            to_storage_location        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_STORAGE_LOCATION',
          END OF navigation,
        END OF a_product_plant_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesDeliveryType</p>
        "! See also structure type {@link ..tys_a_product_sales_delivery_t}
        BEGIN OF a_product_sales_delivery_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_sales_delivery_t,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesTaxType</p>
        "! See also structure type {@link ..tys_a_product_sales_tax_type}
        BEGIN OF a_product_sales_tax_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_sales_tax_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductStorageLocationType</p>
        "! See also structure type {@link ..tys_a_product_storage_locati_2}
        BEGIN OF a_product_storage_locati_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_storage_locati_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductSupplyPlanningType</p>
        "! See also structure type {@link ..tys_a_product_supply_plannin_2}
        BEGIN OF a_product_supply_plannin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_supply_plannin_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductWorkSchedulingType</p>
        "! See also structure type {@link ..tys_a_product_work_schedulin_2}
        BEGIN OF a_product_work_schedulin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_work_schedulin_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.

