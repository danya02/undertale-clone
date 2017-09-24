0x000000:
    if !(<= self.conversation 15s) goto 0x000120
0x000014:
    call (snd_stop[]:int32 (var 52s))
    global.hshake = 3s
    global.shakespeed = 1.5d
    global.vshake = 3s
    call (snd_play[]:int32 (var 109s))
    global.hp = global.maxhp
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    if !(bool (instance_exists[]:int32 (var 610s))) goto 0x0000C0
0x0000B4:
    [obj_fakepellet].x = -800s
0x0000C0:
    self.conversation = 16s
    self.image_speed = 0s
    call (instance_create[]:int32 (var 606s) (+ self.y 10s) (+ self.x 200s))
    stog.alarm[10s] = 60s
0x000120:
    exit
