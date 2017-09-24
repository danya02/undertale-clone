0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.dont = 0s
    stog.msg[0s] = "* Error./%%"
    if !(== self.how_bad_me_key 0s) goto 0x00025C
0x000074:
    if !(== self.wcon 0s) goto 0x0000A4
0x000088:
    push -5s
    push (!= 486s:flag 2s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x000174
0x0000AC:
    stog.msg[0s] = "* (You turned on the sink.)/%%"
    push -5s
    if !(== 486s:flag 13s) goto 0x0000F8
0x0000E0:
    stog.msg[0s] = "* (You really like to wash&  your hands.)/%%"
0x0000F8:
    call (caster_stop[]:int32 self.water)
    call (caster_loop[]:int32 (var 2.2d) (var 0.6d) self.water)
    push -5s
    stog.flag[(+ 486s:flag 1s)] = 486s
    self.wcon = 1s
    goto 0x000258
0x000174:
    if !(== self.wcon 1s) goto 0x0001C4
0x000188:
    stog.msg[0s] = "* (You turned off the sink.)/%%"
    call (caster_stop[]:int32 self.water)
    self.wcon = 0s
    goto 0x000258
0x0001C4:
    push -5s
    if !(== 486s:flag 2s) goto 0x0001FC
0x0001E0:
    push -5s
    push (== 481s:flag 0s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x000258
0x000204:
    pushenv 1570s 0x000218
0x00020C:
    self.uncan = 1s
0x000218:
    popenv 0x00020C
0x00021C:
    self.dont = 1s
    self.depth = (- self.depth 3s)
    stog.msg[0s] = "* (You turned on the sink.)/%%"
0x000258:
    goto 0x0002C0
0x00025C:
    self.how_bad_me_key = 0s
    stog.msg[0s] = "* (There's a red key lying&  in the sink.)/"
    stog.msg[1s] = "* (You took it and put it&  on your keychain.)/%%"
    stog.flag[487s] = 0s
    stog.flag[481s] = 2s
0x0002C0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0002E8:
    exit
