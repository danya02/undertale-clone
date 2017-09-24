0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (The trashcan is full&  of broken spears.)/%%"
    if !(== self.room 119s) goto 0x000130
0x000068:
    stog.msg[0s] = "* (The trashcan is empty.)/%%"
    push -5s
    if !(< 92s:flag 3s) goto 0x000130
0x00009C:
    stog.flag[92s] = 3s
    stog.msg[0s] = "* (You found a trashcan.)/"
    stog.msg[1s] = "* (Inside the trashcan&  was a key^1, barely visible&  to the naked eye...)/"
    stog.msg[2s] = "* (You take it.)/%%"
    if !(bool (instance_exists[]:int32 (var 1143s))) goto 0x000130
0x000110:
    if !(== 1143.open 0s) goto 0x000130
0x000124:
    [obj_stable].open = 1s
0x000130:
    if !(== self.room 141s) goto 0x000220
0x000144:
    stog.msg[0s] = "* (A garbage can.^1)&* (But it's pretty cute.)/%%"
    if !(< global.plot 126s) goto 0x000184
0x000170:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001A4
0x00018C:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x0001A4:
    push -5s
    if !(>= 493s:flag 10s) goto 0x000220
0x0001C0:
    stog.msg[0s] = "* (There's a message crumpled&  up in the trash can.)/"
    stog.msg[1s] = "* (It's in a strange kind&  of handwriting.)/"
    stog.msg[2s] = "* (It says...)/"
    stog.msg[3s] = "* (I KNOW WHAT YOU DID.)/%%"
0x000220:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    stog.talkedto* = (+ (int32 self.object_index):talkedto 1s)
0x000270:
    exit
