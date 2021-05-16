CREATE DEFINER=`root`@`localhost` FUNCTION `new_function`(cus_num integer) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
declare status varchar(20);
declare amt integer;
select sum(amount) into amt from payments where customernumber=cus_num;
if (amt<25000) then
set status="silver";
elseif (amt between 25000 and 50000) then
set status="gold";
else 
set status="platinum";
end if;
RETURN status;
END