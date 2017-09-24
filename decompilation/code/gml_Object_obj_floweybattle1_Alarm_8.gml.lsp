0x000000:
    pushenv (int32 self.funwriter) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    global.typer = 7s
    self.blcon = (instance_create[]:int32 (var 187s) self.y (+ self.x self.sprite_width))
    self.conversation = 12s
    global.msc = 673s
    self.blconwriter = (instance_create[]:int32 (var 782s) (+ 187.y 10s) (+ 187.x 40s))
0x0000B0:
    exit
