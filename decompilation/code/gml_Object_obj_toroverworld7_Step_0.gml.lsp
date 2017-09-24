0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x000064
0x000050:
    push (== self.conversation 1s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x000148
0x00006C:
    global.interact = 0s
    self.conversation = 2s
    self.myinteract = 0s
    call (path_start[]:int32 (var 0s) (var 2s) (var 4s) (var 41s))
    call (instance_create[]:int32 (var 898s) (var 0s) (var 7s))
    self.image_speed = 0.3d
    global.plot = 8.5d
    global.currentsong = (caster_load[]:int32 (var "music/tension.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x000148:
    call (scr_npcdir[]:int32 (var 0s))
0x00015C:
    exit
