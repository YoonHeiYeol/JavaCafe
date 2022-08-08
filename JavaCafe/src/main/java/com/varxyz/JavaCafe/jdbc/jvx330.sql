CREATE TABLE Customer(
	cid				BIGINT			PRIMARY KEY AUTO_INCREMENT,
	email			VARCHAR(30)		NOT NULL,
	passwd			VARCHAR(20)		NOT NULL,
	name			VARCHAR(20)		NOT NULL,
	ssn				VARCHAR(14)		NOT NULL, -- 123456-7890123
	phone			VARCHAR(13)		NOT NULL, -- 010-1234-5678
	regDate			TIMESTAMP		NOT NULL	DEFAULT CURRENT_TIMESTAMP
)AUTO_INCREMENT = 1001;

SELECT * FROM Customer;
SELECT count(*) FROM Customer;
DROP TABLE Customer;

CREATE TABLE Account(
	aid				BIGINT			PRIMARY KEY AUTO_INCREMENT,
	customerId		BIGINT			NOT NULL,
	accountNum		CHAR(20)		NOT NULL, -- 000-00-0000
	accType			CHAR(20)		NOT NULL DEFAULT 'S', 
	balance			DOUBLE			NOT NULL DEFAULT 1000.0,
	interestRate	DOUBLE			NOT NULL DEFAULT 0.0,
	overAmount		DOUBLE			NOT NULL DEFAULT 0.0,
	regDate			TIMESTAMP		NOT NULL DEFAULT CURRENT_TIMESTAMP,	
	CONSTRAINT Account_customerId_FK
		FOREIGN KEY(customerId) REFERENCES Customer(cid)
)AUTO_INCREMENT = 3001;

DROP TABLE Account;
SELECT * FROM Account;