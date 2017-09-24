0x000000:
    if !(== self.con 0s) goto 0x000058
0x000014:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.rotatenoise)
    self.con = 1s
    stog.alarm[4s] = 60s
0x000058:
    if !(== self.con 1s) goto 0x000084
0x00006C:
    self.image_angle = (+ self.image_angle 3s)
0x000084:
    if !(== self.con 2s) goto 0x0000CC
0x000098:
    call (caster_stop[]:int32 self.rotatenoise)
    self.con = 3s
    stog.alarm[4s] = 30s
0x0000CC:
    if !(== self.con 4s) goto 0x000154
0x0000E0:
    call (caster_play[]:int32 (var 1s) (var 1s) self.createnoise)
    call (instance_create[]:int32 (var 741s) self.y self.x)
    self.sprite_index = 2093s
    self.con = 5s
    stog.alarm[4s] = 60s
0x000154:
    if !(== self.con 6s) goto 0x0001D4
0x000168:
    [obj_heart].movement = 1s
    [obj_heart].x = (- self.x 8s)
    [obj_heart].y = (- self.y 8s)
    [obj_heart].shot = 1s
    [obj_heart].sprite_index = 2094s
    [obj_mettatonb_second].con = 15s
    call (instance_destroy[]:int32 )
0x0001D4:
    if !(> self.con 4s) goto 0x000200
0x0001E8:
    push (bool (keyboard_check_pressed[]:int32 (var 90s)))
    goto 0x000204
0x000200:
    push 0s
0x000204:
    if !pop goto 0x00026C
0x000208:
    if !(< (instance_number[]:int32 (var 739s)) 3s) goto 0x00026C
0x000224:
    call (instance_create[]:int32 (var 739s) (+ self.y 2s) (- self.x 4s))
    call (snd_play[]:int32 (var 116s))
0x00026C:
    exit
