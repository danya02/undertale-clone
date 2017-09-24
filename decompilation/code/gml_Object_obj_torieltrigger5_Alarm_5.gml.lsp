0x000000:
    pushenv (int32 self.toriel) 0x00001C
0x000010:
    self.sprite_index = 1103s
0x00001C:
    popenv 0x000010
0x000020:
    push 0s
    stog.phone* = (int32 self.toriel)
    pushenv (int32 self.toriel) 0x000074
0x000048:
    call (path_start[]:int32 (var 0s) (var 0s) (var 5s) (var 18s))
0x000074:
    popenv 0x000048
0x000078:
    self.conversation = 4s
0x000084:
    exit
