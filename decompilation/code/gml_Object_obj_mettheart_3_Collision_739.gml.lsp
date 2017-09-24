0x000000:
    call (snd_play[]:int32 (var 126s))
    call (event_user[]:int32 (var 0s))
    pushenv -2s 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    popenv 0x000030
0x000040:
    self.life = (- self.life 40s)
    if !(< self.life 1s) goto 0x000080
0x00006C:
    push (!= self.movetype 1s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x0001A8
0x000088:
    pushenv 442s 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    popenv 0x000090
0x0000A0:
    pushenv 433s 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    popenv 0x0000A8
0x0000B8:
    pushenv 1363s 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    popenv 0x0000C0
0x0000D0:
    pushenv 431s 0x0000F0
0x0000D8:
    self.flash = 5s
    self.type = 2s
0x0000F0:
    popenv 0x0000D8
0x0000F4:
    pushenv 434s 0x000108
0x0000FC:
    call (instance_destroy[]:int32 )
0x000108:
    popenv 0x0000FC
0x00010C:
    call (event_user[]:int32 (var 1s))
    self.q = 0s
    if (<= (int32 self.num) 0) goto 0x0001A4
0x00014C:
    push (int32 self.num)
    push 0s
    push -1s
    stog.visible* = (int32 (int32 self.q):kid)
    self.q = (+ self.q 1s)
    if (bool (- pop 1)) goto 0x00014C
0x0001A4:
    push (- pop 1)
    pop
0x0001A8:
    global.ratings = (+ global.ratings 20s)
0x0001C0:
    exit
