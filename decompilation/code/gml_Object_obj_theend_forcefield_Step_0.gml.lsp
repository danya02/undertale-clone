0x000000:
    if !(== self.ended 0s) goto 0x000030
0x000014:
    push -5s
    push (== 420s:flag 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000E8
0x000038:
    self.timer = (+ self.timer 1s)
    if !(> self.timer 1800s) goto 0x000078
0x000064:
    push (== global.interact 0s)
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x0000E8
0x000080:
    pushenv (int32 self.ff) 0x0000B0
0x000090:
    pushenv (int32 self.solid1) 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    popenv 0x0000A0
0x0000B0:
    popenv 0x000090
0x0000B4:
    self.ended = 5s
    call (snd_play[]:int32 (var 21s))
    stog.flag[420s] = 1s
0x0000E8:
    if !(== self.ended 5s) goto 0x000184
0x0000FC:
    pushenv (int32 self.ff) 0x00012C
0x00010C:
    self.image_alpha = (- self.image_alpha 0.1d)
0x00012C:
    popenv 0x00010C
0x000130:
    if !(< (int32 self.ff):image_alpha 0.1d) goto 0x000184
0x000158:
    pushenv (int32 self.ff) 0x000174
0x000168:
    call (instance_destroy[]:int32 )
0x000174:
    popenv 0x000168
0x000178:
    self.ended = 6s
0x000184:
    exit
