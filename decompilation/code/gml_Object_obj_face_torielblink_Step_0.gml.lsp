0x000000:
    if !(== self.image_index 0s) goto 0x00005C
0x000014:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00005C
0x00002C:
    if !(== 782.halt 0s) goto 0x00005C
0x000040:
    call (instance_change[]:int32 (var 1s) (var 765s))
0x00005C:
    if !(== global.faceemotion 0s) goto 0x000084
0x000070:
    push (!= self.sprite_index 2005s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x000098
0x00008C:
    self.sprite_index = 2005s
0x000098:
    if !(== global.faceemotion 1s) goto 0x0000C0
0x0000AC:
    push (!= self.sprite_index 2007s)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x0000D4
0x0000C8:
    self.sprite_index = 2007s
0x0000D4:
    if !(== global.faceemotion 2s) goto 0x000108
0x0000E8:
    push (!= self.sprite_index (real[]:int32 (var 2006s)))
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x000128
0x000110:
    self.sprite_index = (real[]:int32 (var 2006s))
0x000128:
    if !(== global.faceemotion 3s) goto 0x00015C
0x00013C:
    push (!= self.sprite_index (real[]:int32 (var 1999s)))
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x00017C
0x000164:
    self.sprite_index = (real[]:int32 (var 1999s))
0x00017C:
    if !(== global.faceemotion 4s) goto 0x0001B0
0x000190:
    push (!= self.sprite_index (real[]:int32 (var 2000s)))
    goto 0x0001B4
0x0001B0:
    push 0s
0x0001B4:
    if !pop goto 0x0001D0
0x0001B8:
    self.sprite_index = (real[]:int32 (var 2000s))
0x0001D0:
    if !(== global.faceemotion 5s) goto 0x000204
0x0001E4:
    push (!= self.sprite_index (real[]:int32 (var 1997s)))
    goto 0x000208
0x000204:
    push 0s
0x000208:
    if !pop goto 0x000224
0x00020C:
    self.sprite_index = (real[]:int32 (var 1997s))
0x000224:
    if !(== global.faceemotion 6s) goto 0x000258
0x000238:
    push (!= self.sprite_index (real[]:int32 (var 1991s)))
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x000278
0x000260:
    self.sprite_index = (real[]:int32 (var 1992s))
0x000278:
    if !(== global.faceemotion 7s) goto 0x0002AC
0x00028C:
    push (!= self.sprite_index (real[]:int32 (var 1993s)))
    goto 0x0002B0
0x0002AC:
    push 0s
0x0002B0:
    if !pop goto 0x0002CC
0x0002B4:
    self.sprite_index = (real[]:int32 (var 1995s))
0x0002CC:
    if !(== global.faceemotion 8s) goto 0x000300
0x0002E0:
    push (!= self.sprite_index (real[]:int32 (var 1996s)))
    goto 0x000304
0x000300:
    push 0s
0x000304:
    if !pop goto 0x000320
0x000308:
    self.sprite_index = (real[]:int32 (var 1996s))
0x000320:
    if !(== global.faceemotion 9s) goto 0x000354
0x000334:
    push (!= self.sprite_index (real[]:int32 (var 1987s)))
    goto 0x000358
0x000354:
    push 0s
0x000358:
    if !pop goto 0x000374
0x00035C:
    self.sprite_index = (real[]:int32 (var 1987s))
0x000374:
    exit
