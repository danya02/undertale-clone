0x000000:
    self.tx = 0s
    if !(bool (instance_exists[]:int32 (var 1226s))) goto 0x000040
0x000024:
    self.dmx = (- 120s 1226.dx)
    goto 0x00004C
0x000040:
    self.dmx = 0s
0x00004C:
    self.stringer = (+ (string[]:int32 self.dmx) " SECONDS LEFT!")
    if !(== self.doomx 0s) goto 0x0000A0
0x000084:
    self.stringer = (+ self.stringer " HURRY UP!")
0x0000A0:
    if !(== self.doomx 1s) goto 0x000100
0x0000B4:
    push self.stringer
    self.stringer = (+ " " (+ (+ 6s (string[]:int32 (- -5s 395s:flag))) " BOMBS LEFT!"))
0x000100:
    if !(== self.doomx 2s) goto 0x000130
0x000114:
    self.stringer = (+ self.stringer " TIME'S RUNNING OUT!")
0x000130:
    if !(== self.doomx 3s) goto 0x000190
0x000144:
    push self.stringer
    self.stringer = (+ " " (+ (+ 6s (string[]:int32 (- -5s 395s:flag))) " BOMBS LEFT!"))
0x000190:
    if !(== self.doomx 4s) goto 0x0001C0
0x0001A4:
    self.stringer = (+ self.stringer " DO YOUR BEST!")
0x0001C0:
    if !(== self.doomx 5s) goto 0x000220
0x0001D4:
    push self.stringer
    self.stringer = (+ " " (+ (+ 6s (string[]:int32 (- -5s 395s:flag))) " BOMBS LEFT!"))
0x000220:
    if !(== self.doomx 6s) goto 0x000250
0x000234:
    self.stringer = (+ self.stringer " SPEED UP!")
0x000250:
    if !(== self.doomx 7s) goto 0x0002B0
0x000264:
    push self.stringer
    self.stringer = (+ " " (+ (+ 6s (string[]:int32 (- -5s 395s:flag))) " BOMBS LEFT!"))
0x0002B0:
    if !(== self.doomx 8s) goto 0x0002E0
0x0002C4:
    self.stringer = (+ self.stringer " RUN! RUN! RUN!")
0x0002E0:
    if !(== self.doomx 9s) goto 0x000310
0x0002F4:
    self.stringer = (+ self.stringer " GIVE IT YOUR ALL!")
0x000310:
    if !(== self.doomx 10s) goto 0x000340
0x000324:
    self.stringer = (+ self.stringer " DON'T WAIT UP!")
0x000340:
    self.doomx = (+ self.doomx 1s)
    self.doomtimer = 0s
0x000364:
    exit
