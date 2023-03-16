CREATE OR REPLACE VIEW crm.leads_view
AS SELECT
    leads.`odata.etag` AS `odata.etag`,
    leads.confirminterest AS confirminterest,
    leads.statecode AS statecode,
    leads.statuscode AS statuscode,
    rl.reason_refusal AS reason_refusal,
    leads.address2_shippingmethodcode AS address2_shippingmethodcode,
    leads.address1_addressid AS address1_addressid,
    leads.leadqualitycode AS leadqualitycode,
    leads.donotbulkemail AS donotbulkemail,
    leads.salesstagecode AS salesstagecode,
    leads.donotsendmm AS donotsendmm,
    leads.leadid AS leadid,
    concat("https://crm.ruscon.biz/Ruscon/main.aspx?etc=4&id=", toString(leadid), "&pagetype=entityrecord") as url,
    leads.emailaddress1 AS emailaddress1,
    leads._owningteam_value AS _owningteam_value,
    leads.fullname AS fullname,
    leads.address1_addresstypecode AS address1_addresstypecode,
    leads.subject AS subject,
    leads.donotpostalmail AS donotpostalmail,
    leads._ownerid_value AS _ownerid_value,
    leads.modifiedon AS modifiedon,
    leads.stageid AS stageid,
    leads.donotemail AS donotemail,
    leads.donotphone AS donotphone,
    leads.address2_addresstypecode AS address2_addresstypecode,
    leads.kc_convertingemail AS kc_convertingemail,
    leads.versionnumber AS versionnumber,
    leads.createdon AS createdon,
    leads.prioritycode AS prioritycode,
    leads.traversedpath AS traversedpath,
    leads.address1_shippingmethodcode AS address1_shippingmethodcode,
    leads.description AS description,
    leads.leadsourcecode AS leadsourcecode,
    leads._modifiedby_value AS _modifiedby_value,
    leads.decisionmaker AS decisionmaker,
    leads.preferredcontactmethodcode AS preferredcontactmethodcode,
    leads._owningbusinessunit_value AS _owningbusinessunit_value,
    leads.lastname AS lastname,
    leads.yomifullname AS yomifullname,
    leads.donotfax AS donotfax,
    leads.merged AS merged,
    leads._createdby_value AS _createdby_value,
    leads.processid AS processid,
    leads.address2_addressid AS address2_addressid,
    leads.evaluatefit AS evaluatefit,
    leads.participatesinworkflow AS participatesinworkflow,
    leads.address1_name AS address1_name,
    leads.rn_tenderorderdate AS rn_tenderorderdate,
    leads.address1_county AS address1_county,
    leads.address1_telephone2 AS address1_telephone2,
    leads.address1_city AS address1_city,
    leads.address1_telephone1 AS address1_telephone1,
    leads.utcconversiontimezonecode AS utcconversiontimezonecode,
    leads.address2_country AS address2_country,
    leads.address2_postofficebox AS address2_postofficebox,
    leads.address2_city AS address2_city,
    leads.budgetamount_base AS budgetamount_base,
    leads.estimatedvalue AS estimatedvalue,
    leads.lastusedincampaign AS lastusedincampaign,
    leads.rn_tenderorderprice_base AS rn_tenderorderprice_base,
    leads.budgetstatus AS budgetstatus,
    leads.address1_line3 AS address1_line3,
    leads.estimatedclosedate AS estimatedclosedate,
    leads.rn_deadline AS rn_deadline,
    leads.salesstage AS salesstage,
    leads.initialcommunication AS initialcommunication,
    leads.followemail AS followemail,
    leads.rn_tenderresult AS rn_tenderresult,
    leads.estimatedamount_base AS estimatedamount_base,
    leads.budgetamount AS budgetamount,
    leads.rn_suspectspam AS rn_suspectspam,
    leads.industrycode AS industrycode,
    leads.telephone3 AS telephone3,
    leads.address1_country AS address1_country,
    leads.middlename AS middlename,
    leads.exchangerate AS exchangerate,
    leads.overriddencreatedon AS overriddencreatedon,
    leads.mobilephone AS mobilephone,
    leads.fax AS fax,
    leads.yomilastname AS yomilastname,
    leads._accountid_value AS _accountid_value,
    leads.sic AS sic,
    leads.entityimageid AS entityimageid,
    leads.address1_composite AS address1_composite,
    leads.need AS need,
    leads._owninguser_value AS _owninguser_value,
    leads.status_lead AS status_lead,
    if(status_lead, "Нераспределенный", "Распределенный") AS status_lead2,
    leads.address1_upszone AS address1_upszone,
    leads.purchaseprocess AS purchaseprocess,
    leads._createdonbehalfby_value AS _createdonbehalfby_value,
    leads.address1_postalcode AS address1_postalcode,
    leads._parentcontactid_value AS _parentcontactid_value,
    leads.entityimage AS entityimage,
    leads.yomifirstname AS yomifirstname,
    leads.address1_stateorprovince AS address1_stateorprovince,
    leads.timespentbymeonemailandmeetings AS timespentbymeonemailandmeetings,
    leads._customerid_value AS _customerid_value,
    leads.address1_postofficebox AS address1_postofficebox,
    leads.entityimage_url AS entityimage_url,
    leads.address2_county AS address2_county,
    leads._originatingcaseid_value AS _originatingcaseid_value,
    leads._contactid_value AS _contactid_value,
    leads.telephone2 AS telephone2,
    leads.address2_line3 AS address2_line3,
    leads.address2_line1 AS address2_line1,
    leads.salutation AS salutation,
    leads.numberofemployees AS numberofemployees,
    leads.rn_tenderorderprice AS rn_tenderorderprice,
    leads.kc_directioncode AS kc_directioncode,
    leads.companyname AS companyname,
    leads._qualifyingopportunityid_value AS _qualifyingopportunityid_value,
    leads._slaid_value AS _slaid_value,
    leads.firstname AS firstname,
    leads.address1_latitude AS address1_latitude,
    leads.schedulefollowup_qualify AS schedulefollowup_qualify,
    leads.address2_latitude AS address2_latitude,
    leads.address1_line2 AS address1_line2,
    leads._masterid_value AS _masterid_value,
    leads.address2_fax AS address2_fax,
    leads.rn_tenderconclusion AS rn_tenderconclusion,
    leads.address2_telephone1 AS address2_telephone1,
    leads.address1_telephone3 AS address1_telephone3,
    leads.purchasetimeframe AS purchasetimeframe,
    leads.address2_line2 AS address2_line2,
    leads.address2_upszone AS address2_upszone,
    leads.websiteurl AS websiteurl,
    leads.address2_postalcode AS address2_postalcode,
    leads.rn_tendertype AS rn_tendertype,
    leads.address2_name AS address2_name,
    leads.pager AS pager,
    leads.kc_saleschannelcode AS kc_saleschannelcode,
    leads.rn_spamcheckdate AS rn_spamcheckdate,
    leads.address2_telephone2 AS address2_telephone2,
    leads.entityimage_timestamp AS entityimage_timestamp,
    leads._campaignid_value AS _campaignid_value,
    leads.address1_fax AS address1_fax,
    leads.yomimiddlename AS yomimiddlename,
    leads.jobtitle AS jobtitle,
    leads.timezoneruleversionnumber AS timezoneruleversionnumber,
    leads.emailaddress2 AS emailaddress2,
    leads.emailaddress3 AS emailaddress3,
    leads.lastonholdtime AS lastonholdtime,
    leads._relatedobjectid_value AS _relatedobjectid_value,
    leads._modifiedonbehalfby_value AS _modifiedonbehalfby_value,
    leads.address1_utcoffset AS address1_utcoffset,
    leads._transactioncurrencyid_value AS _transactioncurrencyid_value,
    leads.qualificationcomments AS qualificationcomments,
    leads.onholdtime AS onholdtime,
    leads.revenue AS revenue,
    leads.address2_stateorprovince AS address2_stateorprovince,
    leads.estimatedamount AS estimatedamount,
    leads.kc_industrycode AS kc_industrycode,
    leads._slainvokedid_value AS _slainvokedid_value,
    leads.address1_longitude AS address1_longitude,
    leads.address2_utcoffset AS address2_utcoffset,
    leads.address2_composite AS address2_composite,
    leads.schedulefollowup_prospect AS schedulefollowup_prospect,
    leads.yomicompanyname AS yomicompanyname,
    leads.telephone1 AS telephone1,
    leads.address2_telephone3 AS address2_telephone3,
    leads._parentaccountid_value AS _parentaccountid_value,
    leads.address2_longitude AS address2_longitude,
    leads._rn_tenderplatform_value AS _rn_tenderplatform_value,
    leads.kc_isoverdue AS kc_isoverdue,
    leads.address1_line1 AS address1_line1,
    leads.importsequencenumber AS importsequencenumber,
    leads.revenue_base AS revenue_base,
    leads.updates AS updates
   FROM crm.leads
     LEFT JOIN crm.reference_leads AS rl ON leads.statuscode = rl.statuscode;

