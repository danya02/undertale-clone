0x000000:
    if !(bool (instance_exists[]:int32 (var 264s))) goto 0x000030
0x000018:
    pushenv 264s 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    popenv 0x000020
0x000030:
    self.gen = (instance_create[]:int32 (var 264s) (var 0s) (var 0s))
    if !(bool (instance_exists[]:int32 self.gen)) goto 0x00008C
0x000070:
    push self.rating
    stog.rating* = (int32 self.gen)
0x00008C:
    self.i = 0s
    if !(== self.lesson -51s) goto 0x0002FC
0x0000AC:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 2s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.4d) (var 1s) (var 0s) (var 4s))
0x0002FC:
    if !(== self.lesson -50s) goto 0x000470
0x000310:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
0x000470:
    if !(== self.lesson -40s) goto 0x000508
0x000484:
    if (<= 15s 0) goto 0x0004E0
0x00049C:
    push 15s
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 4s))
    if (bool (- pop 1)) goto 0x00049C
0x0004E0:
    push (- pop 1)
    pop
    push 1s
    stog.dmg* = (int32 self.gen)
    self.dmg = 1s
0x000508:
    if !(== self.lesson -39s) goto 0x0005E8
0x00051C:
    self.rating = 12s
    if (<= 12s 0) goto 0x00058C
0x000540:
    push 12s
    call (scr_sr[]:int32 (var 1.2d) (var 0s) (var 0s) (var 4s))
    if (bool (- pop 1)) goto 0x000540
0x00058C:
    push (- pop 1)
    pop
    push 1s
    stog.dmg* = (int32 self.gen)
    self.dmg = 1s
    stog.rating* = (+ (int32 self.gen):rating 2s)
    global.turntimer = 300s
0x0005E8:
    push (int32 self.gen)
    if !(== self.lesson -38s) goto 0x0007E4
0x0005FC:
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0.8d) (var 0s) (var 0s) (var 3s))
    push 16s
    stog.rating* = (int32 self.gen)
    global.turntimer = 300s
    push 1s
    stog.dmg* = (int32 self.gen)
    self.dmg = 1s
0x0007E4:
    if !(== self.lesson -37s) goto 0x0009E0
0x0007F8:
    global.turntimer = 300s
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 1s))
    push 20s
    stog.rating* = (int32 self.gen)
    push 1s
    stog.dmg* = (int32 self.gen)
    self.dmg = 1s
0x0009E0:
    if !(>= self.lesson -36s) goto 0x000A08
0x0009F4:
    push (< self.lesson -25s)
    goto 0x000A0C
0x000A08:
    push 0s
0x000A0C:
    if !pop goto 0x000AC0
0x000A10:
    global.turntimer = 300s
    push 34s
    stog.rating* = (int32 self.gen)
    if (<= 3s 0) goto 0x000A98
0x000A4C:
    push 3s
    call (scr_sr[]:int32 (var 0.25d) (var 1s) (var 0s) (var 3s))
    if (bool (- pop 1)) goto 0x000A4C
0x000A98:
    push (- pop 1)
    pop
    push 1s
    stog.dmg* = (int32 self.gen)
    self.dmg = 1s
0x000AC0:
    if !(== self.lesson -5s) goto 0x000D80
0x000AD4:
    call (scr_sr[]:int32 (var 0.5d) (var 2s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0.5d) (var 2s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0.5d) (var 6.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 3s))
0x000D80:
    if !(== self.lesson -6s) goto 0x00105C
0x000D94:
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.8d) (var 0.5d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.8d) (var 0.5d) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 0s))
0x00105C:
    if !(== self.lesson -7s) goto 0x0010E4
0x001070:
    if (<= 18s 0) goto 0x0010D4
0x001088:
    push 18s
    call (scr_sr[]:int32 (var 0.4d) (var 0s) (var 0s) (var 4s))
    if (bool (- pop 1)) goto 0x001088
0x0010D4:
    push (- pop 1)
    pop
    self.refuse = 1s
0x0010E4:
    if !(== self.lesson -8s) goto 0x0012AC
0x0010F8:
    call (scr_sr[]:int32 (var 1s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.5d) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0.47d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.8d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1s) (var 0s) (var 0s) (var 0s))
0x0012AC:
    if !(== self.lesson -9s) goto 0x0016E4
0x0012C0:
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 0.5d) (var 0s) (var 3s))
0x0016E4:
    if !(== self.lesson -10s) goto 0x00196C
0x0016F8:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 1s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 1s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 1s) (var 3s))
    self.refuse = 1s
0x00196C:
    if !(== self.lesson -11s) goto 0x001BE0
0x001980:
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 1s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 1s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (var 2s) (var 1s) (var 2s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 2s) (var 2s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 1s) (var 2s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 1s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 1.25d) (var 1s) (var 3s))
0x001BE0:
    if !(== self.lesson -12s) goto 0x001DE8
0x001BF4:
    if (<= 2s 0) goto 0x001DE4
0x001C0C:
    push 2s
    call (scr_sr[]:int32 (var 1.3d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.3d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.3d) (var 0.1d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 1.3d) (var 2.2d) (var 1s) (var 2s))
    call (scr_sr[]:int32 (var 1.3d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.3d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.3d) (var 0.1d) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.3d) (var 2.2d) (var 1s) (var 3s))
    if (bool (- pop 1)) goto 0x001C0C
0x001DE4:
    push (- pop 1)
    pop
0x001DE8:
    if !(== self.lesson -13s) goto 0x0020E4
0x001DFC:
    call (scr_sr[]:int32 (var 1.5d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.5d) (var 2s) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 1.5d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.5d) (var 2s) (var 1s) (var 2s))
    call (scr_sr[]:int32 (var 1.5d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.5d) (var 2.2d) (var 1s) (var 1s))
    call (scr_sr[]:int32 (var 1.5d) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 1.5d) (var 2s) (var 1s) (var 3s))
    call (scr_sr[]:int32 (var 1.5d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.5d) (var 2s) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 1.5d) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.5d) (var 2s) (var 1s) (var 2s))
    call (scr_sr[]:int32 (var 1.5d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.5d) (var 2.2d) (var 1s) (var 1s))
0x0020E4:
    if !(== self.lesson -14s) goto 0x00216C
0x0020F8:
    if (<= 24s 0) goto 0x00215C
0x002110:
    push 24s
    call (scr_sr[]:int32 (var 0.3d) (var 0s) (var 0s) (var 4s))
    if (bool (- pop 1)) goto 0x002110
0x00215C:
    push (- pop 1)
    pop
    self.refuse = 1s
0x00216C:
    if !(== self.lesson 0s) goto 0x00231C
0x002180:
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 2s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 2s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 2s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 2s) (var 1s))
0x00231C:
    if !(== self.lesson 1s) goto 0x002398
0x002330:
    if (<= 3s 0) goto 0x002394
0x002348:
    push 3s
    call (scr_sr[]:int32 (var 0.5d) (var 1s) (var 0s) (var 3s))
    if (bool (- pop 1)) goto 0x002348
0x002394:
    push (- pop 1)
    pop
0x002398:
    if !(== self.lesson 2s) goto 0x0024E4
0x0023AC:
    call (scr_sr[]:int32 (var 0.625d) (var 1s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0.625d) (var 1s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0.625d) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.625d) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.625d) (var 1s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.625d) (var 1s) (var 0s) (var 1s))
0x0024E4:
    if !(== self.lesson 3s) goto 0x002698
0x0024F8:
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0.75d) (var 0s) (var 0s) (var 2s))
0x002698:
    if !(== self.lesson 4s) goto 0x0028DC
0x0026AC:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 3s))
0x0028DC:
    if !(== self.lesson 5s) goto 0x002A8C
0x0028F0:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
0x002A8C:
    if !(== self.lesson 6s) goto 0x002C64
0x002AA0:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    self.refuse = 1s
0x002C64:
    if (== self.lesson 7s) goto 0x002C8C
0x002C78:
    push (== self.lesson 8s)
    goto 0x002C90
0x002C8C:
    push 1s
0x002C90:
    if !pop goto 0x002E24
0x002C94:
    call (scr_sr[]:int32 (var 0s) (var 1.2d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 1.2d) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0.8d) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0.8d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 0.8d) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0.8d) (var 0s) (var 3s))
0x002E24:
    if !(== self.lesson 9s) goto 0x002FE4
0x002E38:
    self.rr = self.rating
    if !(>= self.rating 11s) goto 0x002E74
0x002E5C:
    self.rr = (- self.rr 1s)
0x002E74:
    call (scr_sr[]:int32 (/ (double 3s) self.rr) (var 2s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 2s))
0x002FE4:
    if !(== self.lesson 10s) goto 0x003224
0x002FF8:
    self.rr = 0s
    if !(<= self.rating 11s) goto 0x00302C
0x003018:
    self.rr = 0.5d
0x00302C:
    call (scr_sr[]:int32 (var 1s) (var 0.1d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.5d) (var 0.1d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 2s) (+ 2s self.rr) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1s) (var 0.1d) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.5d) (var 0.1d) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (+ 2s self.rr) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 3s))
0x003224:
    if !(== self.lesson 11s) goto 0x003484
0x003238:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 2.2d) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.5d) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.5d) (var 2.2d) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 4s))
    self.refuse = 1s
0x003484:
    if (== self.lesson 12s) goto 0x0034AC
0x003498:
    push (== self.lesson 13s)
    goto 0x0034B0
0x0034AC:
    push 1s
0x0034B0:
    if !pop goto 0x003590
0x0034B4:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 1s) (var 1s))
0x003590:
    if !(== self.lesson 14s) goto 0x003704
0x0035A4:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 2s) (var 1s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 1s) (var 2s))
0x003704:
    if !(== self.lesson 15s) goto 0x0038C0
0x003718:
    call (scr_sr[]:int32 (var 1.6d) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 1.6d) (var 1s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 1.6d) (var 1s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 1.6d) (var 1.6d) (var 0s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 1.2d) (var 1s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 1.2d) (var 1s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 1.2d) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1.2d) (var 1s) (var 2s))
0x0038C0:
    if !(== self.lesson 16s) goto 0x003A60
0x0038D4:
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 3s) (var 2s) (var 2s))
    call (scr_sr[]:int32 (var 0s) (var 2s) (var 2s) (var 3s))
    call (scr_sr[]:int32 (var 0s) (var 3s) (var 0s) (var 2s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 1s))
    call (scr_sr[]:int32 (var 2s) (var 1s) (var 0s) (var 0s))
0x003A60:
    if !(== self.lesson 17s) goto 0x003BF4
0x003A74:
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 1.6d) (var 1s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 2s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
0x003BF4:
    if !(== self.lesson 18s) goto 0x003C68
0x003C08:
    if (<= 10s 0) goto 0x003C64
0x003C20:
    push 10s
    call (scr_sr[]:int32 (var 2s) (var 0s) (var 0s) (var 4s))
    if (bool (- pop 1)) goto 0x003C20
0x003C64:
    push (- pop 1)
    pop
0x003C68:
    if !(== self.lesson 19s) goto 0x003E18
0x003C7C:
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0.5d) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 0s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 2s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 2s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 2s) (var 1s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 2s) (var 1s))
0x003E18:
    if !(== self.lesson 20s) goto 0x003F5C
0x003E2C:
    if (<= 3s 0) goto 0x003F58
0x003E44:
    push 3s
    call (scr_sr[]:int32 (var 1.5d) (var 1.25d) (var 1s) (var 1s))
    call (scr_sr[]:int32 (var 1.5d) (var 1.25d) (var 1s) (var 3s))
    call (scr_sr[]:int32 (var 1.5d) (var 1.25d) (var 1s) (var 0s))
    call (scr_sr[]:int32 (var 1.5d) (var 1.25d) (var 1s) (var 2s))
    self.refuse = 1s
    if (bool (- pop 1)) goto 0x003E44
0x003F58:
    push (- pop 1)
    pop
0x003F5C:
    if !(> self.lesson 20s) goto 0x0040E8
0x003F70:
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 1.6d) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 2s) (var 1s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
    call (scr_sr[]:int32 (var 0s) (var 1s) (var 2s) (var 0s))
    call (scr_sr[]:int32 (var 0s) (var 0s) (var 0s) (var 4s))
0x0040E8:
    exit
