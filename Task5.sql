delimiter //
drop function if exists Divide;
create function Divide (number1 float,number2 float)
returns float
deterministic
No sql
begin
	declare result float;
    set result = number1 / number2;
    return result;
    end

// 
Delimiter ;

Select
*,
Divide(mydb.order_details.quantity,100) as percantage
from mydb.order_details
