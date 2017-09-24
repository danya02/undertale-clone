0x000000:
    self.conversation = (+ self.conversation 1s)
    pushenv 1337s 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    popenv 0x000020
0x000030:
    exit
