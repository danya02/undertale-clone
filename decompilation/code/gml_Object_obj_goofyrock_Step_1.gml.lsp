0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x000064
0x000050:
    push (== self.conversation 1s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x0000FC
0x00006C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 1s) (var 38s))
    stog.alarm[1s] = 11s
    global.interact = 1s
    self.conversation = (+ self.conversation 1s)
    if !(> 1570.x (+ self.x 15s)) goto 0x0000FC
0x0000F0:
    [obj_mainchara].hspeed = 1s
0x0000FC:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x00012C
0x000118:
    push (== self.conversation 4s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x00019C
0x000134:
    self.path_speed = 1s
    stog.alarm[1s] = 11s
    global.interact = 1s
    self.conversation = (+ self.conversation 1s)
    if !(> 1570.depth self.depth) goto 0x00019C
0x000190:
    [obj_mainchara].vspeed = -1s
0x00019C:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x0001CC
0x0001B8:
    push (== self.conversation 7s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x000250
0x0001D4:
    self.path_speed = 1s
    stog.alarm[1s] = 61s
    global.interact = 1s
    self.conversation = (+ self.conversation 1s)
    if !(< 1570.depth self.depth) goto 0x00023C
0x000230:
    [obj_mainchara].vspeed = 1s
0x00023C:
    stog.alarm[2s] = 11s
0x000250:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x000288
0x00026C:
    push (== self.conversation 10.5d)
    goto 0x00028C
0x000288:
    push 0s
0x00028C:
    if !pop goto 0x0002E8
0x000290:
    pushenv 1350s 0x0002A4
0x000298:
    self.image_index = 0s
0x0002A4:
    popenv 0x000298
0x0002A8:
    self.path_speed = 2s
    stog.alarm[1s] = 11s
    self.conversation = (+ self.conversation 0.5d)
0x0002E8:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x000318
0x000304:
    push (== self.conversation 13s)
    goto 0x00031C
0x000318:
    push 0s
0x00031C:
    if !pop goto 0x000390
0x000320:
    self.path_speed = 1s
    stog.alarm[1s] = 21s
    global.interact = 1s
    self.conversation = (+ self.conversation 1s)
    if !(> 1570.x (+ self.x 15s)) goto 0x000390
0x000384:
    [obj_mainchara].hspeed = 1s
0x000390:
    if !(== self.conversation 15s) goto 0x0003B0
0x0003A4:
    self.x = 280s
0x0003B0:
    exit
