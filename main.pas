uses GraphWPF, module1;

var
  (u, p, wx, wy) := (32, 4, 64, 64);

procedure KeyDown(k: Key);
begin
  case K of
    Key.Down: wy -= 10;
    Key.Up: wy += 10; 
    Key.Left: wx += 10;  
    Key.Right: wx -= 10;
    Key.Escape: halt(1); // выход
    Key.A: if p * u < 1000 then u := (p * u > 50) ? (u * 1.1).trunc : u + 5;
    Key.Z: if (p * u > 50) and (u > 9) then u := (u / 1.1).trunc;
    Key.S: if (p * u > 50) and (p < 5) then (u, p) := (u div 2, p + 1);
    Key.X: if p > 1 then (u, p) := (u * 2, p - 1);
  end;
  MoveTo(wx, wy);
  Redraw(() -> begin Window.Clear; a(p); end); 
end;

begin
  Window.SetSize(650, 650);
  MoveTo(wx, wy);
  Redraw(() -> a(p));
  OnKeyDown += KeyDown;
end.