0x000000:
    self.myinteract = 0s
    self.con = 0s
    self.heartx = 0s
    self.hearty = 0s
    self.trigger = 0s
    self.dirdir = 0s
    self.ourx = 0s
    self.oury = 0s
    self.rectaur = 0s
    self.rect = 0s
    [obj_mainchara].cutscene = 1s
    if (== self.room 243s) goto 0x0000AC
0x000098:
    push (== self.room 261s)
    goto 0x0000B0
0x0000AC:
    push 1s
0x0000B0:
    if !pop goto 0x000104
0x0000B4:
    self.fake = (scr_marker[]:int32 self.sprite_index self.y self.x)
    push self.depth
    stog.depth* = (int32 self.fake)
    call (instance_destroy[]:int32 )
0x000104:
    exit
