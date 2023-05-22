

PRINT 'Hello World!'

DECLARE @myVariable INT
SET @myVariable = 6
PRINT @myVariable

DECLARE @var1 INT, @var2 INT
SET @var1 = 3
SET @var2 = 5
PRINT 'I have ' + CONVERT(VARCHAR(50),@var1) + ' dollars'

--Database and SQL Basics Tutorial - Part 8
DECLARE @var1 INT, @var2 INT
SET @var1 = 4
SET @var2 = 5
PRINT 'Variable 1 = ' + CONVERT(VARCHAR(50),@var1) + CHAR(13) +
	'Variable 2 = ' + CONVERT(VARCHAR(50),@var2) + CHAR(13) +
	'Total:'
PRINT @var1 + @var2

IF @var1 <= 3
	BEGIN
		PRINT 'Variable 1 <= ' + CONVERT(VARCHAR(5),@var1) + CHAR(13)
	END
ELSE
	BEGIN
		PRINT 'Variable 1 is not <= ' + CONVERT(VARCHAR(5),@var1) + CHAR(13)
	END

IF @var1 < 3
	BEGIN
		PRINT CONVERT(VARCHAR(5),@var1) + ' is less than 3' + CHAR(13)
	END
ELSE IF @var1 > 3
	BEGIN
		PRINT CONVERT(VARCHAR(5),@var1) + ' is more than 3' + CHAR(13)
	END
ELSE
	BEGIN
		PRINT  CONVERT(VARCHAR(5),@var1) + ' equals 3' + CHAR(13)
	END
/* Silent message
on multiple lines */
-- This works for a single line
