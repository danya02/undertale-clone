0x000000:
    if !(== self.hurtsies 2s) goto 0x0000B8
0x000014:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00007C
0x000038:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0000AC
0x00007C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0000AC:
    self.hurtsies = 0s
0x0000B8:
    if !(== self.hurtsies 1s) goto 0x000164
0x0000CC:
    call (snd_play[]:int32 (var 51s))
    pushenv (int32 self.mypart1) 0x000104
0x0000F0:
    call (event_user[]:int32 (var 1s))
0x000104:
    popenv 0x0000F0
0x000108:
    self.hurtsies = 2s
    stog.alarm[7s] = 25s
    if !(== self.con 2s) goto 0x000164
0x00013C:
    stog.alarm[7s] = -1s
    stog.alarm[8s] = 30s
0x000164:
    exit
