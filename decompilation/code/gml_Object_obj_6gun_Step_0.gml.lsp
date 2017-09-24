0x000000:
    if !(== self.con 1s) goto 0x0000F0
0x000014:
    stog.cr[0s] = (instance_create[]:int32 (var 1608s) (+ (- 1581.y self.rr) (random[]:int32 (* self.rr 2s))) (+ (- 1581.x self.rr) (random[]:int32 (* self.rr 2s))))
    if !(== self.type 1s) goto 0x0000D0
0x0000A8:
    push -1s
    pushenv (int32 0s:cr) 0x0000CC
0x0000C0:
    self.sprite_index = 2212s
0x0000CC:
    popenv 0x0000C0
0x0000D0:
    self.con = 2s
    stog.alarm[4s] = 6s
0x0000F0:
    if !(== self.con 3s) goto 0x0001E0
0x000104:
    stog.cr[1s] = (instance_create[]:int32 (var 1608s) (+ (- 1581.y self.rr) (random[]:int32 (* self.rr 2s))) (+ (- 1581.x self.rr) (random[]:int32 (* self.rr 2s))))
    if !(== self.type 1s) goto 0x0001C0
0x000198:
    push -1s
    pushenv (int32 1s:cr) 0x0001BC
0x0001B0:
    self.sprite_index = 2212s
0x0001BC:
    popenv 0x0001B0
0x0001C0:
    self.con = 4s
    stog.alarm[4s] = 6s
0x0001E0:
    if !(== self.con 5s) goto 0x0003FC
0x0001F4:
    stog.cr[2s] = (instance_create[]:int32 (var 1608s) (+ (- 1581.y self.rr) (random[]:int32 (* self.rr 2s))) (+ (- 1581.x self.rr) (random[]:int32 (* self.rr 2s))))
    if !(== self.type 1s) goto 0x0002B0
0x000288:
    push -1s
    pushenv (int32 2s:cr) 0x0002AC
0x0002A0:
    self.sprite_index = 2212s
0x0002AC:
    popenv 0x0002A0
0x0002B0:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0002F8
0x0002C8:
    push -1s
    stog.y* = (+ (int32 2s:cr):y 100s)
0x0002F8:
    push (int32 2s:cr)
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000340
0x000310:
    push -1s
    stog.y* = (- (int32 2s:cr):y 100s)
0x000340:
    push (int32 2s:cr)
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000388
0x000358:
    push -1s
    stog.x* = (+ (int32 2s:cr):x 100s)
0x000388:
    push (int32 2s:cr)
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0003D0
0x0003A0:
    push -1s
    stog.x* = (- (int32 2s:cr):x 100s)
0x0003D0:
    push (int32 2s:cr)
    self.con = 6s
    self.no = 0s
    stog.alarm[4s] = 3s
0x0003FC:
    if !(== self.con 7s) goto 0x000754
0x000410:
    push -1s
    push (int32 (int32 self.no):cr):y
    self.dgoal = (point_direction[]:int32 -1s (int32 (int32 self.no):cr):x self.y self.x)
    self.curdir = self.image_angle
    self.idealdir = self.dgoal
    self.facingMinusTarget = (- self.curdir self.idealdir)
    self.angleDiff = self.facingMinusTarget
    if !(> (abs[]:int32 self.facingMinusTarget) 180s) goto 0x00054C
0x0004E0:
    if !(> self.curdir self.idealdir) goto 0x000528
0x0004F8:
    self.angleDiff = (* -1s (+ (- 360s self.curdir) self.idealdir))
    goto 0x00054C
0x000528:
    self.angleDiff = (+ (- 360s self.idealdir) self.curdir)
0x00054C:
    self.leastAccurateAim = 5s
    if !(> (abs[]:int32 self.angleDiff) self.leastAccurateAim) goto 0x000724
0x000578:
    self.dirspeed = 1s
    self.angleDiff2 = (abs[]:int32 self.angleDiff)
    if !(> self.angleDiff2 10s) goto 0x0005BC
0x0005B0:
    self.dirspeed = 5s
0x0005BC:
    if !(> self.angleDiff2 20s) goto 0x0005DC
0x0005D0:
    self.dirspeed = 8s
0x0005DC:
    if !(> self.angleDiff2 30s) goto 0x0005FC
0x0005F0:
    self.dirspeed = 12s
0x0005FC:
    if !(> self.angleDiff2 40s) goto 0x00061C
0x000610:
    self.dirspeed = 15s
0x00061C:
    if !(> self.angleDiff2 50s) goto 0x00063C
0x000630:
    self.dirspeed = 18s
0x00063C:
    if !(> self.angleDiff2 60s) goto 0x00065C
0x000650:
    self.dirspeed = 24s
0x00065C:
    if !(> self.angleDiff2 70s) goto 0x00067C
0x000670:
    self.dirspeed = 30s
0x00067C:
    if !(> self.angleDiff2 80s) goto 0x00069C
0x000690:
    self.dirspeed = 36s
0x00069C:
    if !(> self.angleDiff2 90s) goto 0x0006BC
0x0006B0:
    self.dirspeed = 42s
0x0006BC:
    if !(> self.angleDiff2 100s) goto 0x0006DC
0x0006D0:
    self.dirspeed = 50s
0x0006DC:
    if !(< self.angleDiff 0s) goto 0x000704
0x0006F0:
    self.dirspeed = (- self.dirspeed)
0x000704:
    self.image_angle = (- self.image_angle self.dirspeed)
    goto 0x000754
0x000724:
    self.con = 8s
    self.image_angle = self.dgoal
    stog.alarm[4s] = 1s
0x000754:
    if !(== self.con 9s) goto 0x000950
0x000768:
    if !(!= self.num 23s) goto 0x000834
0x00077C:
    self.bl = (instance_create[]:int32 (var 1607s) self.y self.x)
    push self.dgoal
    stog.direction* = (int32 self.bl)
    push self.dgoal
    stog.image_angle* = (int32 self.bl)
    push 30s
    stog.speed* = (int32 self.bl)
    if !(== self.type 1s) goto 0x000830
0x000808:
    pushenv (int32 self.bl) 0x00082C
0x000818:
    call (event_user[]:int32 (var 4s))
0x00082C:
    popenv 0x000818
0x000830:
    goto 0x0008AC
0x000834:
    self.bl = (instance_create[]:int32 (var 1610s) self.y self.x)
    push self.dgoal
    stog.direction* = (int32 self.bl)
    push self.dgoal
    stog.image_angle* = (int32 self.bl)
    push 20s
    stog.speed* = (int32 self.bl)
0x0008AC:
    self.num = (+ self.num 1s)
    push -1s
    pushenv (int32 (int32 self.no):cr) 0x0008F0
0x0008E4:
    call (instance_destroy[]:int32 )
0x0008F0:
    popenv 0x0008E4
0x0008F4:
    if !(< self.no 2s) goto 0x000944
0x000908:
    self.no = (+ self.no 1s)
    self.con = 6s
    stog.alarm[4s] = 3s
    goto 0x000950
0x000944:
    self.con = 1s
0x000950:
    if !(== self.shakeboy 1s) goto 0x0009F4
0x000964:
    self.shake = (+ self.shake 0.2d)
    self.x = (+ self.x (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
    self.y = (+ self.y (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
0x0009F4:
    exit
