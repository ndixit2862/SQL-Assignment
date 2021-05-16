CREATE DEFINER=`root`@`localhost` TRIGGER `movies_BEFORE_DELETE` BEFORE DELETE ON `movies` FOR EACH ROW BEGIN
DELETE from rentals where movieid = old.id;
END