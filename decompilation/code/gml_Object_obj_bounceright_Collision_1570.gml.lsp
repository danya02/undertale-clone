0x000000:
    if !(== global.interact 0s) goto 0x00003C
0x000014:
    if !(== 1530.bounce 0s) goto 0x00003C
0x000028:
    push (== self.con 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x0000F4
0x000044:
    [obj_bouncetilecontoller].bounce = 1s
    global.phasing = 1s
    self.con = 1s
    [obj_mainchara].image_speed = 0.334d
    stog.alarm[4s] = 5s
    global.interact = 1s
    [obj_mainchara].ideal = self.id
    pushenv 1570s 0x0000F0
0x0000B4:
    call (scr_getideal[]:int32 (- (int32 self.ideal):y 15s) (int32 self.ideal):x)
0x0000F0:
    popenv 0x0000B4
0x0000F4:
    if !(== global.interact 0s) goto 0x000130
0x000108:
    if !(== 1530.bounce 2s) goto 0x000130
0x00011C:
    push (== self.con 0s)
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x00018C
0x000138:
    [obj_bouncetilecontoller].bounce = 1s
    global.phasing = 1s
    self.con = 4s
    [obj_mainchara].image_speed = 0.334d
    global.interact = 1s
    [obj_mainchara].ideal = self.id
0x00018C:
    [obj_bouncetilecontoller].btime = 3s
0x000198:
    exit
