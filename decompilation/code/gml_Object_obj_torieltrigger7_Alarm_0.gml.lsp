0x000000:
    self.toriel = (instance_create[]:int32 (var 861s) (var 120s) (var 54s))
    push 3s
    stog.facing* = (int32 self.toriel)
    push 1108s
    stog.sprite_index* = (int32 self.toriel)
    self.toriel = (== self.direction 180s)
    pushenv 1570s 0x000090
0x000078:
    self.x = 38s
    self.y = 144s
0x000090:
    popenv 0x000078
0x000094:
    exit
