CREATE TABLE IF NOT EXISTS crm.leads
    (
    `odata.etag` Nullable(String),
    `confirminterest` Nullable(Bool),
    `statecode` Nullable(Bigint),
    `statuscode` Nullable(Bigint),
    `address2_shippingmethodcode` Nullable(Bigint),
    `address1_addressid` Nullable(String),
    `leadqualitycode` Nullable(Bigint),
    `donotbulkemail` Nullable(Bool),
    `salesstagecode` Nullable(Bigint),
    `donotsendmm` Nullable(Bool),
    `leadid` Nullable(String),
    `url` Nullable(String) DEFAULT concat('https://crm.ruscon.biz/Ruscon/main.aspx?etc=4&id=', toString(leadid), '&pagetype=entityrecord'),
    `emailaddress1` Nullable(String),
    `_owningteam_value` Nullable(String),
    `fullname` Nullable(String),
    `address1_addresstypecode` Nullable(Bigint),
    `subject` Nullable(String),
    `donotpostalmail` Nullable(Bool),
    `_ownerid_value` Nullable(String),
    `modifiedon` Nullable(String),
    `stageid` Nullable(String),
    `donotemail` Nullable(Bool),
    `donotphone` Nullable(Bool),
    `address2_addresstypecode` Nullable(Bigint),
    `kc_convertingemail` Nullable(Bool),
    `versionnumber` Integer,
    `createdon` Nullable(Date),
    `counter_leads` Integer DEFAULT if(toYear(createdon) is null, 0, 1),
    `prioritycode` Nullable(Bigint),
    `traversedpath` Nullable(String),
    `address1_shippingmethodcode` Nullable(Bigint),
    `description` Nullable(String),
    `leadsourcecode` Nullable(Bigint),
    `_modifiedby_value` Nullable(String),
    `decisionmaker` Nullable(Bool),
    `preferredcontactmethodcode` Nullable(Bigint),
    `_owningbusinessunit_value` Nullable(String),
    `lastname` Nullable(String),
    `yomifullname` Nullable(String),
    `donotfax` Nullable(Bool),
    `merged` Nullable(Bool),
    `_createdby_value` Nullable(String),
    `processid` Nullable(String),
    `address2_addressid` Nullable(String),
    `evaluatefit` Nullable(Bool),
    `participatesinworkflow` Nullable(Bool),
    `address1_name` Nullable(String),
    `rn_tenderorderdate` Nullable(String),
    `address1_county` Nullable(String),
    `address1_telephone2` Nullable(String),
    `address1_city` Nullable(String),
    `address1_telephone1` Nullable(String),
    `utcconversiontimezonecode` Nullable(String),
    `address2_country` Nullable(String),
    `address2_postofficebox` Nullable(String),
    `address2_city` Nullable(String),
    `budgetamount_base` Nullable(String),
    `estimatedvalue` Nullable(String),
    `lastusedincampaign` Nullable(String),
    `rn_tenderorderprice_base` Nullable(String),
    `budgetstatus` Nullable(String),
    `address1_line3` Nullable(String),
    `estimatedclosedate` Nullable(String),
    `rn_deadline` Nullable(String),
    `salesstage` Nullable(String),
    `initialcommunication` Nullable(String),
    `rn_number` Nullable(String),
    `followemail` Nullable(Bool),
    `rn_tenderresult` Nullable(String),
    `estimatedamount_base` Nullable(String),
    `budgetamount` Nullable(String),
    `rn_suspectspam` Nullable(String),
    `industrycode` Nullable(String),
    `telephone3` Nullable(String),
    `address1_country` Nullable(String),
    `middlename` Nullable(String),
    `exchangerate` Nullable(Decimal128(19)),
    `overriddencreatedon` Nullable(String),
    `mobilephone` Nullable(String),
    `fax` Nullable(String),
    `yomilastname` Nullable(String),
    `_accountid_value` Nullable(String),
    `sic` Nullable(String),
    `entityimageid` Nullable(String),
    `address1_composite` Nullable(String),
    `need` Nullable(String),
    `_owninguser_value` Nullable(String),
	`status_lead` Bool DEFAULT if(_owninguser_value is null, true, false),
	`status_lead2` String DEFAULT if(status_lead, 'Нераспределенный', 'Распределенный'),
    `address1_upszone` Nullable(String),
    `purchaseprocess` Nullable(String),
    `_createdonbehalfby_value` Nullable(String),
    `address1_postalcode` Nullable(Bigint),
    `_parentcontactid_value` Nullable(String),
    `entityimage` Nullable(String),
    `yomifirstname` Nullable(String),
    `address1_stateorprovince` Nullable(String),
    `timespentbymeonemailandmeetings` Nullable(String),
    `_customerid_value` Nullable(String),
    `address1_postofficebox` Nullable(String),
    `entityimage_url` Nullable(String),
    `address2_county` Nullable(String),
    `_originatingcaseid_value` Nullable(String),
    `_contactid_value` Nullable(String),
    `telephone2` Nullable(String),
    `address2_line3` Nullable(String),
    `address2_line1` Nullable(String),
    `salutation` Nullable(String),
    `numberofemployees` Nullable(String),
    `rn_tenderorderprice` Nullable(String),
    `kc_directioncode` Nullable(Bigint),
    `companyname` Nullable(String),
    `_qualifyingopportunityid_value` Nullable(String),
    `_slaid_value` Nullable(String),
    `firstname` Nullable(String),
    `address1_latitude` Nullable(String),
    `schedulefollowup_qualify` Nullable(String),
    `address2_latitude` Nullable(String),
    `address1_line2` Nullable(String),
    `_masterid_value` Nullable(String),
    `address2_fax` Nullable(String),
    `rn_tenderconclusion` Nullable(String),
    `address2_telephone1` Nullable(String),
    `address1_telephone3` Nullable(String),
    `purchasetimeframe` Nullable(String),
    `address2_line2` Nullable(String),
    `address2_upszone` Nullable(String),
    `rn_frequencyoftender` Nullable(String),
    `websiteurl` Nullable(String),
    `address2_postalcode` Nullable(String),
    `rn_tendertype` Nullable(String),
    `address2_name` Nullable(String),
    `pager` Nullable(String),
    `kc_saleschannelcode` Nullable(Bigint),
    `rn_spamcheckdate` Nullable(String),
    `address2_telephone2` Nullable(String),
    `entityimage_timestamp` Nullable(String),
    `_campaignid_value` Nullable(String),
    `address1_fax` Nullable(String),
    `yomimiddlename` Nullable(String),
    `jobtitle` Nullable(String),
    `timezoneruleversionnumber` Nullable(String),
    `emailaddress2` Nullable(String),
    `emailaddress3` Nullable(String),
    `lastonholdtime` Nullable(String),
    `_relatedobjectid_value` Nullable(String),
    `_modifiedonbehalfby_value` Nullable(String),
    `address1_utcoffset` Nullable(String),
    `_transactioncurrencyid_value` Nullable(String),
    `qualificationcomments` Nullable(String),
    `onholdtime` Nullable(String),
    `revenue` Nullable(String),
    `address2_stateorprovince` Nullable(String),
    `estimatedamount` Nullable(String),
    `kc_industrycode` Nullable(Bigint),
    `_slainvokedid_value` Nullable(String),
    `address1_longitude` Nullable(String),
    `address2_utcoffset` Nullable(String),
    `address2_composite` Nullable(String),
    `schedulefollowup_prospect` Nullable(String),
    `yomicompanyname` Nullable(String),
    `rn_linktoprocedure` Nullable(String),
    `telephone1` Nullable(String),
    `address2_telephone3` Nullable(String),
    `_parentaccountid_value` Nullable(String),
    `address2_longitude` Nullable(String),
    `_rn_tenderplatform_value` Nullable(String),
    `kc_isoverdue` Nullable(Bool),
    `address1_line1` Nullable(String),
    `importsequencenumber` Nullable(String),
    `revenue_base` Nullable(String),
    `updates` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;