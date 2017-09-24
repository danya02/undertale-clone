0x000000:
    push -1s
    self.image_angle = (* 1s:pspeed 2s)
    if (== self.lefter 1s) goto 0x000048
0x000034:
    push (== self.lefter 0s)
    goto 0x00004C
0x000048:
    push 1s
0x00004C:
    if !pop goto 0x0000A0
0x000050:
    if !(> self.hspeed -20s) goto 0x000080
0x000064:
    self.hspeed = (- self.hspeed 3s)
    goto 0x0000A0
0x000080:
    self.hspeed = (- self.hspeed 0.4d)
0x0000A0:
    if !(== self.lefter 2s) goto 0x0000F8
0x0000B4:
    self.hspeed = (+ self.hspeed 2s)
    if !(> self.hspeed 1s) goto 0x0000F8
0x0000E0:
    self.hspeed = 0s
    self.lefter = 3s
0x0000F8:
    if !(== self.lefter 4s) goto 0x00015C
0x00010C:
    if !(< self.hspeed 20s) goto 0x00013C
0x000120:
    self.hspeed = (+ self.hspeed 4s)
    goto 0x00015C
0x00013C:
    self.hspeed = (+ self.hspeed 0.5d)
0x00015C:
    if !(== self.lefter 5s) goto 0x000224
0x000170:
    self.hspeed = (- self.hspeed 2s)
    if !(< self.x self.remx) goto 0x0001B4
0x0001A0:
    push (< self.hspeed 3s)
    goto 0x0001B8
0x0001B4:
    push 0s
0x0001B8:
    if !pop goto 0x0001C8
0x0001BC:
    self.hspeed = 3s
0x0001C8:
    if (< self.hspeed -1s) goto 0x0001F4
0x0001DC:
    push (>= self.x self.remx)
    goto 0x0001F8
0x0001F4:
    push 1s
0x0001F8:
    if !pop goto 0x000224
0x0001FC:
    self.x = self.remx
    self.hspeed = 0s
    self.lefter = 16s
0x000224:
    stog.pspeed[0s] = self.hspeed
    self.i = 4s
    if !(> self.i 0s) goto 0x0002B0
0x00025C:
    push -1s
    stog.pspeed[(int32 self.i)] = (int32 (- self.i 1s)):pspeed
    self.i = (- self.i 1s)
    goto 0x000248
0x0002B0:
    exit
