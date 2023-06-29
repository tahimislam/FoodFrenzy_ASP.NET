CREATE PROCEDURE [dbo].[Save_Orders] @tblOrders OrderDetails READONLY
AS
BEGIN
        SET NOCOUNT ON;

        INSERT INTO Orders(OrderNo, ProductId, Quantity, UserId, Status, PaymentId, OrderDate)
		SELECT OrderNo, ProductId, Quantity, UserId, Status, PaymentId, OrderDate FROM @tblOrders

END


CREATE PROCEDURE [dbo].[Save_Payment] 
        @Name varchar(100) = null,
        @CardNo varchar(50) = null,
        @ExpiryDate varchar(50) = null,
        @Cvv int = null,
        @Address varchar(max) = null,
        @PaymentMode varchar(10) = 'card',
        @InsertedId int output
AS
BEGIN
        SET NOCOUNT ON;

		--INSERT
		BEGIN
             INSERT INTO dbo.Payment(Name, CardNo, ExpiryDate, CvvNo, Address, PaymentMode)
			 VALUES (@Name, @CardNo, @ExpiryDate, @Cvv, @Address, @PaymentMode)

			 SELECT @InsertedId = SCOPE_IDENTITY();
        END

END