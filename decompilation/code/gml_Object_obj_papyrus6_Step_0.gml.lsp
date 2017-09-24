0x000000:
    if !(== self.conversation 1s) goto 0x00005C
0x000014:
    self.myinteract = 3s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    self.conversation = 2s
0x00005C:
    if !(== self.conversation 2s) goto 0x000120
0x000070:
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    self.conversation = 3s
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    stog.alarm[4s] = 20s
0x000120:
    if !(== self.conversation 4s) goto 0x0001BC
0x000134:
    global.msc = 240s
    stog.msg[0s] = "HUMAN!/%%"
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
0x0001BC:
    if !(== self.conversation 6s) goto 0x0001EC
0x0001D0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001F0
0x0001EC:
    push 0s
0x0001F0:
    if !pop goto 0x000248
0x0001F4:
    push 4s
    stog.hspeed* = (int32 self.papyrus)
    push 1s
    stog.npcdir* = (int32 self.papyrus)
    global.interact = 0s
    self.conversation = 7s
    call (instance_destroy[]:int32 )
0x000248:
    exit
