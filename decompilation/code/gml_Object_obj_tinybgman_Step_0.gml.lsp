0x000000:
    if !(== self.c 1s) goto 0x00004C
0x000014:
    self.vspeed = 0s
    self.image_speed = 0s
    stog.alarm[0s] = 30s
    self.c = 2s
0x00004C:
    if !(== self.c 3s) goto 0x0000A8
0x000060:
    self.hspeed = 0.2d
    self.image_speed = 0.25d
    stog.alarm[0s] = 30s
    self.c = 4s
0x0000A8:
    if !(== self.c 5s) goto 0x0000F4
0x0000BC:
    self.hspeed = 0s
    self.image_speed = 0s
    stog.alarm[0s] = 30s
    self.c = 6s
0x0000F4:
    if !(== self.c 7s) goto 0x000150
0x000108:
    self.hspeed = -0.2d
    self.image_speed = 0.25d
    stog.alarm[0s] = 60s
    self.c = 8s
0x000150:
    if !(== self.c 9s) goto 0x00019C
0x000164:
    self.hspeed = 0s
    self.image_speed = 0s
    stog.alarm[0s] = 30s
    self.c = 10s
0x00019C:
    if !(== self.c 11s) goto 0x0001F8
0x0001B0:
    self.hspeed = 0.2d
    self.image_speed = 0.2d
    stog.alarm[0s] = 30s
    self.c = 12s
0x0001F8:
    if !(== self.c 13s) goto 0x000260
0x00020C:
    self.hspeed = 0s
    self.vspeed = -0.2d
    self.image_speed = 0.2d
    stog.alarm[0s] = 40s
    self.c = 14s
0x000260:
    if !(== self.c 15s) goto 0x0002A0
0x000274:
    self.vspeed = 0s
    self.c = 16s
    stog.alarm[0s] = 30s
0x0002A0:
    if !(== self.c 17s) goto 0x0002F0
0x0002B4:
    pushenv 970s 0x0002C8
0x0002BC:
    self.man = 0s
0x0002C8:
    popenv 0x0002BC
0x0002CC:
    pushenv 970s 0x0002E0
0x0002D4:
    self.image_index = 0s
0x0002E0:
    popenv 0x0002D4
0x0002E4:
    call (instance_destroy[]:int32 )
0x0002F0:
    exit
