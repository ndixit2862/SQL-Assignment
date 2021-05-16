CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(Mon varchar (3), Yr varchar (4))
BEGIN
select orderNumber, orderDate, status from orders where Mon_Year = concat (Mon,Yr);

END