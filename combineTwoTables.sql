DROP Table if exists Person;
DROP TABLE if exists Address;
CREATE TABLE Person(
    personId INT PRIMARY KEY,
    lastName VARCHAR(100),
    firstName VARCHAR(100)
);
INSERT INTO Person (personId , lastName , firstName)VALUES
(1, 'Smith', 'John'),
(2, 'Doe', 'Jane'),
(3, 'Black', 'Jim');
CREATE TABLE Address(
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(100),
    state VARCHAR(100)
    );
    INSERT INTO Address (addressId, personId, city, state)VALUES
(1, 1, 'New York', 'NY'),
(2, 3, 'Los Angeles', 'CA');

SELECT lastName, firstName, city, state
from Person
    left join Address on Person.personId = Address.personId;