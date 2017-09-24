0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(> self.y 540s) goto 0x00008C
0x000050:
    stog.msg[0s] = "* (You rest your hand on&  the rusted bike.^1)/"
    stog.msg[1s] = "* (Its horn wheezes a honk&  of despair.)/%%"
    self.con = 1s
0x00008C:
    if !(< self.y 500s) goto 0x0000B4
0x0000A0:
    push (> self.y 420s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000D4
0x0000BC:
    stog.msg[0s] = "* (A beat-up desktop computer.^1)&* (The inside is empty.)/%%"
0x0000D4:
    if !(< self.y 340s) goto 0x0000FC
0x0000E8:
    push (> self.y 280s)
    goto 0x000100
0x0000FC:
    push 0s
0x000100:
    if !pop goto 0x000134
0x000104:
    stog.msg[0s] = "* (It's a DVD case for an&  anime.)/"
    stog.msg[1s] = "* (Desperate claw marks cover&  the edges.)/%%"
0x000134:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    stog.talkedto* = (+ (int32 self.object_index):talkedto 1s)
0x000184:
    exit
