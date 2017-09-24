0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 20s) (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "...&..."
    if !(< self.mycommand 75s) goto 0x0000BC
0x0000A4:
    stog.msg[0s] = "You've&seen&enough."
0x0000BC:
    if !(< self.mycommand 50s) goto 0x0000E8
0x0000D0:
    stog.msg[0s] = "Take&your&last&look."
0x0000E8:
    if !(< self.mycommand 25s) goto 0x000114
0x0000FC:
    stog.msg[0s] = "..."
0x000114:
    if !(== self.whatiheard 1s) goto 0x000180
0x000128:
    if !(< self.mercymod 0s) goto 0x000154
0x00013C:
    stog.msg[0s] = "What are&you so&afraid&of?"
0x000154:
    if !(> self.mercymod 80s) goto 0x000180
0x000168:
    stog.msg[0s] = "Finally,&someone&gets it."
0x000180:
    if !(== self.whatiheard 3s) goto 0x0001EC
0x000194:
    if !(< self.mercymod 0s) goto 0x0001C0
0x0001A8:
    stog.msg[0s] = "How&dare&you."
0x0001C0:
    if !(> self.mercymod 80s) goto 0x0001EC
0x0001D4:
    stog.msg[0s] = "That's&right!"
0x0001EC:
    if !(== self.whatiheard 4s) goto 0x000258
0x000200:
    if !(< self.mercymod 1s) goto 0x00022C
0x000214:
    stog.msg[0s] = "You&dare&defy me?"
0x00022C:
    if !(> self.mercymod 80s) goto 0x000258
0x000240:
    stog.msg[0s] = "You've&pushed&your&luck."
0x000258:
    if !(== self.impress 1s) goto 0x000284
0x00026C:
    stog.msg[0s] = "That&takes&guts."
0x000284:
    self.impress = 0s
    if !(== self.turnt 0s) goto 0x000308
0x0002A4:
    if !(== self.pickon 0s) goto 0x0002D0
0x0002B8:
    stog.msg[0s] = "...&Don't&pick on&me."
0x0002D0:
    if !(== self.pickon 1s) goto 0x0002FC
0x0002E4:
    stog.msg[0s] = "...&Pick on&me."
0x0002FC:
    self.turnt = 1s
0x000308:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 3s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000418:
    exit
