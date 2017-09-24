0x000000:
    self.size = 1s
    self.con = 0s
    self.timer = -6s
    self.shake = 0s
    global.turntimer = 40s
    stog.alarm[1s] = 1s
    self.another = 0s
    pushenv 414s 0x000070
0x000064:
    self.dark = 0s
0x000070:
    popenv 0x000064
0x000074:
    exit
