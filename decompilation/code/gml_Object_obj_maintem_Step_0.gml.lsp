0x000000:
    self.adjust = 0s
    if !(== self.control 1s) goto 0x000240
0x000020:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000058
0x000038:
    self.hspeed = (+ self.hspeed 0.2d)
0x000058:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000090
0x000070:
    self.hspeed = (- self.hspeed 0.2d)
0x000090:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0000BC
0x0000A8:
    push (> self.height 4s)
    goto 0x0000C0
0x0000BC:
    push 0s
0x0000C0:
    if !pop goto 0x0000F4
0x0000C4:
    self.height = (- self.height 1s)
    self.y = (+ self.y 1s)
0x0000F4:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x00013C
0x00010C:
    self.height = (+ self.height 1s)
    self.y = (- self.y 1s)
0x00013C:
    if !(bool (keyboard_check[]:int32 (var 13s))) goto 0x0001BC
0x000154:
    self.length = (+ self.length 1s)
    stog.x* = (+ (int32 self.leg3):x 1s)
    stog.x* = (+ (int32 self.leg4):x 1s)
0x0001BC:
    push (int32 self.leg3)
    push (int32 self.leg4)
    if !(bool (keyboard_check[]:int32 (var 16s))) goto 0x00023C
0x0001D4:
    self.length = (- self.length 1s)
    stog.x* = (- (int32 self.leg3):x 1s)
    stog.x* = (- (int32 self.leg4):x 1s)
0x00023C:
    push (int32 self.leg3)
    push (int32 self.leg4)
    goto 0x000624
0x000240:
    if !(<= (+ 743.x (/ 743.sprite_width (double 2s))) (/ (+ (int32 self.leg1):x (int32 self.leg4):x) (double 2s))) goto 0x000378
0x0002A0:
    self.adjust = 1s
    self.hspeed = (- self.hspeed self.adjustspeed)
    stog.hspeed* = (- (int32 self.leg1):hspeed self.adjustspeed)
    stog.hspeed* = (- (int32 self.leg2):hspeed self.adjustspeed)
    stog.hspeed* = (- (int32 self.leg3):hspeed self.adjustspeed)
    stog.hspeed* = (- (int32 self.leg4):hspeed self.adjustspeed)
0x000378:
    push (int32 self.leg1)
    push (int32 self.leg2)
    push (int32 self.leg3)
    push (int32 self.leg4)
    if !(>= (+ 743.x (/ 743.sprite_width (double 2s))) (/ (+ (int32 self.leg1):x (int32 self.leg4):x) (double 2s))) goto 0x0004B0
0x0003D8:
    self.adjust = 1s
    self.hspeed = (+ self.hspeed self.adjustspeed)
    stog.hspeed* = (+ (int32 self.leg1):hspeed self.adjustspeed)
    stog.hspeed* = (+ (int32 self.leg2):hspeed self.adjustspeed)
    stog.hspeed* = (+ (int32 self.leg3):hspeed self.adjustspeed)
    stog.hspeed* = (+ (int32 self.leg4):hspeed self.adjustspeed)
0x0004B0:
    push (int32 self.leg1)
    push (int32 self.leg2)
    push (int32 self.leg3)
    push (int32 self.leg4)
    self.siner = (+ self.siner 1s)
    self.hadd = (* (sin[]:int32 (/ self.siner (double 10s))) 0.1d)
    if !(< (abs[]:int32 self.hspeed) 0.4d) goto 0x000558
0x000520:
    self.siner = (+ self.siner 1s)
    self.hadd = (* self.hadd 1.5d)
0x000558:
    self.hspeed = (+ self.hspeed self.hadd)
    stog.hspeed* = (+ (int32 self.leg1):hspeed self.hadd)
    stog.hspeed* = (+ (int32 self.leg2):hspeed self.hadd)
    stog.hspeed* = (+ (int32 self.leg3):hspeed self.hadd)
    stog.hspeed* = (+ (int32 self.leg4):hspeed self.hadd)
0x000624:
    push (int32 self.leg1)
    push (int32 self.leg2)
    push (int32 self.leg3)
    push (int32 self.leg4)
    if !(< global.turntimer 1s) goto 0x000650
0x000638:
    call (instance_destroy[]:int32 )
    global.mnfight = 3s
0x000650:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (+ self.y 63s) (+ (+ self.x 50s) self.length) (+ self.y 36s) (+ self.x 13s))) goto 0x0006D8
0x0006C4:
    call (event_user[]:int32 (var 2s))
0x0006D8:
    exit
