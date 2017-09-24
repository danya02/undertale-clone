0x000000:
    if !(== global.interact 0s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000B0
0x000030:
    global.interact = 1s
    self.con = 1s
    self.shock = (caster_load[]:int32 (var "music/dununnn.ogg"))
    self.predummy = (caster_load[]:int32 (var "music/predummy.ogg"))
    self.dummy = 1055s
    [obj_mainchara].cutscene = 1s
    push -1s
    self.curview = 0s:view_yview
0x0000B0:
    exit
