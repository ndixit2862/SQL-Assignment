CREATE DEFINER=`root`@`localhost` PROCEDURE `credit_proc`(cus_num integer)
BEGIN
 declare p_stat varchar(20);
    declare climit integer;
    declare new_climit integer;
    declare cus_num integer;

    declare continue handler for sqlstate '45000'
begin
        update customers set creditlimit = new_climit where customernumber = cus_num;
 end;  
 select new_function(cus_num), creditlimit into p_stat, climit from customers where customernumber = cus_num;

if climit < 100000 and p_stat = "platinum"  then
    set new_climit = 100000;
    signal sqlstate '45000';
elseif climit > 60000 and p_stat = "silver" then
    set new_climit = 60000;
    signal sqlstate '45000';
end if;
END