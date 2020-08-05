SELECT phoneNumber, Id, DataPlan, DataUsed
FROM PhonePlan, Customer
WHERE PhonePlan.PrimaryPhone = Customer.PrimaryPhone;

SELECT phoneNumber
FROM PhonePlan
WHERE PhonePlan.phoneStatus = 0;

SELECT phoneNumber, Id, DataPlan
FROM Customer, PhonePlan
WHERE Customer.PrimaryPhone = PhonePlan.PrimaryPhone;

SELECT PrimaryPhone, Id, lastName, firstName
FROM Customer
WHERE Customer.AccountStatus = 0;

SELECT phoneNumber, connectedNumber, textMessage, messageDate
FROM Texts
WHERE Texts.phoneNumber = 8017894561 OR Texts.connectedNumber = 8017894561;