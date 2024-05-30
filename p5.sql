
drop function if exists diff_years;

delimiter //

create function diff_years(year year)
    returns int
    deterministic
    contains sql
begin
    return (select timestampdiff(year, MAKEDATE(year, 1), curdate()));
end //

delimiter ;


select icn.id, icn.year, diff_years(icn.year)
from infectious_cases_normalized icn;


