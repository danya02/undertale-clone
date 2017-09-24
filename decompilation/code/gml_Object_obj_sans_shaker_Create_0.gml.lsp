0x000000:
    self.intensity = 10s
    stog.alarm[0s] = 1s
    self.self_d = 0s
    pushenv 512s 0x000060
0x000034:
    self.self_d = (+ self.self_d 1s)
    call (event_user[]:int32 (var 0s))
0x000060:
    popenv 0x000034
0x000064:
    self.self_d = 1s
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 0s
0x000098:
    exit
