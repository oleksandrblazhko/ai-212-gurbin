CREATE TABLE Payment(
    payId INT PRIMARY KEY NOT NULL,
    paymentMethod VARCHAR(65) NOT NULL
);

CREATE TABLE MedService(
    medsvcId INT PRIMARY KEY NOT NULL,
    medsvcName VARCHAR(120) NOT NULL,
    dateAndTime DATE NOT NULL CHECK (dateAndTime >= CURRENT_DATE),
    cost INT NOT NULL CHECK (cost >= 0),
    payId INT NOT NULL REFERENCES Payment(payId)
);

CREATE TABLE OnlineApplication(
    appId INT PRIMARY KEY NOT NULL,
    userData VARCHAR(1250) NOT NULL
);

CREATE TABLE User(
    userId INT PRIMARY KEY NOT NULL,
    fullName VARCHAR(140) NOT NULL CHECK (fullName REGEXP '^[A-Za-z ]+$'),
    sex VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    medCardNumber INT NOT NULL  CHECK (medCardNumber REGEXP '^[0-9]+$') ,
    appId INT NOT NULL REFERENCES OnlineApplication(appId),
    medsvcId INT NOT NULL REFERENCES MedService(medsvcId)
);
