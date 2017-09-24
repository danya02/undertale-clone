0x000000:
    if !(bool (instance_exists[]:int32 self.mypart1)) goto 0x00022C
0x000018:
    if !(== (int32 self.mypart1):got 1s) goto 0x0000CC
0x000038:
    pushenv (int32 self.mypart1) 0x000054
0x000048:
    self.pause = 1s
0x000054:
    popenv 0x000048
0x000058:
    if !(== self.defuse 0s) goto 0x0000CC
0x00006C:
    pushenv (int32 self.mypart1) 0x000088
0x00007C:
    self.defuse = 1s
0x000088:
    popenv 0x00007C
0x00008C:
    call (snd_play[]:int32 (var 51s))
    self.defuse = 1s
    pushenv (int32 self.mypart1) 0x0000C8
0x0000BC:
    self.shudder = 8s
0x0000C8:
    popenv 0x0000BC
0x0000CC:
    if !(bool (instance_exists[]:int32 self.mypart1)) goto 0x000100
0x0000E4:
    push self.myself
    stog.boss* = (int32 self.mypart1)
0x000100:
    pushenv (int32 self.mypart1) 0x0001DC
0x000110:
    if !(== self.sha 0s) goto 0x000134
0x000124:
    self.sha = self.x
0x000134:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000184
0x000164:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000198
0x000184:
    self.shudder = (- self.shudder)
0x000198:
    if !(== self.shudder 0s) goto 0x0001DC
0x0001AC:
    self.sha = 0s
    stog.hurtanim[(int32 self.boss)] = 2s
    popenv 0x-3FFE2C
0x0001D8:
    exit
0x0001DC:
    popenv 0x000110
0x0001E0:
    if !(bool (instance_exists[]:int32 self.mypart1)) goto 0x00022C
0x0001F8:
    if !(!= (int32 self.mypart1):shudder 0s) goto 0x00022C
0x000218:
    stog.alarm[3s] = 2s
0x00022C:
    exit
