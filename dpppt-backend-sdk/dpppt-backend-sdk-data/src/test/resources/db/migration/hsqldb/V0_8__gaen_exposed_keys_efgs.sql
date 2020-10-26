ALTER TABLE t_gaen_exposed
    ADD COLUMN country_origin   CHAR(2);
ALTER TABLE t_gaen_exposed
    ADD COLUMN report_type      SMALLINT;
ALTER TABLE t_gaen_exposed
    ADD COLUMN days_since_onset SMALLINT;
ALTER TABLE t_gaen_exposed
    ADD COLUMN efgs_sharing     BOOLEAN;

CREATE INDEX in_gaen_exposed_country_sharing_received
    ON t_gaen_exposed(country_origin, efgs_sharing, received_at)
;
