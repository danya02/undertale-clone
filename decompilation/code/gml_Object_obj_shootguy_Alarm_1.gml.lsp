0x000000:
    if !(== self.room 152s) goto 0x0000C0
0x000014:
    self.idealammo = 2s
    if !(== self.active 1s) goto 0x000048
0x000034:
    stog.alarm[5s] = 1s
0x000048:
    self.gridl = 120s
    self.gridr = 180s
    self.gridu = 60s
    self.gridd = 120s
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 140s))
    call (instance_create[]:int32 (var 1242s) (var 100s) (var 140s))
0x0000C0:
    if !(== self.room 150s) goto 0x000210
0x0000D4:
    self.idealammo = 2s
    if !(== self.active 1s) goto 0x000108
0x0000F4:
    stog.alarm[5s] = 1s
0x000108:
    self.gridl = 120s
    self.gridr = 200s
    self.gridu = 40s
    self.gridd = 120s
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 120s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 140s))
    call (instance_create[]:int32 (var 1242s) (var 100s) (var 140s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 160s))
    call (instance_create[]:int32 (var 1242s) (var 80s) (var 160s))
    call (instance_create[]:int32 (var 1242s) (var 100s) (var 160s))
0x000210:
    if !(== self.room 173s) goto 0x000318
0x000224:
    self.idealammo = 1s
    if !(== self.active 1s) goto 0x000258
0x000244:
    stog.alarm[5s] = 1s
0x000258:
    self.gridl = 120s
    self.gridr = 220s
    self.gridu = 40s
    self.gridd = 120s
    call (instance_create[]:int32 (var 1242s) (var 40s) (var 180s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 180s))
    call (instance_create[]:int32 (var 1242s) (var 80s) (var 180s))
    call (instance_create[]:int32 (var 1242s) (var 100s) (var 180s))
0x000318:
    if !(== self.room 175s) goto 0x000468
0x00032C:
    self.idealammo = 1s
    if !(== self.active 1s) goto 0x000360
0x00034C:
    stog.alarm[5s] = 1s
0x000360:
    self.gridl = 120s
    self.gridr = 220s
    self.gridu = 20s
    self.gridd = 120s
    call (instance_create[]:int32 (var 1242s) (var 20s) (var 180s))
    call (instance_create[]:int32 (var 1242s) (var 40s) (var 140s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 160s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 200s))
    call (instance_create[]:int32 (var 1242s) (var 80s) (var 140s))
    call (instance_create[]:int32 (var 1242s) (var 80s) (var 180s))
0x000468:
    if !(== self.room 205s) goto 0x0005B8
0x00047C:
    self.idealammo = 2s
    if !(== self.active 1s) goto 0x0004B0
0x00049C:
    stog.alarm[5s] = 1s
0x0004B0:
    self.gridl = 120s
    self.gridr = 220s
    self.gridu = 20s
    self.gridd = 120s
    call (instance_create[]:int32 (var 1242s) (var 40s) (var 160s))
    call (instance_create[]:int32 (var 1242s) (var 80s) (var 160s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 140s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 160s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 180s))
    call (instance_create[]:int32 (var 1242s) (var 60s) (var 200s))
0x0005B8:
    if !(> self.win 0s) goto 0x0005FC
0x0005CC:
    pushenv 1242s 0x0005E0
0x0005D4:
    call (instance_destroy[]:int32 )
0x0005E0:
    popenv 0x0005D4
0x0005E4:
    pushenv 1239s 0x0005F8
0x0005EC:
    call (instance_destroy[]:int32 )
0x0005F8:
    popenv 0x0005EC
0x0005FC:
    exit
