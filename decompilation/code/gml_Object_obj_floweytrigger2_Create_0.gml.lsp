0x000000:
    self.image_yscale = 1s
    self.image_xscale = 100s
    self.conversation = 0s
    self.q = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.a = (ini_read_real[]:int32 (var 0s) (var "Alter") (var "Flowey"))
    self.b = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    self.c = (ini_read_real[]:int32 (var 0s) (var "SPECIALK") (var "Flowey"))
    self.d = (ini_read_real[]:int32 (var 0s) (var "alter2") (var "Flowey"))
    call (ini_close[]:int32 )
    if (> self.a 0s) goto 0x000150
0x000128:
    if (> self.b 0s) goto 0x000150
0x00013C:
    push (> self.c 0s)
    goto 0x000154
0x000150:
    push 1s
0x000154:
    if !pop goto 0x000164
0x000158:
    self.q = 1s
0x000164:
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x000184
0x000178:
    self.q = 0s
0x000184:
    if !(> self.d 0s) goto 0x0001A4
0x000198:
    self.q = 1s
0x0001A4:
    if !(== self.q 1s) goto 0x0001DC
0x0001B8:
    pushenv 875s 0x0001CC
0x0001C0:
    call (instance_destroy[]:int32 )
0x0001CC:
    popenv 0x0001C0
0x0001D0:
    call (instance_destroy[]:int32 )
0x0001DC:
    if !(> global.plot 27s) goto 0x000214
0x0001F0:
    pushenv 875s 0x000204
0x0001F8:
    call (instance_destroy[]:int32 )
0x000204:
    popenv 0x0001F8
0x000208:
    call (instance_destroy[]:int32 )
0x000214:
    self.dingus = 0s
0x000220:
    exit
