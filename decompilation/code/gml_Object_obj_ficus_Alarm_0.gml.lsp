0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a potted plant.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000080
0x000068:
    stog.msg[0s] = "* (The potted plant is judging&  you for your sins.)/%%"
0x000080:
    if !(== self.room 184s) goto 0x0000DC
0x000094:
    if !(> self.x 160s) goto 0x0000BC
0x0000A8:
    push (< self.x 260s)
    goto 0x0000C0
0x0000BC:
    push 0s
0x0000C0:
    if !pop goto 0x0000DC
0x0000C4:
    stog.msg[0s] = "* (It's a platoon of ficuses.)/%%"
0x0000DC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00011C:
    exit
