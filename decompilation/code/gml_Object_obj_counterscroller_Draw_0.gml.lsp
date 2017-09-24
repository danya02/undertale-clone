0x000000:
    self.i = 0s
    if !(< self.i 20s) goto 0x000148
0x000020:
    self.j = (- (+ self.seg self.i))
    if !(> self.j 0s) goto 0x00012C
0x000054:
    if !(< self.j self.segno) goto 0x0000C0
0x00006C:
    call (draw_sprite[]:int32 (+ (+ (- self.y 360s) self.fakey) (* self.i 40s)) self.x (var 0s) (var 1714s))
0x0000C0:
    if !(== self.j self.segno) goto 0x00012C
0x0000D8:
    call (draw_sprite[]:int32 (+ (+ (- self.y 360s) self.fakey) (* self.i 40s)) self.x (var 0s) (var 1713s))
0x00012C:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000148:
    self.fakey = (+ self.fakey self.fakev)
    if !(> self.fakey 40s) goto 0x0001BC
0x000178:
    self.fakey = (- self.fakey 40s)
    if !(== self.on 1s) goto 0x0001BC
0x0001A4:
    self.seg = (- self.seg 1s)
0x0001BC:
    if !(< self.fakey -40s) goto 0x000214
0x0001D0:
    self.fakey = (+ self.fakey 40s)
    if !(== self.on 1s) goto 0x000214
0x0001FC:
    self.seg = (+ self.seg 1s)
0x000214:
    if !(== self.con 1s) goto 0x00028C
0x000228:
    self.fakey = (+ self.fakey 1s)
    self.timer = (+ self.timer 1s)
    if !(>= self.timer 17s) goto 0x00028C
0x00026C:
    self.timer = 0s
    self.con = 1.5d
0x00028C:
    if !(== self.con 1.5d) goto 0x0002EC
0x0002A8:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 30s) goto 0x0002EC
0x0002D4:
    self.timer = 0s
    self.con = 2s
0x0002EC:
    if !(== self.con 2s) goto 0x0003DC
0x000300:
    self.x = (- (+ self.xstart (random[]:int32 self.shake)) (/ self.shake (double 2s)))
    self.y = (- (+ self.ystart (random[]:int32 self.shake)) (/ self.shake (double 2s)))
    self.timer = (+ self.timer 1s)
    if !(> self.timer 60s) goto 0x0003DC
0x0003A4:
    self.x = self.xstart
    self.y = self.ystart
    self.con = 3s
    self.fakev = -1s
0x0003DC:
    if !(== self.con 3s) goto 0x000454
0x0003F0:
    self.fakev = (- self.fakev 0.25d)
    if !(<= self.fakev -15s) goto 0x000454
0x000424:
    self.fakev = -15s
    self.on = 0s
    self.con = 4s
    self.timer = 0s
0x000454:
    if !(== self.con 4s) goto 0x0004A0
0x000468:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 150s) goto 0x0004A0
0x000494:
    self.con = 5s
0x0004A0:
    if !(== self.con 5s) goto 0x0004CC
0x0004B4:
    self.fakev = 0s
    self.con = 6s
0x0004CC:
    exit
