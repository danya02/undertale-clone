0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (You visited the trash&  can.)/%%"
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x0000B8
0x00006C:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "THAT'S THE TRASH&CAN./"
    stog.msg[2s] = "FEEL FREE TO VISIT&IT ANY TIME./%%"
0x0000B8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000F8:
    exit
