0x000000:
    stog.flag[7s] = 1s
    global.interact = 1s
    self.thisblend = (merge_color[]:int32 (var 0.2d) (var 4235519) (var 0s))
    [obj_readablesolid].image_blend = self.thisblend
    [obj_readablesolid].direction = 90s
    [obj_readablesolid].image_speed = 0s
    [obj_readablesolid].fun = 1s
    [obj_mainchara].visible = 0s
    self.mc = (scr_marker[]:int32 (var 1044s) 1570.y 1570.x)
    push 1570.depth
    stog.depth* = (int32 self.mc)
    push self.thisblend
    stog.image_blend* = (int32 self.mc)
    self.con = 1s
    self.blk = 2.3d
    self.pap = 1314s
    self.tor = 1311s
    self.asg = 1316s
    self.und = 1313s
    self.sans = 1312s
    self.al = 1315s
    push 1325s
    stog.sprite_index* = (int32 self.pap)
    push 1112s
    stog.sprite_index* = (int32 self.tor)
    push 1907s
    stog.sprite_index* = (int32 self.asg)
    push 1651s
    stog.sprite_index* = (int32 self.al)
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    push 1412s
    stog.sprite_index* = (int32 self.und)
    self.o_music = (caster_load[]:int32 (var "music/leave.ogg"))
0x000208:
    exit
