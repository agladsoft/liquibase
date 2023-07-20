CREATE TABLE IF NOT EXISTS default.reference_spardeck
(

    `vessel` String,
    `operator` Nullable(String),
    `pier` Nullable(String),
    `stividor` Nullable(String),
    `ata_enter_zone` Nullable(Date),
    `atb_moor_pier` Nullable(Date),
    `atd_move_pier` Nullable(Date),
    `pol_arrive` Nullable(String),
    `next_left` Nullable(String),
    `total_volume_in` Nullable(String),
    `total_volume_out` Nullable(String),
    `comment` Nullable(String),
    `volume_in_nutep` Nullable(String),
    `volume_out_nutep` Nullable(String),
    `sign_nutep` Nullable(String),
)
ENGINE = MergeTree()
ORDER BY vessel;