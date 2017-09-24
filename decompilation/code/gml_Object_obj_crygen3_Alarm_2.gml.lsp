0x000000:
    pushenv (int32 self.blconwd) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    stog.msg[0s] = "do you&like&it..."
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    stog.alarm[3s] = 100s
0x0000C0:
    exit
