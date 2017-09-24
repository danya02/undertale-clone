0x000000:
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 6s))) self.sinerfactor))
    self.siner = (+ self.siner 1s)
    if !(> self.x self.room_width) goto 0x000098
0x00006C:
    self.x = -10s
    if !(== self.room 68s) goto 0x000098
0x00008C:
    self.x = 2300s
0x000098:
    if !(== self.room 82s) goto 0x000258
0x0000AC:
    if !(<= self.y 50s) goto 0x0000E8
0x0000C0:
    if !(>= self.x 460s) goto 0x0000E8
0x0000D4:
    push (== self.moved 0s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x00011C
0x0000F0:
    self.vspeed = (- self.hspeed)
    self.hspeed = 0s
    self.moved = 1s
0x00011C:
    if !(<= self.y 70s) goto 0x000158
0x000130:
    if !(>= self.x 480s) goto 0x000158
0x000144:
    push (== self.moved 0s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x00018C
0x000160:
    self.vspeed = (- self.hspeed)
    self.hspeed = 0s
    self.moved = 1s
0x00018C:
    if !(<= self.y 90s) goto 0x0001C8
0x0001A0:
    if !(>= self.x 500s) goto 0x0001C8
0x0001B4:
    push (== self.moved 0s)
    goto 0x0001CC
0x0001C8:
    push 0s
0x0001CC:
    if !pop goto 0x0001FC
0x0001D0:
    self.vspeed = (- self.hspeed)
    self.hspeed = 0s
    self.moved = 1s
0x0001FC:
    if !(<= self.y -15s) goto 0x000258
0x000210:
    self.moved = 0s
    self.x = -10s
    self.hspeed = 1.5d
    self.y = self.ystart
    self.vspeed = 0s
0x000258:
    exit
