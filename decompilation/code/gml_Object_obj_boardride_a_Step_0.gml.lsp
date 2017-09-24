0x000000:
    if !(== self.active 1s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00016C
0x000030:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (+ self.y 18s) (+ self.x 24s) (+ self.y 2s) (+ self.x 16s))) goto 0x00016C
0x000098:
    call (scr_tempsave[]:int32 )
    global.interact = 1s
    global.phasing = 1s
    self.hspeed = 3s
    [obj_mainchara].hspeed = 3s
    [obj_mainchara].image_speed = 0s
    call (scr_musfadeout[]:int32 (var 0.006d))
    global.currentsong = (caster_load[]:int32 (var "music/ambientwater.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0s) global.currentsong)
    call (scr_musfadein[]:int32 (var 0.005d))
    self.active = 2s
0x00016C:
    if !(== self.active 2s) goto 0x000194
0x000180:
    push (>= self.x 1000s)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x0001E8
0x00019C:
    self.x = 1000s
    self.hspeed = 0s
    [obj_mainchara].image_speed = 0.25d
    stog.alarm[2s] = 8s
    self.active = 3s
0x0001E8:
    if !(== self.active 4s) goto 0x000244
0x0001FC:
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_speed = 0s
    global.interact = 0s
    self.active = 5s
    self.hspeed = -3s
    global.phasing = 0s
0x000244:
    exit
