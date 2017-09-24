0x000000:
    if !(> self.mercymod 10s) goto 0x00004C
0x000014:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x00008C
0x000054:
    push -5s
    stog.goldreward[(+ 3s:goldreward 60s)] = 3s
    stog.flag[149s] = 1s
0x00008C:
    if !(== self.killed 1s) goto 0x0001D0
0x0000A0:
    push -5s
    push 3s
    stog.xpreward[3s:xpreward] = (+ -5s (int32 self.myself):xpreward)
    push -5s
    push 3s
    stog.goldreward[3s:goldreward] = (+ -5s (int32 self.myself):goldreward)
    pushenv (int32 self.mypart1) 0x000134
0x000120:
    call (event_user[]:int32 (var 0s))
0x000134:
    popenv 0x000120
0x000138:
    global.kills = (+ global.kills 1s)
    push -5s
    stog.areapop[(- (int32 global.area):areapop 1s)] = (int32 global.area)
    push -5s
    if !(< (int32 global.area):areapop 0s) goto 0x0001BC
0x0001A0:
    stog.areapop[(int32 global.area)] = 0s
0x0001BC:
    stog.flag[12s] = 1s
0x0001D0:
    if !(== self.killed 0s) goto 0x00032C
0x0001E4:
    pushenv 337s 0x0001F8
0x0001EC:
    self.specialmessage = 1s
0x0001F8:
    popenv 0x0001EC
0x0001FC:
    pushenv (int32 self.mypart1) 0x000218
0x00020C:
    call (instance_destroy[]:int32 )
0x000218:
    popenv 0x00020C
0x00021C:
    push -5s
    push 3s
    push -5s
    push 3s:goldreward
    push -5s
    stog.goldreward[(+ (int32 self.myself):monstermaxhp (floor[]:int32 (* (- -5s (int32 self.myself):monsterhp) (/ -5s (int32 self.myself):monstermaxhp))))] = (int32 self.myself):goldreward
    global.monstersprite = self.sprite_index
    self.ddd = (instance_create[]:int32 (var 159s) self.y self.x)
    push 0s
    stog.image_speed* = (int32 self.ddd)
    push 1s
    stog.image_index* = (int32 self.ddd)
    stog.flag[10s] = 1s
0x00032C:
    stog.monster[(int32 self.myself)] = 0s
0x000348:
    exit
