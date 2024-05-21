unit module1;

interface

procedure a(i: Integer);
procedure b(i: Integer);
procedure c(i: Integer);
procedure d(i: Integer);

implementation

uses GraphWPF;

var (u, p, wx, wy) := (32, 4, 64, 64);

procedure a(i: Integer);
begin
  if i > 0 then
  begin
    d(i - 1); LineBy(+u, 0);
    a(i - 1); LineBy(0, u);
    a(i - 1); LineBy(-u, 0);
    c(i - 1);
  end;
end;

procedure b(i: Integer);
begin
  if i > 0 then
  begin
    c(i - 1); LineBy(-u, 0);
    b(i - 1); LineBy(0, -u);
    b(i - 1); LineBy(u, 0);
    d(i - 1);
  end;
end;

procedure c(i: Integer);
begin
  if i > 0 then
  begin
    b(i - 1); LineBy(0, -u);
    c(i - 1); LineBy(-u, 0);
    c(i - 1); LineBy(0, u);
    a(i - 1);
  end;
end;

procedure d(i: Integer);
begin
  if i > 0 then
  begin
    a(i - 1); LineBy(0, u);
    d(i - 1); LineBy(u, 0);
    d(i - 1); LineBy(0, -u);
    b(i - 1);
  end;
end;

end.