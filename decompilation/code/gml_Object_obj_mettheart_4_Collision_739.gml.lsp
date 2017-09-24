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
    if !pop goto 0x0000A8
0x000088:
    if !(> global.turntimer 0s) goto 0x0000A8
0x00009C:
    global.turntimer = 0s
0x0000A8:
    global.ratings = (+ global.ratings 20s)
0x0000C0:
    exit
