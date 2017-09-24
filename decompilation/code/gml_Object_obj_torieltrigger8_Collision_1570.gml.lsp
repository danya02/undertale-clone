0x000000:
    other.x = other.xprevious
    other.y = other.yprevious
    global.interact = 1s
    call (instance_create[]:int32 (var 861s) (var 95s) (var 60s))
    pushenv 861s 0x000084
0x000058:
    call (path_start[]:int32 (var 0s) (var 0s) (var 5s) (var 26s))
0x000084:
    popenv 0x000058
0x000088:
    self.conversation = 1s
0x000094:
    exit
