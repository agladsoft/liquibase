CREATE TABLE IF NOT EXISTS DataCore.auto_pickup_general_report
(

    `uuid` DEFAULT generateUUIDv4(),

    `comment` Nullable(String),

    `performer` Nullable(String),

    `overpayment` Nullable(Int32),

    `totalRate` Nullable(Int32),

    `amountDowntime` Nullable(Int32),

    `rateAgreed` Nullable(Int32),

    `carrier` Nullable(String),

    `dateEmptyDelivery_fact` Nullable(Date32),

    `originalDate` Nullable(String),

    `dateEmptyDelivery_plan` Nullable(Date32),

    `dateLoading_fact` Nullable(Date32),

    `mode` Nullable(String),

    `dateDelivery_fact` Nullable(Date32),

    `containerSize` Nullable(Int32),

    `amountOverload` Nullable(Int32),

    `line` Nullable(String),

    `client` Nullable(String),

    `clientUID` Nullable(String),

    `dateReceiptEmpty_fact` Nullable(Date32),

    `department` Nullable(String),

    `dateDelivery_plan` Nullable(Date32),

    `pointDestination` Nullable(String),

    `manager` Nullable(String),

    `rateCarrier` Nullable(Int32),

    `pointDeparture` Nullable(String),

    `terminalReceivingEmpty` Nullable(String),

    `container` Nullable(String),

    `terminalDeliveryEmpty` Nullable(String),

    `dateLoading_plan` Nullable(Date32),

    `orderDirection` Nullable(String),

    `containerType` Nullable(String),

    `type` Nullable(String),

    `economy` Nullable(Int32),

    `orderNumber` Nullable(String),

    `reasonIncreasedRates` Nullable(String),

    `service` Nullable(String),

    `dateReceiptEmpty_plan` Nullable(Date32),

    `amountAddExpense` Nullable(Int32),

    `original_file_parsed_on` Nullable(String),

    `is_obsolete` Nullable(Bool),

    `is_obsolete_date` Nullable(String)
)
ENGINE = MergeTree
ORDER BY uuid