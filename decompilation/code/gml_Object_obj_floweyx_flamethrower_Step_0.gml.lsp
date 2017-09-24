0x000000:
    if !(== self.extend 1s) goto 0x000040
0x000014:
    if !(< self.image_index 8s) goto 0x000040
0x000028:
    self.image_index = (+ self.image_index 1s)
0x000040:
    if !(== self.extend 2s) goto 0x000080
0x000054:
    if !(> self.image_index 0s) goto 0x000080
0x000068:
    self.image_index = (- self.image_index 1s)
0x000080:
    if !(> self.y 190s) goto 0x0000A8
0x000094:
    push (== self.con 0s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000F4
0x0000B0:
    self.con = 1s
    self.vspeed = 0s
    self.yanchor = self.y
    self.xanchor = self.x
    self.anchor = 1s
0x0000F4:
    if !(== self.done 0s) goto 0x000194
0x000108:
    if !(< self.image_xscale 1s) goto 0x000140
0x00011C:
    self.image_xscale = (+ self.image_xscale 0.1d)
    goto 0x000194
0x000140:
    self.done = 1s
    self.con = 2s
    stog.alarm[0s] = 1s
    if !(== self.side 1s) goto 0x000194
0x000180:
    stog.alarm[0s] = 25s
0x000194:
    if !(== self.con 2s) goto 0x0001D0
0x0001A8:
    if !(== self.side 0s) goto 0x0001BC
0x0001BC:
    if !(== self.side 1s) goto 0x0001D0
0x0001D0:
    if !(== self.con 3s) goto 0x000294
0x0001E4:
    if !(!= self.extend 2s) goto 0x00020C
0x0001F8:
    call (snd_play[]:int32 (var 120s))
0x00020C:
    self.extend = 2s
    self.vspeed = -5s
    stog.alarm[0s] = -1s
    if !(> self.image_xscale 0.1d) goto 0x000274
0x000254:
    self.image_xscale = (- self.image_xscale 0.1d)
0x000274:
    if !(<= self.y 150s) goto 0x000294
0x000288:
    call (instance_destroy[]:int32 )
0x000294:
    exit
