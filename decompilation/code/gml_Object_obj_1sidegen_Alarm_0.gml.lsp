0x000000:
    call (script_execute[]:int32 (var 6s) (var 0s) (var 125s))
    self.x = self.xx
    self.y = self.yy
    if !(== self.bullettype 0s) goto 0x0000CC
0x000058:
    call (script_execute[]:int32 (var 156s) (var 0s) (var 0s) (var 0s) (var 0s) (var 0s) (var 0s) (var 0s) (var 0.2d) (var 2.5d) (var 124s))
0x0000CC:
    if !(== self.bullettype 1s) goto 0x00014C
0x0000E0:
    self.iii = (instance_create[]:int32 (var 631s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x00014C
0x000120:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x00014C:
    if !(== self.bullettype 2s) goto 0x0001CC
0x000160:
    self.iii = (instance_create[]:int32 (var 622s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x0001CC
0x0001A0:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x0001CC:
    if !(== self.bullettype 3s) goto 0x00024C
0x0001E0:
    self.iii = (instance_create[]:int32 (var 635s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x00024C
0x000220:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x00024C:
    if !(== self.bullettype 4s) goto 0x0003F0
0x000260:
    push (var 628s)
    push -5s
    push 2s:idealborder
    push -5s
    self.iii = (instance_create[]:int32 (+ (+ 3s:idealborder (round[]:int32 (random[]:int32 (- (- -5s 2s:idealborder) 60s)))) 30s) -5s 0s:idealborder)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000324
0x0002F8:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x000324:
    push (var 628s)
    push -5s
    push 2s:idealborder
    push -5s
    self.iii = (instance_create[]:int32 (+ (+ 3s:idealborder (round[]:int32 (random[]:int32 (- (- -5s 2s:idealborder) 60s)))) 30s) -5s (- 1s:idealborder 4s))
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x0003F0
0x0003C4:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x0003F0:
    if !(== self.bullettype 5s) goto 0x00055C
0x000404:
    self.num = (+ self.num 1s)
    call (script_execute[]:int32 (var 40s) (var 0s) (var 125s))
    self.x = (- self.x 20s)
    self.y = (+ self.y 5s)
    self.iii = (instance_create[]:int32 (var 629s) self.y self.x)
    self.sum = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x00055C
0x0004C0:
    if !(== self.num (- 4s self.sum)) goto 0x0004F4
0x0004E0:
    push (== self.specgreen 1s)
    goto 0x0004F8
0x0004F4:
    push 0s
0x0004F8:
    if !pop goto 0x000530
0x0004FC:
    push 1s
    stog.green* = (int32 self.iii)
    push 65280
    stog.image_blend* = (int32 self.iii)
0x000530:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x00055C:
    if !(== self.bullettype 6s) goto 0x000730
0x000570:
    self.num = (+ self.num 1s)
    call (script_execute[]:int32 (var 40s) (var 0s) (var 125s))
    self.x = (- self.x 20s)
    self.y = (+ self.y 5s)
    self.iii = (instance_create[]:int32 (var 630s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000730
0x00061C:
    if !(== (instance_exists[]:int32 (var 597s)) 0s) goto 0x0006A0
0x000638:
    if !(== self.num 4s) goto 0x000660
0x00064C:
    push (== self.specgreen 1s)
    goto 0x000664
0x000660:
    push 0s
0x000664:
    if !pop goto 0x00069C
0x000668:
    push 1s
    stog.green* = (int32 self.iii)
    push 65280
    stog.image_blend* = (int32 self.iii)
0x00069C:
    goto 0x000704
0x0006A0:
    if !(== self.num 8s) goto 0x0006C8
0x0006B4:
    push (== self.specgreen 1s)
    goto 0x0006CC
0x0006C8:
    push 0s
0x0006CC:
    if !pop goto 0x000704
0x0006D0:
    push 1s
    stog.green* = (int32 self.iii)
    push 65280
    stog.image_blend* = (int32 self.iii)
0x000704:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x000730:
    if !(== self.bullettype 7s) goto 0x00089C
0x000744:
    push -5s
    push 0s:idealborder
    push -5s
    self.x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 3s)
    push -5s
    self.y = (- 2s:idealborder 25s)
    self.iii = (instance_create[]:int32 (var 617s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x00087C
0x0007F8:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    if !(< global.hp 8s) goto 0x000850
0x000838:
    push 2s
    stog.dmg* = (int32 self.iii)
0x000850:
    if !(< global.hp 6s) goto 0x00087C
0x000864:
    push 1s
    stog.dmg* = (int32 self.iii)
0x00087C:
    if !(<= global.hp 2s) goto 0x00089C
0x000890:
    global.turntimer = -100s
0x00089C:
    if !(== self.bullettype 8s) goto 0x000A08
0x0008B0:
    push -5s
    push 0s:idealborder
    push -5s
    self.x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 3s)
    push -5s
    self.y = (+ 2s:idealborder 5s)
    self.iii = (instance_create[]:int32 (var 618s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x0009E8
0x000964:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    if !(< global.hp 8s) goto 0x0009BC
0x0009A4:
    push 2s
    stog.dmg* = (int32 self.iii)
0x0009BC:
    if !(< global.hp 6s) goto 0x0009E8
0x0009D0:
    push 1s
    stog.dmg* = (int32 self.iii)
0x0009E8:
    if !(<= global.hp 2s) goto 0x000A08
0x0009FC:
    global.turntimer = -100s
0x000A08:
    if !(== self.bullettype 9s) goto 0x000AC8
0x000A1C:
    call (script_execute[]:int32 (var 80s) (var 0s) (var 125s))
    self.x = (- self.x 40s)
    self.y = (- self.y 20s)
    self.iii = (instance_create[]:int32 (var 619s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000AC8
0x000AB0:
    push 1s
    stog.dmg* = (int32 self.iii)
0x000AC8:
    if !(== self.bullettype 10s) goto 0x000E1C
0x000ADC:
    push -5s
    push 0s:idealborder
    push -5s
    self.x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 3s)
    push -5s
    self.y = (- 2s:idealborder 25s)
    self.iii = (instance_create[]:int32 (var 617s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000C14
0x000B90:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    if !(< global.hp 8s) goto 0x000BE8
0x000BD0:
    push 2s
    stog.dmg* = (int32 self.iii)
0x000BE8:
    if !(< global.hp 6s) goto 0x000C14
0x000BFC:
    push 1s
    stog.dmg* = (int32 self.iii)
0x000C14:
    if !(<= global.hp 2s) goto 0x000C34
0x000C28:
    global.turntimer = -100s
0x000C34:
    push -5s
    self.x = (+ 0s:idealborder 2s)
    push -5s
    self.y = (+ 2s:idealborder 90s)
    self.iiii = (instance_create[]:int32 (var 612s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iiii)) goto 0x000D38
0x000CB4:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iiii)
    if !(< global.hp 8s) goto 0x000D0C
0x000CF4:
    push 2s
    stog.dmg* = (int32 self.iiii)
0x000D0C:
    if !(< global.hp 6s) goto 0x000D38
0x000D20:
    push 1s
    stog.dmg* = (int32 self.iiii)
0x000D38:
    push -5s
    self.x = (- 1s:idealborder 18s)
    self.iiiii = (instance_create[]:int32 (var 612s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iiiii)) goto 0x000E1C
0x000D98:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iiiii)
    if !(< global.hp 8s) goto 0x000DF0
0x000DD8:
    push 2s
    stog.dmg* = (int32 self.iiiii)
0x000DF0:
    if !(< global.hp 6s) goto 0x000E1C
0x000E04:
    push 1s
    stog.dmg* = (int32 self.iiiii)
0x000E1C:
    if !(== self.bullettype 11s) goto 0x000EC8
0x000E30:
    call (script_execute[]:int32 (var 30s) (var 30s) (var 1s) (var 126s))
    self.gen = (instance_create[]:int32 (var 644s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.gen)) goto 0x000EC8
0x000E9C:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
0x000EC8:
    stog.alarm[0s] = self.firingspeed
0x000EE0:
    exit
