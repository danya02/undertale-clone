0x000000:
    global.turntimer = 200s
    self.firingspeed = global.firingrate
    call (action_set_alarm[]:int32 (var 0s) (var 20s))
0x000038:
    exit
