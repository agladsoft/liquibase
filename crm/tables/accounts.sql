CREATE TABLE IF NOT EXISTS crm.accounts
    (
    `odata.etag` Nullable(String),
    `kc_portservices` Nullable(Integer),
    `kc_customsservices` Nullable(Integer),
    `kc_provider` Nullable(Bool),
    `address2_addresstypecode` Nullable(Integer),
    `merged` Nullable(Bool),
    `rn_regnom` Nullable(String),
    `kc_lastinterviewdate_state` Nullable(Integer),
    `rn_taxnumber` Nullable(String),
    `kc_competitor` Nullable(Bool),
    `territorycode` Nullable(Integer),
    `emailaddress1` Nullable(String),
    `exchangerate` Nullable(Decimal128(19)),
    `rn_getbyinn` Nullable(String),
    `rn_projects` Nullable(String),
    `name` Nullable(String),
    `websiteurl` Nullable(String),
    `kc_auto_state` Nullable(Integer),
    `kc_sendtoukt` Nullable(Bool),
    `kc_customsservices_date` Nullable(Date),
    `_owningbusinessunit_value` Nullable(String),
    `_owninguser_value` Nullable(String),
    `_primarycontactid_value` Nullable(String),
    `address2_line1` Nullable(String),
    `address1_composite` Nullable(String),
    `donotpostalmail` Nullable(Bool),
    `accountratingcode` Nullable(Integer),
    `marketingonly` Nullable(Bool),
    `rn_number` Nullable(String),
    `donotphone` Nullable(Bool),
    `preferredcontactmethodcode` Nullable(Integer),
    `_ownerid_value` Nullable(String),
    `accountclassificationcode` Nullable(Integer),
    `kc_firstsalesorderdate_state` Nullable(Integer),
    `customersizecode` Nullable(Integer),
    `kc_offdockterminalservices_state` Nullable(Integer),
    `kc_quantityinterview_state` Nullable(Integer),
    `rn_clientmonitoring` Nullable(Bool),
    `kc_firstsalesorderdate_date` Nullable(Date),
    `trx_phone_calls_recording` Nullable(Bool),
    `donotemail` Nullable(Bool),
    `kc_train_state` Nullable(Integer),
    `address2_shippingmethodcode` Nullable(Integer),
    `kc_auto` Nullable(Integer),
    `kc_portservices_state` Nullable(Integer),
    `address2_freighttermscode` Nullable(Integer),
    `statuscode` Nullable(Integer),
    `createdon` Nullable(Date),
    `rn_lastsalesorderdate_date` Nullable(Date),
    `_originatingleadid_value` Nullable(String),
    `kc_line` Nullable(Bool),
    `rn_haslead` Nullable(Bool),
    `kc_internationalcarriage` Nullable(Integer),
    `donotsendmm` Nullable(Bool),
    `donotfax` Nullable(Bool),
    `kc_opfcode` Nullable(Integer),
    `donotbulkpostalmail` Nullable(Bool),
    `versionnumber` Integer,
    `openrevenue_date` Nullable(Date),
    `address1_line1` Nullable(String),
    `kc_train_date` Nullable(Date),
    `modifiedon` Nullable(Date),
    `creditonhold` Nullable(Bool),
    `telephone1` Nullable(String),
    `kc_train` Nullable(Integer),
    `kc_ruscon` Nullable(Bool),
    `_transactioncurrencyid_value` Nullable(String),
    `kc_internationalcarriage_state` Nullable(Integer),
    `accountid` Nullable(String),
    `kc_auto_date` Nullable(Date),
    `kc_internationalcarriage_date` Nullable(Date),
    `kc_customsservices_state` Nullable(Integer),
    `_modifiedby_value` Nullable(String),
    `kc_quantityinterview_date` Nullable(Date),
    `followemail` Nullable(Bool),
    `businesstypecode` Nullable(Integer),
    `_createdby_value` Nullable(String),
    `kc_offdockterminalservices_date` Nullable(Date),
    `kc_fullname` Nullable(String),
    `donotbulkemail` Nullable(Bool),
    `rn_lastsalesorderdate_state` Nullable(Integer),
    `kc_fullnameeng` Nullable(String),
    `kc_quantityinterview` Nullable(Integer),
    `rn_isnumber` Nullable(Bool),
    `address2_composite` Nullable(String),
    `kc_offdockterminalservices` Nullable(Integer),
    `address1_addressid` Nullable(String),
    `participatesinworkflow` Nullable(Bool),
    `statecode` Nullable(Integer),
    `address2_addressid` Nullable(String),
    `kc_lastinterviewdate_date` Nullable(Date),
    `kc_portservices_date` Nullable(Date),
    `shippingmethodcode` Nullable(Integer),
    `opendeals_date` Nullable(Date),
    `openrevenue_state` Nullable(String),
    `rn_monitoringdate` Nullable(Date),
    `telephone3` Nullable(String),
    `openrevenue` Nullable(String),
    `address2_longitude` Nullable(String),
    `address1_longitude` Nullable(String),
    `emailaddress2` Nullable(String),
    `address1_country` Nullable(String),
    `rn_dokey` Nullable(String),
    `lastusedincampaign` Nullable(String),
    `address1_postofficebox` Nullable(String),
    `_modifiedonbehalfby_value` Nullable(String),
    `preferredappointmenttimecode` Nullable(String),
    `timespentbymeonemailandmeetings` Nullable(String),
    `address2_name` Nullable(String),
    `address2_upszone` Nullable(String),
    `primarysatoriid` Nullable(String),
    `entityimage_url` Nullable(String),
    `timezoneruleversionnumber` Nullable(Integer),
    `kc_customerstatuscode` Nullable(Integer),
    `c4crm_guiduktorganisation` Nullable(String),
    `address1_stateorprovince` Nullable(String),
    `_slaid_value` Nullable(String),
    `kc_guiduktpayer` Nullable(String),
    `address2_city` Nullable(String),
    `address1_upszone` Nullable(String),
    `stockexchange` Nullable(String),
    `entityimage` Nullable(String),
    `_preferredserviceid_value` Nullable(String),
    `_masterid_value` Nullable(String),
    `address2_latitude` Nullable(String),
    `address2_utcoffset` Nullable(String),
    `telephone2` Nullable(String),
    `paymenttermscode` Nullable(String),
    `_territoryid_value` Nullable(String),
    `_modifiedbyexternalparty_value` Nullable(String),
    `entityimageid` Nullable(String),
    `kc_guiduktline` Nullable(String),
    `_owningteam_value` Nullable(String),
    `fax` Nullable(String),
    `stageid` Nullable(String),
    `utcconversiontimezonecode` Nullable(String),
    `marketcap_base` Nullable(String),
    `onholdtime` Nullable(String),
    `address1_primarycontactname` Nullable(String),
    `yominame` Nullable(String),
    `_defaultpricelevelid_value` Nullable(String),
    `ownershipcode` Nullable(String),
    `address2_telephone2` Nullable(String),
    `address2_line3` Nullable(String),
    `_createdonbehalfby_value` Nullable(String),
    `kc_productdescription` Nullable(String),
    `_createdbyexternalparty_value` Nullable(String),
    `rn_datetransfersupport` Nullable(Date),
    `kc_inn` Nullable(String),
    `kc_guiduktclient` Nullable(String),
    `overriddencreatedon` Nullable(String),
    `address1_utcoffset` Nullable(String),
    `primarytwitterid` Nullable(String),
    `ftpsiteurl` Nullable(String),
    `sic` Nullable(String),
    `address1_telephone2` Nullable(String),
    `tickersymbol` Nullable(String),
    `rn_lastsalesorderdate` Nullable(Date),
    `address1_line2` Nullable(String),
    `numberofemployees` Nullable(String),
    `kc_industrycode` Nullable(Integer),
    `aging60_base` Nullable(String),
    `revenue_base` Nullable(Decimal128(19)),
    `openrevenue_base` Nullable(String),
    `industrycode` Nullable(String),
    `address2_telephone3` Nullable(String),
    `address1_line3` Nullable(String),
    `address1_latitude` Nullable(String),
    `address1_telephone1` Nullable(String),
    `accountnumber` Nullable(String),
    `entityimage_timestamp` Nullable(Integer),
    `_preferredsystemuserid_value` Nullable(String),
    `kc_guidisrclient` Nullable(String),
    `address2_postalcode` Nullable(String),
    `kc_guidisrorganisation` Nullable(String),
    `preferredappointmentdaycode` Nullable(String),
    `kc_kpp` Nullable(String),
    `processid` Nullable(String),
    `creditlimit_base` Nullable(String),
    `address2_stateorprovince` Nullable(String),
    `_kc_managerretentionid_value` Nullable(String),
    `kc_rate` Nullable(String),
    `emailaddress3` Nullable(String),
    `importsequencenumber` Nullable(Integer),
    `_slainvokedid_value` Nullable(String),
    `aging90` Nullable(String),
    `sharesoutstanding` Nullable(String),
    `opendeals_state` Nullable(String),
    `kc_ogrn` Nullable(String),
    `address1_shippingmethodcode` Nullable(Integer),
    `kc_fixingmanagerdate` Nullable(Date),
    `address2_county` Nullable(String),
    `description` Nullable(String),
    `kc_guidisrpayer` Nullable(String),
    `aging60` Nullable(String),
    `marketcap` Nullable(String),
    `accountcategorycode` Nullable(String),
    `aging30_base` Nullable(String),
    `address1_name` Nullable(String),
    `opendeals` Nullable(String),
    `aging30` Nullable(String),
    `address1_addresstypecode` Nullable(Integer),
    `address1_fax` Nullable(String),
    `traversedpath` Nullable(String),
    `_parentaccountid_value` Nullable(String),
    `address1_freighttermscode` Nullable(String),
    `address2_telephone1` Nullable(String),
    `address1_telephone3` Nullable(String),
    `kc_guiduktorganisation` Nullable(String),
    `address1_postalcode` Nullable(String),
    `_preferredequipmentid_value` Nullable(String),
    `rn_status` Nullable(Integer),
    `kc_lastinterviewdate` Nullable(Date),
    `address2_fax` Nullable(String),
    `lastonholdtime` Nullable(String),
    `kc_okpo` Nullable(String),
    `customertypecode` Nullable(String),
    `_kc_whobroughtid_value` Nullable(String),
    `kc_firstsalesorderdate` Nullable(Date),
    `creditlimit` Nullable(String),
    `aging90_base` Nullable(String),
    `address2_country` Nullable(String),
    `address1_county` Nullable(String),
    `address2_line2` Nullable(String),
    `revenue` Nullable(String),
    `rn_uid` Nullable(String),
    `address2_primarycontactname` Nullable(String),
    `address2_postofficebox` Nullable(String),
    `address1_city` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;