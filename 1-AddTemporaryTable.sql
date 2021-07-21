
-- 1 create intermediary table
IF EXISTS(SELECT * FROM sys.objects where name = '@OPRQ_RESULT')
BEGIN
DROP TABLE [@OPRQ_RESULT];

CREATE TABLE [@OPRQ_RESULT] (
DocEntry INT NOT NULL, 
U_datahora datetime NULL,
);
insert into [@OPRQ_RESULT] select DocEntry, getdate() from OPRQ where CANCELED = 'N';
END

ELSE 

BEGIN
CREATE TABLE [@OPRQ_RESULT] (
DocEntry INT NOT NULL, 
U_datahora datetime NULL,
);
insert into [@OPRQ_RESULT] select DocEntry, getdate() from OPRQ where CANCELED = 'N';
END