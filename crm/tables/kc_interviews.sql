CREATE TABLE IF NOT EXISTS crm.kc_interviews
    (
    `odata.etag` Nullable(String),
    `kc_customsservices` Nullable(Bigint),
    `kc_interviewformcode` Nullable(Bigint),
    `kc_question3` Nullable(String),
    `kc_question2` Nullable(String),
    `kc_question1` Nullable(String),
    `kc_question7` Nullable(String),
    `kc_question6` Nullable(String),
    `kc_question5` Nullable(String),
    `kc_question4` Nullable(String),
    `statecode` Nullable(Bigint),
    `kc_answer11` Nullable(String),
    `_kc_managerretentionid_value` Nullable(String),
    `kc_customerstatuscode` Nullable(Bigint),
    `kc_signofrelationship` Nullable(Bigint),
    `_kc_accountid_value` Nullable(String),
    `_owningbusinessunit_value` Nullable(String),
    `_owninguser_value` Nullable(String),
    `_kc_businessunitid_value` Nullable(String),
    `_kc_contactid_value` Nullable(String),
    `kc_train` Nullable(Bigint),
    `kc_interviewid` Nullable(String),
    `_ownerid_value` Nullable(String),
    `kc_jobtitle` Nullable(String),
    `kc_portservices` Nullable(Bigint),
    `kc_ratingcode` Nullable(Bigint),
    `kc_other` Nullable(Bigint),
    `kc_auto` Nullable(Bigint),
    `timezoneruleversionnumber` Nullable(Bigint),
    `statuscode` Nullable(Bigint),
    `createdon` Nullable(Date),
    `kc_inn` Nullable(Bigint),
    `versionnumber` Bigint,
    `modifiedon` Nullable(Date),
    `kc_internationalcarriage` Nullable(Bigint),
    `kc_feedback` Nullable(Bool),
    `kc_interviewdate` Nullable(Date),
    `kc_name` Nullable(String),
    `kc_offdockterminalservices` Nullable(Bigint),
    `kc_email` Nullable(String),
    `kc_phonenumber` Nullable(String),
    `kc_question11` Nullable(String),
    `kc_needforcorrectiveaction` Nullable(Bool),
    `_modifiedby_value` Nullable(String),
    `_createdby_value` Nullable(String),
    `kc_formpassedtohead` Nullable(Bool),
    `kc_needreinterview` Nullable(Bool),
    `kc_typecustomercode` Nullable(Bigint),
    `kc_interviewtypecode` Nullable(Bigint),
    `kc_answer1` Nullable(String),
    `kc_answer3` Nullable(String),
    `kc_answer2` Nullable(String),
    `kc_answer5` Nullable(String),
    `kc_answer4` Nullable(String),
    `kc_answer7` Nullable(String),
    `kc_answer6` Nullable(String),
    `_kc_userid_value` Nullable(String),
    `kc_comment10` Nullable(String),
    `kc_answer8` Nullable(String),
    `kc_comment8` Nullable(String),
    `kc_workphonenumber` Nullable(String),
    `kc_question10` Nullable(String),
    `kc_comment7` Nullable(String),
    `_owningteam_value` Nullable(String),
    `kc_comment12` Nullable(String),
    `kc_question12` Nullable(String),
    `kc_answer9` Nullable(String),
    `kc_openingslogans` Nullable(String),
    `kc_comment6` Nullable(String),
    `_kc_campaignid_value` Nullable(String),
    `kc_answer12` Nullable(String),
    `kc_comment11` Nullable(String),
    `rn_comment14` Nullable(String),
    `rn_question14` Nullable(String),
    `kc_interviewtype` Nullable(Bigint),
    `kc_comment2` Nullable(String),
    `kc_comment3` Nullable(String),
    `overriddencreatedon` Nullable(String),
    `_rn_incident_value` Nullable(String),
    `kc_answer10` Nullable(String),
    `kc_comment1` Nullable(String),
    `kc_comment5` Nullable(String),
    `kc_description` Nullable(String),
    `utcconversiontimezonecode` Nullable(String),
    `_createdonbehalfby_value` Nullable(String),
    `kc_question8` Nullable(String),
    `kc_comment4` Nullable(String),
    `importsequencenumber` Nullable(String),
    `kc_finalslogans` Nullable(String),
    `kc_whenneedreinterview` Nullable(String),
    `kc_comment9` Nullable(String),
    `rn_answer14` Nullable(String),
    `kc_question9` Nullable(String),
    `_modifiedonbehalfby_value` Nullable(String),
    `updates` Nullable(String)
    )
ENGINE = MergeTree()
ORDER BY versionnumber;