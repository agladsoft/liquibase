CREATE TABLE IF NOT EXISTS rzhd.reference_organizational_legal_form
(

    `full_organizational_legal_form` String,

    `short_organizational_legal_form` Nullable(String)
)
ENGINE = MergeTree()
ORDER BY type_of_special_container;