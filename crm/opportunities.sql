CREATE TABLE IF NOT EXISTS crm.opportunities
    (
    `@odata.etag` Nullable(String),
    `kc_directioncode` Nullable(Integer),
    `prioritycode` Nullable(Integer),
    `completeinternalreview` Nullable(Bool),
    `stepname` Nullable(String),
    `rn_lastactivitydate` Nullable(DateTime),
    `filedebrief` Nullable(Bool),
    `kc_guidukt` Nullable(String),
    `confirminterest` Nullable(Bool),
    `captureproposalfeedback` Nullable(Bool),
    `exchangerate` Nullable(Decimal128(19)),
    `opportunityid` Nullable(String),
    `_parentcontactid_value` Nullable(String),
    `identifycompetitors` Nullable(Bool),
    `_parentaccountid_value` Nullable(String),
    `name` Nullable(String),
    `decisionmaker` Nullable(Bool),
    `kc_sendtoukt` Nullable(Bool),
    `isrevenuesystemcalculated` Nullable(Bool),
    `_transactioncurrencyid_value` Nullable(String),
    `kc_potencialprofitperunit` Nullable(Decimal128(19)),
    `_owninguser_value` Nullable(String),
    `totalamount` Nullable(Decimal128(19)),
    `presentproposal` Nullable(Bool),
    `createdon` Nullable(DateTime),
    `kc_potencialteu` Nullable(Integer),
    `_ownerid_value` Nullable(String),
    `sendthankyounote` Nullable(Bool),
    `identifycustomercontacts` Nullable(Bool),
    `stageid` Nullable(String),
    `traversedpath` Nullable(String),
    `rn_lastactivitydate_date` Nullable(DateTime),
    `evaluatefit` Nullable(Bool),
    `totalamountlessfreight` Nullable(Decimal128(19)),
    `kc_potencialamountwithvat` Nullable(Decimal128(19)),
    `totallineitemdiscountamount` Nullable(Decimal128(19)),
    `totalamountlessfreight_base` Nullable(Decimal128(19)),
    `totaldiscountamount` Nullable(Decimal128(19)),
    `processid` Nullable(String),
    `statuscode` Nullable(Integer),
    `kc_potencialamount` Nullable(Decimal128(19)),
    `totaltax_base` Nullable(Decimal128(19)),
    `totallineitemamount_base` Nullable(Decimal128(19)),
    `totalamount_base` Nullable(Decimal128(19)),
    `developproposal` Nullable(Bool),
    `versionnumber` Integer,
    `description` Nullable(String),
    `modifiedon` Nullable(DateTime),
    `resolvefeedback` Nullable(Bool),
    `totaltax` Nullable(Decimal128(19)),
    `totaldiscountamount_base` Nullable(Decimal128(19)),
    `rn_lastactivitydate_state` Nullable(Integer),
    `_modifiedby_value` Nullable(String),
    `presentfinalproposal` Nullable(Bool),
    `_createdby_value` Nullable(String),
    `pricingerrorcode` Nullable(Integer),
    `salesstagecode` Nullable(Integer),
    `totallineitemdiscountamount_base` Nullable(Decimal128(19)),
    `identifypursuitteam` Nullable(Bool),
    `participatesinworkflow` Nullable(Bool),
    `statecode` Nullable(Integer),
    `_owningbusinessunit_value` Nullable(String),
    `pursuitdecision` Nullable(Bool),
    `opportunityratingcode` Nullable(Integer),
    `_customerid_value` Nullable(String),
    `totallineitemamount` Nullable(Decimal128(19)),
    `completefinalproposal` Nullable(Bool),
    `schedulefollowup_prospect` Nullable(String),
    `kc_loststatuscode` Nullable(Integer),
    `actualvalue` Nullable(String),
    `freightamount` Nullable(String),
    `kc_projectnumber` Nullable(String),
    `timezoneruleversionnumber` Nullable(Integer),
    `utcconversiontimezonecode` Nullable(String),
    `rn_paymentrate` Nullable(String),
    `rn_initiatives` Nullable(String),
    `freightamount_base` Nullable(String),
    `timespentbymeonemailandmeetings` Nullable(String),
    `salesstage` Nullable(Integer),
    `actualclosedate` Nullable(DateTime),
    `actualvalue_base` Nullable(String),
    `quotecomments` Nullable(String),
    `kc_reason` Nullable(String),
    `_owningteam_value` Nullable(String),
    `_slainvokedid_value` Nullable(String),
    `discountamount` Nullable(String),
    `_pricelevelid_value` Nullable(String),
    `budgetamount` Nullable(String),
    `closeprobability` Nullable(String),
    `budgetstatus` Nullable(String),
    `estimatedvalue_base` Nullable(Decimal128(19)),
    `estimatedclosedate` Nullable(DateTime),
    `need` Nullable(String),
    `lastonholdtime` Nullable(String),
    `_contactid_value` Nullable(String),
    `rn_accounting_system` Nullable(Integer),
    `importsequencenumber` Nullable(String),
    `_modifiedonbehalfby_value` Nullable(String),
    `_originatingleadid_value` Nullable(String),
    `kc_datenexttender` Nullable(DateTime),
    `purchaseprocess` Nullable(String),
    `stepid` Nullable(String),
    `onholdtime` Nullable(String),
    `discountpercentage` Nullable(String),
    `proposedsolution` Nullable(String),
    `schedulefollowup_qualify` Nullable(String),
    `customerneed` Nullable(String),
    `overriddencreatedon` Nullable(String),
    `_accountid_value` Nullable(String),
    `finaldecisiondate` Nullable(String),
    `estimatedvalue` Nullable(Decimal128(19)),
    `_campaignid_value` Nullable(String),
    `kc_plandateapplication` Nullable(String),
    `_slaid_value` Nullable(String),
    `discountamount_base` Nullable(String),
    `kc_guidisr` Nullable(String),
    `purchasetimeframe` Nullable(String),
    `budgetamount_base` Nullable(String),
    `qualificationcomments` Nullable(String),
    `_createdonbehalfby_value` Nullable(String),
    `currentsituation` Nullable(String),
    `customerpainpoints` Nullable(String),
    `scheduleproposalmeeting` Nullable(String),
    `initialcommunication` Nullable(String),
    `timeline` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;