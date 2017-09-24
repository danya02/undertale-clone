0x000000:
    pushenv (int32 self.col2) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    pushenv 265s 0x000034
0x000028:
    self.down = 1s
0x000034:
    popenv 0x000028
0x000038:
    if !(< global.invc 1s) goto 0x000070
0x00004C:
    pushenv 272s 0x00006C
0x000054:
    self.hitno = (+ self.hitno 1s)
0x00006C:
    popenv 0x000054
0x000070:
    pushenv 282s 0x000090
0x000078:
    self.hitno = (+ self.hitno 1s)
0x000090:
    popenv 0x000078
0x000094:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x0000C8:
    exit
