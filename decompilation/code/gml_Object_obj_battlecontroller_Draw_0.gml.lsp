0x000000:
    if !(> global.turntimer 0s) goto 0x00004C
0x000014:
    self.depth = -1000s
    call (draw_set_color[]:int32 (var 255s))
    global.turntimer = (- global.turntimer 1s)
0x00004C:
    if !(bool (instance_exists[]:int32 (var 759s))) goto 0x0000DC
0x000064:
    self.depth = 5s
    call (draw_set_color[]:int32 (var 0s))
    if !(== self.drawrect 1s) goto 0x0000DC
0x000098:
    call (draw_rectangle[]:int32 (var 0s) 761.y 760.x (+ 759.y 5s) (+ 759.x 5s))
0x0000DC:
    if !(!= self.background_color 16777215) goto 0x000108
0x0000F4:
    push (== self.drawbinfo 1s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x000124
0x000110:
    call (script_execute[]:int32 (var 157s))
0x000124:
    if !(== global.bmenuno 1s) goto 0x000160
0x000138:
    if !(== global.myfight 0s) goto 0x000160
0x00014C:
    push (== global.mnfight 0s)
    goto 0x000164
0x000160:
    push 0s
0x000164:
    if !pop goto 0x0003F4
0x000168:
    self.xwrite = 1s
    self.i = 0s
    if !(< self.i 3s) goto 0x000224
0x000194:
    push -5s
    if !(== (int32 self.i):monster 1s) goto 0x000208
0x0001B8:
    push -5s
    self.ywrite = (string_length[]:int32 (int32 self.i):monstername)
    if !(> self.ywrite self.xwrite) goto 0x000208
0x0001F8:
    self.xwrite = self.ywrite
0x000208:
    self.i = (+ self.i 1s)
    goto 0x000180
0x000224:
    self.xwrite = (+ 190s (* self.xwrite 16s))
    self.i = 0s
    if !(< self.i 3s) goto 0x0003F4
0x000264:
    push -5s
    if !(== (int32 self.i):monster 1s) goto 0x0002A4
0x000288:
    push (~ (bool (instance_exists[]:int32 (var 519s))))
    goto 0x0002A8
0x0002A4:
    push 0s
0x0002A8:
    if !pop goto 0x0003D8
0x0002AC:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_rectangle[]:int32 (var 0s) (+ (+ 280s (* self.i 32s)) 16s) (+ self.xwrite 100s) (+ 280s (* self.i 32s)) self.xwrite)
    call (draw_set_color[]:int32 (var 65280))
    push (var 0s)
    push (+ (+ 280s (* self.i 32s)) 16s)
    call (draw_rectangle[]:int32 self.xwrite -5s (+ (int32 self.i):monsterhp (* (/ -5s (int32 self.i):monstermaxhp) 100s)) (+ 280s (* self.i 32s)) self.xwrite)
0x0003D8:
    self.i = (+ self.i 1s)
    goto 0x000250
0x0003F4:
    exit
