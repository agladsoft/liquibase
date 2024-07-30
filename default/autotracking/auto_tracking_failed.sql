CREATE OR REPLACE VIEW default.auto_tracking_failed
AS SELECT
        uuid as uuid,
        month_parsed_on as month,
        year_parsed_on as year,
        'import' AS direction,
        terminal as terminal,
        line as line,
        ship_name as ship_name,
        voyage as voyage,
        shipment_date as shipment_date,
        consignment as consignment,
        container_number as container_number,
        container_size as container_size,
        container_type as container_type,
        teu as teu,
        container_count as container_count,
        goods_name as goods_name,
        tnved as tnved,
        goods_weight_with_package as goods_weight_with_package,
        shipper_name as shipper_name,
        consignee_name as consignee_name,
        expeditor as expeditor,
        tracking_country as tracking_country,
        tracking_seaport as tracking_seaport,
        true as enforce_auto_tracking,
        is_auto_tracking as is_auto_tracking,
        is_auto_tracking_ok as is_auto_tracking_ok,
        original_file_name as original_file_name,
        original_file_parsed_on as original_file_parsed_on
    FROM import WHERE (is_auto_tracking = true) AND (is_auto_tracking_ok = false) and tracking_seaport is NULL
    ORDER BY consignment
    UNION ALL
   SELECT
        uuid as uuid,
        month as month,
        year as year,
        direction as direction,
        terminal as terminal,
        line as line,
        ship_name as ship_name,
        voyage as voyage,
        shipment_date as shipment_date,
        consignment as consignment,
        container_number as container_number,
        container_size as container_size,
        container_type as container_type,
        teu as teu,
        container_count as container_count,
        goods_name as goods_name,
        tnved as tnved,
        goods_weight_with_package as goods_weight_with_package,
        shipper_name as shipper_name,
        consignee_name as consignee_name,
        expeditor as expeditor,
        consignee_country as tracking_country,
        tracking_seaport as tracking_seaport,
        true as enforce_auto_tracking,
        is_auto_tracking as is_auto_tracking,
        is_auto_tracking_ok as is_auto_tracking_ok,
        original_file_name as original_file_name,
        original_file_parsed_on as original_file_parsed_on
    FROM import_vsk WHERE (is_auto_tracking = true) AND (is_auto_tracking_ok = false) and tracking_seaport is NULL AND direction != 'cabotage'
    UNION ALL
   SELECT
        uuid as uuid,
        month as month,
        year as year,
        direction as direction,
        terminal as terminal,
        line as line,
        ship_name as ship_name,
        voyage as voyage,
        shipment_date as shipment_date,
        consignment as consignment,
        container_number as container_number,
        container_size as container_size,
        container_type as container_type,
        teu as teu,
        container_count as container_count,
        goods_name as goods_name,
        tnved as tnved,
        goods_weight_with_package as goods_weight_with_package,
        shipper_name as shipper_name,
        consignee_name as consignee_name,
        expeditor as expeditor,
        consignee_country as tracking_country,
        tracking_seaport as tracking_seaport,
        true as enforce_auto_tracking,
        is_auto_tracking as is_auto_tracking,
        is_auto_tracking_ok as is_auto_tracking_ok,
        original_file_name as original_file_name,
        original_file_parsed_on as original_file_parsed_on
    FROM import_nw WHERE (is_auto_tracking = true) AND (is_auto_tracking_ok = false) and tracking_seaport is NULL
    UNION ALL
   SELECT
        uuid as uuid,
        month_parsed_on as month,
        year_parsed_on as year,
        'export' AS direction,
        terminal as terminal,
        line as line,
        ship_name as ship_name,
        voyage as voyage,
        shipment_date as shipment_date,
        consignment as consignment,
        container_number as container_number,
        container_size as container_size,
        container_type as container_type,
        teu as teu,
        container_count as container_count,
        goods_name as goods_name,
        tnved as tnved,
        goods_weight_with_package as goods_weight_with_package,
        shipper_name as shipper_name,
        consignee_name as consignee_name,
        expeditor as expeditor,
        tracking_country as tracking_country,
        tracking_seaport as tracking_seaport,
        true as enforce_auto_tracking,
        is_auto_tracking as is_auto_tracking,
        is_auto_tracking_ok as is_auto_tracking_ok,
        original_file_name as original_file_name,
        original_file_parsed_on as original_file_parsed_on
    FROM export WHERE (is_auto_tracking = true) AND (is_auto_tracking_ok = false) and tracking_seaport is NULL
    UNION ALL
   SELECT
        uuid as uuid,
        month as month,
        year as year,
        direction as direction,
        terminal as terminal,
        line as line,
        ship_name as ship_name,
        voyage as voyage,
        shipment_date as shipment_date,
        booking as consignment,
        container_number as container_number,
        container_size as container_size,
        container_type as container_type,
        teu as teu,
        container_count as container_count,
        goods_name as goods_name,
        tnved as tnved,
        goods_weight_with_package as goods_weight_with_package,
        shipper_name as shipper_name,
        consignee_name as consignee_name,
        expeditor as expeditor,
        shipper_country as tracking_country,
        tracking_seaport as tracking_seaport,
        true as enforce_auto_tracking,
        is_auto_tracking as is_auto_tracking,
        is_auto_tracking_ok as is_auto_tracking_ok,
        original_file_name as original_file_name,
        original_file_parsed_on as original_file_parsed_on
    FROM export_vsk WHERE (is_auto_tracking = true) AND (is_auto_tracking_ok = false) and tracking_seaport is NULL AND direction != 'cabotage'
    UNION ALL
   SELECT
        uuid as uuid,
        month as month,
        year as year,
        direction as direction,
        terminal as terminal,
        line as line,
        ship_name as ship_name,
        voyage as voyage,
        shipment_date as shipment_date,
        booking as consignment,
        container_number as container_number,
        container_size as container_size,
        container_type as container_type,
        teu as teu,
        container_count as container_count,
        goods_name as goods_name,
        tnved as tnved,
        goods_weight_with_package as goods_weight_with_package,
        shipper_name as shipper_name,
        consignee_name as consignee_name,
        expeditor as expeditor,
        shipper_country as tracking_country,
        tracking_seaport as tracking_seaport,
        true as enforce_auto_tracking,
        is_auto_tracking as is_auto_tracking,
        is_auto_tracking_ok as is_auto_tracking_ok,
        original_file_name as original_file_name,
        original_file_parsed_on as original_file_parsed_on
    FROM export_nw WHERE (is_auto_tracking = true) AND (is_auto_tracking_ok = false) and tracking_seaport is NULL
    ORDER BY consignment