CREATE DEFINER=`root`@`localhost` TRIGGER `movies_BEFORE_UPDATE` BEFORE UPDATE ON `movies` FOR EACH ROW BEGIN
UPDATE rentals SET movieid = new.id WHERE movieid = old.id;
END