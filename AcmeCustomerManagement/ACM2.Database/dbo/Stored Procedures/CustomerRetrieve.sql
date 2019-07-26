CREATE PROCEDURE [dbo].[CustomerRetrieve] 
    @StartsWith AS VARCHAR(1)
AS
	SELECT 
        Customer.CustomerId,
        Customer.LastName,
        Customer.FirstName,
        EmailAddress,
        CustomerTypeId,
        PhoneNumber
    FROM
        Customer
    WHERE
        LastName LIKE @StartsWith + '%'
    ORDER BY
        LastName 
RETURN 0