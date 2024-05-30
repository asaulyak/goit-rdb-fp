select icn.*,
       MAKEDATE(icn.year, 1)                                 as start_of_year,
       curdate()                                             as now,
       timestampdiff(year, MAKEDATE(icn.year, 1), curdate()) as years_ago
from infectious_cases_normalized icn;
