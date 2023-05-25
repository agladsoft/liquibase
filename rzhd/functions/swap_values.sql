CREATE OR REPLACE FUNCTION swap_values AS (attendee_by_puzt, attendee_according_to_egrpo, default_value) ->
multiIf(
    toInt64OrNull(attendee_by_puzt) is not null,
    default_value,
    (attendee_by_puzt is null or attendee_by_puzt = 'неизвестен' or attendee_by_puzt = 'НЕИЗВЕСТЕН')
        and (attendee_according_to_egrpo is null
        or attendee_according_to_egrpo = 'неизвестен ОКПО' or attendee_according_to_egrpo = 'неизвестен'
        or toInt64OrNull(attendee_according_to_egrpo) is not null),
    default_value,
    attendee_by_puzt = 'НЕИЗВЕСТЕН' and toInt64OrNull(attendee_according_to_egrpo) is not null,
    default_value,
    attendee_by_puzt = 'неизвестен' and toInt64OrNull(attendee_according_to_egrpo) is not null,
    default_value,
    attendee_by_puzt = 'НЕИЗВЕСТЕН' and not (attendee_according_to_egrpo is null
        or attendee_according_to_egrpo = 'неизвестен ОКПО' or attendee_according_to_egrpo = 'неизвестен'
        or toInt64OrNull(attendee_according_to_egrpo) is not null),
    attendee_according_to_egrpo,
    attendee_by_puzt = 'неизвестен' and not (attendee_according_to_egrpo is null
        or attendee_according_to_egrpo = 'неизвестен ОКПО' or attendee_according_to_egrpo = 'неизвестен'
        or toInt64OrNull(attendee_according_to_egrpo) is not null),
    attendee_according_to_egrpo,
    attendee_by_puzt is not null or attendee_by_puzt != 'НЕИЗВЕСТЕН' or attendee_by_puzt != 'неизвестен',
    attendee_by_puzt,
    attendee_according_to_egrpo
);
