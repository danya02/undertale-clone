0x000000:
    self.myinteract = 3s
    global.msc = 514s
    if !(== self.room 170s) goto 0x000038
0x00002C:
    global.msc = 746s
0x000038:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(== self.room 120s) goto 0x0000B0
0x000070:
    global.msc = 0s
    stog.msg[0s] = "* (It's a spider web.)/"
    stog.msg[1s] = "* (There's a flyer for a&  bake sale on it.)/%%"
    goto 0x0000D4
0x0000B0:
    call (instance_create[]:int32 (var 1525s) (var 0s) (var 0s))
0x0000D4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000FC:
    exit
