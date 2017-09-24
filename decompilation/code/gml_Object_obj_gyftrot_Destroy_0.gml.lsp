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
    if !pop goto 0x000078
0x000054:
    push -5s
    stog.goldreward[(+ 3s:goldreward 20s)] = 3s
0x000078:
    if !(== self.giftgiven 1s) goto 0x0000A0
0x00008C:
    stog.goldreward[3s] = 0s
0x0000A0:
    if !(== self.giftgiven 2s) goto 0x0000C8
0x0000B4:
    stog.goldreward[3s] = 75s
0x0000C8:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x000118
0x00010C:
    call (instance_destroy[]:int32 )
0x000118:
    popenv 0x00010C
0x00011C:
    pushenv (int32 self.mypart2) 0x000138
0x00012C:
    call (instance_destroy[]:int32 )
0x000138:
    popenv 0x00012C
0x00013C:
    if !(bool (instance_exists[]:int32 self.mypart3)) goto 0x000174
0x000154:
    pushenv (int32 self.mypart3) 0x000170
0x000164:
    call (instance_destroy[]:int32 )
0x000170:
    popenv 0x000164
0x000174:
    if !(bool (instance_exists[]:int32 self.mypart4)) goto 0x0001AC
0x00018C:
    pushenv (int32 self.mypart4) 0x0001A8
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    popenv 0x00019C
0x0001AC:
    if !(== self.googly 1s) goto 0x0001E0
0x0001C0:
    pushenv (int32 self.mypart5) 0x0001DC
0x0001D0:
    call (instance_destroy[]:int32 )
0x0001DC:
    popenv 0x0001D0
0x0001E0:
    if !(bool (instance_exists[]:int32 self.mypart8)) goto 0x000218
0x0001F8:
    pushenv (int32 self.mypart8) 0x000214
0x000208:
    call (instance_destroy[]:int32 )
0x000214:
    popenv 0x000208
0x000218:
    exit
