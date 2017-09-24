0x000000:
    if !(<= self.l_buffer 0s) goto 0x000228
0x000014:
    if !(== self.o_o 0s) goto 0x000098
0x000028:
    pushenv 1582s 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    popenv 0x000030
0x000040:
    self.shk = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 3s
    stog.shakex* = (int32 self.shk)
    push 3s
    stog.shakey* = (int32 self.shk)
0x000098:
    if !(== self.o_o 0s) goto 0x0000BC
0x0000AC:
    self.o_o = 1s
    goto 0x0000C8
0x0000BC:
    self.o_o = 0s
0x0000C8:
    if !(== self.o_o 0s) goto 0x0000EC
0x0000DC:
    self.this_hit = self.lithit
0x0000EC:
    if !(== self.o_o 1s) goto 0x000110
0x000100:
    self.this_hit = self.lithit2
0x000110:
    if !(> self.lh 0s) goto 0x000124
0x000124:
    stog.jr[(int32 self.lh)] = (audio_play_sound[]:int32 (var 0s) (var 70s) self.this_hit)
    push (var 0.6d)
    call (audio_sound_pitch[]:int32 -1s (int32 self.lh):jr)
    push (var 0s)
    call (audio_sound_gain[]:int32 (var 0.44d) -1s (int32 self.lh):jr)
    pushenv 586s 0x0001E0
0x0001D4:
    self.l_buffer = 1s
0x0001E0:
    popenv 0x0001D4
0x0001E4:
    if !(!= global.osflavor 1s) goto 0x000210
0x0001F8:
    pushenv 586s 0x00020C
0x000200:
    self.l_buffer = 2s
0x00020C:
    popenv 0x000200
0x000210:
    self.lh = (+ self.lh 1s)
0x000228:
    exit
