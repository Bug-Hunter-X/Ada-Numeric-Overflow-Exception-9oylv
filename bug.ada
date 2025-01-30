```ada
function Add(A, B: Integer) return Integer is
begin
  return A + B;
end Add;

procedure Example is
   X: Integer := 5;
   Y: Integer := 10;
   Z: Integer;
begin
   Z := Add(X, Y);
   Ada.Text_IO.Put_Line("Sum:" & Z'Img);
end Example;
```