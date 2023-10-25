CREATE TABLE Payment (
    payId SERIAL PRIMARY KEY,
    paymentMethod VARCHAR(65) NOT NULL
);

CREATE TABLE MedService (
    medsvcId SERIAL PRIMARY KEY,
    medsvcName VARCHAR(120) NOT NULL,
    dateAndTime DATE NOT NULL CHECK (dateAndTime >= CURRENT_DATE),
    cost INT NOT NULL CHECK (cost >= 0),
    payId INT NOT NULL REFERENCES Payment (payId)
);

CREATE TABLE OnlineApplication (
    appId SERIAL PRIMARY KEY,
    userData VARCHAR(1250) NOT NULL
);

CREATE TABLE Users (
    userId SERIAL PRIMARY KEY,
    fullName VARCHAR(140) NOT NULL CHECK (fullName ~ '^[A-Za-z ]+$'),
    sex VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    medCardNumber INT NOT NULL CHECK (medCardNumber::TEXT ~ '^[0-9]+$'),
    appId INT NOT NULL REFERENCES OnlineApplication (appId),
    medsvcId INT NOT NULL REFERENCES MedService (medsvcId)
);
