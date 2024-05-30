create table regions
(
    id     int auto_increment primary key,
    entity varchar(255) not null,
    code   varchar(16)  null
);

create table infectious_cases_normalized
(
    id                   int auto_increment primary key,
    year                 year   not null,
    number_yaws          double null,
    polio_cases          int    null,
    cases_guinea_worm    int    null,
    number_rabies        double null,
    number_malaria       double null,
    number_hiv           double null,
    number_tuberculosis  double null,
    number_smallpox      double null,
    number_cholera_cases double null,
    region_id            int    not null,
    constraint infectious_cases_normalized_regions_id_fk
        foreign key (region_id) references regions (id)
);
