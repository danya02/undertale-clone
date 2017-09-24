0x000000:
    self.buffer = 0s
    self.active = 1s
    self.doorx = 0s
    self.open = -1s
    self.side = 0s
    if !(== self.room 139s) goto 0x00012C
0x000050:
    self.sprite_index = 1874s
    if !(== global.entrance 5s) goto 0x000088
0x000070:
    self.open = 1s
    self.doorx = 8s
0x000088:
    push -5s
    if !(== 492s:flag 1s) goto 0x0000F4
0x0000A4:
    call (instance_create[]:int32 (var 2s) (+ self.y 52s) (+ self.x 0s))
    self.active = 0s
    self.doorx = 0s
    goto 0x000128
0x0000F4:
    call (instance_create[]:int32 (var 809s) (+ self.y 50s) (+ self.x 0s))
0x000128:
    goto 0x000204
0x00012C:
    self.side = 1s
    if !(== global.entrance 4s) goto 0x000164
0x00014C:
    self.open = 1s
    self.doorx = 8s
0x000164:
    push -5s
    if !(== 492s:flag 1s) goto 0x0001D0
0x000180:
    call (instance_create[]:int32 (var 2s) (+ self.y 51s) (+ self.x 15s))
    self.active = 0s
    self.doorx = 0s
    goto 0x000204
0x0001D0:
    call (instance_create[]:int32 (var 810s) (+ self.y 50s) (+ self.x 0s))
0x000204:
    self.con = 0s
    self.myinteract = 0s
0x00021C:
    exit
