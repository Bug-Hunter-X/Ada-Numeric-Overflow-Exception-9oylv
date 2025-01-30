```ada
function Add(A, B: Integer) return Integer is
   Result: Integer;
begin
   begin
      Result := A + B;
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line("Numeric overflow occurred");
         return 0; -- Or handle the error appropriately
   end;
   return Result;
end Add;

procedure Example is
   X: Integer := 5;
   Y: Integer := Integer'Last - 1;
   Z: Integer;
begin
   Z := Add(X, Y);
   Ada.Text_IO.Put_Line("Sum:" & Z'Img);
end Example;
```