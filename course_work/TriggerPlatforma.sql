-- Триггеры

CREATE DEFINER=`root`@`localhost` TRIGGER `tg_after_insert_education` AFTER INSERT ON `education` FOR EACH ROW BEGIN
UPDATE university SET university.count = (SELECT COUNT(*) FROM education WHERE university.id = education.university);
UPDATE section SET section.detail = (SELECT COUNT(*) FROM education WHERE education.status = 'Belum Lulus') WHERE section.id = 'home-main-counter-1';
END

CREATE DEFINER=`root`@`localhost` TRIGGER `tg_after_update_education` AFTER UPDATE ON `education` FOR EACH ROW BEGIN
UPDATE university SET university.count = (SELECT COUNT(*) FROM education WHERE university.id = education.university);
UPDATE tb_m_section SET section.detail = (SELECT COUNT(*) FROM education WHERE education.status = 'Belum Lulus') WHERE section.id = 'home-main-counter-1';
END

CREATE DEFINER=`root`@`localhost` TRIGGER `tg_before_insert_event` BEFORE INSERT ON `event` FOR EACH ROW BEGIN
SET NEW.id = concat(new.program ,'-',(SELECT toRoman(DATE_FORMAT(new.start_datetime, '%m'))),'-',(SELECT toRoman(DATE_FORMAT(new.start_datetime, '%y'))),'-',(SELECT Lpad((COUNT(id)+1),5,"0") from event));
END

CREATE DEFINER=`root`@`localhost` TRIGGER `tg_after_insert_event` AFTER INSERT ON `event` FOR EACH ROW UPDATE training SET training.status = 1 WHERE training.id IN (SELECT e.program
FROM program p 
JOIN event e on (p.id=e.program)
WHERE e.start_datetime >= CURRENT_TIMESTAMP)