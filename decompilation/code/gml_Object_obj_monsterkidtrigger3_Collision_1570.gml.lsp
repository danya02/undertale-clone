0x000000:
    if !(== self.con 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000C8
0x000030:
    other.x = other.xprevious
    other.y = other.yprevious
    global.interact = 1s
    self.con = 1s
    push (int32 self.mkid):dtsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    global.msc = 0s
    global.typer = 5s
0x0000C8:
    if !(== self.con 6s) goto 0x0000F0
0x0000DC:
    push (== global.interact 0s)
    goto 0x0000F4
0x0000F0:
    push 0s
0x0000F4:
    if !pop goto 0x00021C
0x0000F8:
    self.con = 7s
    global.interact = 1s
    other.x = other.xprevious
    other.y = other.yprevious
    push (int32 self.mkid):ltsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    global.msc = 0s
    global.facechoice = 0s
    global.typer = 5s
    stog.msg[0s] = "* Yo^1, I already looked^1,&  Undyne's not over here./"
    stog.msg[1s] = "* So I guess I'll see&  ya later^1, haha./%%"
    if !(> self.numero 0s) goto 0x0001F8
0x0001E0:
    stog.msg[0s] = "* See ya later!/%%"
0x0001F8:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00021C:
    exit
