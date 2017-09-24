0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(< global.interact 1s) goto 0x000220
0x000048:
    if !(== self.halt 1s) goto 0x00007C
0x00005C:
    self.speed = self.memoryspeed
    self.image_speed = self.memoryispeed
0x00007C:
    push -1s
    stog.movementalarm[(- 0s:movementalarm 1s)] = 0s
    push -1s
    stog.movementalarm[(- 1s:movementalarm 1s)] = 1s
    push -1s
    if !(== 0s:movementalarm 0s) goto 0x000194
0x0000E0:
    self.i = (round[]:int32 (random[]:int32 (var 3s)))
    self.direction = (* self.i 90s)
    self.speed = 2s
    self.stopped = 0s
    self.image_index = 1s
    self.image_speed = 0.2d
    stog.movementalarm[1s] = (+ 10s (round[]:int32 (random[]:int32 (var 10s))))
    call (scr_npcdir[]:int32 (var 0s))
0x000194:
    push -1s
    if !(== 1s:movementalarm 0s) goto 0x00021C
0x0001B0:
    self.image_speed = 0s
    self.image_index = 0s
    self.speed = 0s
    self.halt = 0s
    self.stopped = 1s
    stog.movementalarm[0s] = (+ 30s (round[]:int32 (random[]:int32 (var 20s))))
0x00021C:
    goto 0x000298
0x000220:
    if !(== self.stopped 0s) goto 0x000298
0x000234:
    self.memoryispeed = self.image_speed
    self.memoryspeed = self.speed
    if !(== self.myinteract 0s) goto 0x000274
0x000268:
    self.image_speed = 0s
0x000274:
    self.speed = 0s
    self.stopped = 1s
    self.halt = 1s
0x000298:
    if !(== self.myinteract 1s) goto 0x000300
0x0002AC:
    global.interact = 1s
    self.image_speed = 0.2d
    call (scr_npcdir[]:int32 (var 0s))
    stog.alarm[0s] = 1s
    self.myinteract = 2s
0x000300:
    if !(== self.myinteract 3s) goto 0x00036C
0x000314:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x00036C
0x000330:
    global.interact = 0s
    self.myinteract = 0s
    self.image_speed = self.memoryispeed
    call (scr_npcdir[]:int32 (var 0s))
0x00036C:
    exit
