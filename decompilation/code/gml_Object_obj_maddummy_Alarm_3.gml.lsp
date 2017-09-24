0x000000:
    if !(!= self.image_index 1s) goto 0x000054
0x000014:
    self.image_index = 1s
    pushenv (int32 self.mypart1) 0x000050
0x000030:
    call (event_user[]:int32 (var 0s))
    self.mode = 99s
0x000050:
    popenv 0x000030
0x000054:
    if !(== self.sha 0s) goto 0x000078
0x000068:
    self.sha = self.x
0x000078:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x0000C8
0x0000A8:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x0000DC
0x0000C8:
    self.shudder = (- self.shudder)
0x0000DC:
    if !(== self.shudder 0s) goto 0x0001CC
0x0000F0:
    self.sha = 0s
    call (snd_play[]:int32 (var 51s))
    if !(> self.con 1s) goto 0x000144
0x000124:
    stog.hurtanim[(int32 self.myself)] = 2s
    goto 0x0001A0
0x000144:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.con = 1s
    stog.alarm[7s] = -1s
    self.hurtsies = 0s
    stog.alarm[8s] = 80s
0x0001A0:
    pushenv (int32 self.mypart1) 0x0001C4
0x0001B0:
    call (event_user[]:int32 (var 0s))
0x0001C4:
    popenv 0x0001B0
0x0001C8:
    exit
0x0001CC:
    stog.alarm[3s] = 2s
0x0001E0:
    exit
