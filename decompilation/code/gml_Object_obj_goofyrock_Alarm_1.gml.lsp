0x000000:
    pushenv 1570s 0x000014
0x000008:
    self.uncan = 0s
0x000014:
    popenv 0x000008
0x000018:
    global.interact = 0s
    self.conversation = (+ self.conversation 1s)
    self.path_speed = 0s
    [obj_mainchara].speed = 0s
    if !(== self.conversation 9s) goto 0x000080
0x000068:
    pushenv 1350s 0x00007C
0x000070:
    self.image_index = 1s
0x00007C:
    popenv 0x000070
0x000080:
    if !(> self.conversation 13s) goto 0x0000D8
0x000094:
    stog.flag[33s] = 1s
    self.x = 280s
    self.conversation = 15s
    pushenv 1350s 0x0000D4
0x0000C8:
    self.image_index = 1s
0x0000D4:
    popenv 0x0000C8
0x0000D8:
    exit
