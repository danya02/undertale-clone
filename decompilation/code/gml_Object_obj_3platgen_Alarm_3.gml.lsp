0x000000:
    self.zone = 0s
    push 743.y
    if !(>= -5s (+ 2s:idealborder 40s)) goto 0x000040
0x000034:
    self.zone = 1s
0x000040:
    push 743.y
    if !(>= -5s (+ 2s:idealborder 80s)) goto 0x000074
0x000068:
    self.zone = 2s
0x000074:
    self.reroll = 0s
    self.gg2 = self.gg
    self.gg = self.g
    self.g = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    if !(== self.gg self.g) goto 0x000104
0x0000E0:
    if !(== self.gg2 self.gg) goto 0x000104
0x0000F8:
    self.reroll = 1s
0x000104:
    if !(== self.g 0s) goto 0x000138
0x000118:
    if !(== self.zone 0s) goto 0x000138
0x00012C:
    self.reroll = 1s
0x000138:
    if !(== self.g 1s) goto 0x00016C
0x00014C:
    if !(== self.zone 2s) goto 0x00016C
0x000160:
    self.reroll = 1s
0x00016C:
    if !(== self.reroll 1s) goto 0x0001A8
0x000180:
    self.g = (choose[]:int32 (var 2s) (var 1s) (var 0s))
0x0001A8:
    if !(== self.g 0s) goto 0x0002E0
0x0001BC:
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    if !(== self.sd 0s) goto 0x000228
0x0001F8:
    push -5s
    push (- 0s:idealborder 60s)
    stog.idealx* = (int32 self.gb)
    goto 0x00026C
0x000228:
    push -5s
    push (+ 1s:idealborder 60s)
    stog.idealx* = (int32 self.gb)
    push 640s
    stog.x* = (int32 self.gb)
0x00026C:
    push -5s
    push (- 3s:idealborder 20s)
    stog.idealy* = (int32 self.gb)
    if !(== self.sd 0s) goto 0x0002C8
0x0002AC:
    push 90s
    stog.idealrot* = (int32 self.gb)
    goto 0x0002E0
0x0002C8:
    push -90s
    stog.idealrot* = (int32 self.gb)
0x0002E0:
    if !(== self.g 1s) goto 0x000418
0x0002F4:
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    if !(== self.sd 0s) goto 0x000360
0x000330:
    push -5s
    push (- 0s:idealborder 60s)
    stog.idealx* = (int32 self.gb)
    goto 0x0003A4
0x000360:
    push -5s
    push (+ 1s:idealborder 60s)
    stog.idealx* = (int32 self.gb)
    push 640s
    stog.x* = (int32 self.gb)
0x0003A4:
    push -5s
    push (+ 2s:idealborder 35s)
    stog.idealy* = (int32 self.gb)
    if !(== self.sd 0s) goto 0x000400
0x0003E4:
    push 90s
    stog.idealrot* = (int32 self.gb)
    goto 0x000418
0x000400:
    push -90s
    stog.idealrot* = (int32 self.gb)
0x000418:
    if !(== self.g 2s) goto 0x000550
0x00042C:
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    if !(== self.sd 0s) goto 0x000498
0x000468:
    push -5s
    push (- 0s:idealborder 60s)
    stog.idealx* = (int32 self.gb)
    goto 0x0004DC
0x000498:
    push -5s
    push (+ 1s:idealborder 60s)
    stog.idealx* = (int32 self.gb)
    push 640s
    stog.x* = (int32 self.gb)
0x0004DC:
    push -5s
    push (+ 2s:idealborder 75s)
    stog.idealy* = (int32 self.gb)
    if !(== self.sd 0s) goto 0x000538
0x00051C:
    push 90s
    stog.idealrot* = (int32 self.gb)
    goto 0x000550
0x000538:
    push -90s
    stog.idealrot* = (int32 self.gb)
0x000550:
    pushenv 498s 0x00057C
0x000558:
    self.pause = 17s
    self.terminal = 3s
    self.image_yscale = 2s
0x00057C:
    popenv 0x000558
0x000580:
    if !(== self.type 3s) goto 0x0005AC
0x000594:
    pushenv 498s 0x0005A8
0x00059C:
    self.pause = 17s
0x0005A8:
    popenv 0x00059C
0x0005AC:
    if !(== self.sd 0s) goto 0x0005D0
0x0005C0:
    self.sd = 1s
    goto 0x0005DC
0x0005D0:
    self.sd = 0s
0x0005DC:
    stog.alarm[3s] = 26s
    if !(== self.type 3s) goto 0x000618
0x000604:
    stog.alarm[3s] = 21s
0x000618:
    exit
