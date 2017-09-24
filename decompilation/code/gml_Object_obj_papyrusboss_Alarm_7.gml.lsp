0x000000:
    if !(== self.bonetalk 0s) goto 0x0000E4
0x000014:
    stog.msg[0s] = " WHAT THE HECK!/"
    stog.msg[1s] = " THAT'S MY& SPECIAL ATTACK!/%%"
    global.typer = 22s
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk = 1s
0x0000E4:
    if !(== self.bonetalk 1s) goto 0x000114
0x0000F8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x0001C0
0x00011C:
    stog.msg[0s] = " HEY^1!& YOU STUPID DOG!/%%"
    global.typer = 22s
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk = 2s
    [blt_tobydogbone].sprite_index = 81s
    [blt_tobydogbone].image_index = 0s
    [blt_tobydogbone].image_speed = 0s
0x0001C0:
    if !(== self.bonetalk 2s) goto 0x0001F0
0x0001D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001F4
0x0001F0:
    push 0s
0x0001F4:
    if !pop goto 0x00029C
0x0001F8:
    stog.msg[0s] = " DO YOU HEAR& ME!?/"
    stog.msg[1s] = " STOP MUNCHING ON& THAT BONE!!!/%%"
    global.typer = 22s
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk = 3s
    [blt_tobydogbone].image_index = 1s
0x00029C:
    if !(== self.bonetalk 3s) goto 0x0002CC
0x0002B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002D0
0x0002CC:
    push 0s
0x0002D0:
    if !pop goto 0x0003C8
0x0002D4:
    stog.msg[0s] = " HEY!!!& WHAT ARE YOU& DOING!!!/"
    stog.msg[1s] = " COME BACK HERE& WITH MY SPECIAL& ATTACK!!!/%%"
    stog.msg[2s] = " .../"
    stog.msg[3s] = " OH WELL./%%"
    global.typer = 22s
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk = 4s
    [blt_tobydogbone].image_speed = 0.2d
    [blt_tobydogbone].sprite_index = 83s
    [blt_tobydogbone].hspeed = 1s
0x0003C8:
    if !(== self.bonetalk 4s) goto 0x0003F8
0x0003DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003FC
0x0003F8:
    push 0s
0x0003FC:
    if !pop goto 0x0004BC
0x000400:
    global.border = 5s
    stog.msg[0s] = " .../"
    stog.msg[1s] = " OH WELL./"
    stog.msg[2s] = " I'LL JUST USE& A REALLY COOL& REGULAR ATTACK./%%"
    global.typer = 22s
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.bonetalk = 5s
0x0004BC:
    stog.alarm[7s] = 2s
    if !(== self.bonetalk 5s) goto 0x000500
0x0004E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000504
0x000500:
    push 0s
0x000504:
    if !pop goto 0x000578
0x000508:
    stog.msg[0s] = "* Papyrus is getting ready&  for a regular attack."
    pushenv (int32 self.blcon) 0x00053C
0x000530:
    call (instance_destroy[]:int32 )
0x00053C:
    popenv 0x000530
0x000540:
    pushenv 639s 0x000554
0x000548:
    call (instance_destroy[]:int32 )
0x000554:
    popenv 0x000548
0x000558:
    self.dontcancel = 0s
    stog.alarm[7s] = -2s
0x000578:
    exit
