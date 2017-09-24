0x000000:
    stog.view_xview[0s] = (- (random[]:int32 self.shakex) (random[]:int32 self.shakex))
    stog.view_yview[0s] = (- (random[]:int32 self.shakey) (random[]:int32 self.shakey))
    if !(== self.turn1 0s) goto 0x0000F0
0x00007C:
    stog.view_xview[0s] = (* self.shakex (choose[]:int32 (var -1s) (var 1s)))
    stog.view_yview[0s] = (* self.shakey (choose[]:int32 (var -1s) (var 1s)))
    self.turn1 = 1s
0x0000F0:
    if !(== self.decay 1s) goto 0x000134
0x000104:
    self.shakex = (- self.shakex 1s)
    self.shakey = (- self.shakey 1s)
0x000134:
    if !(<= self.shakex 0s) goto 0x00015C
0x000148:
    push (<= self.shakey 0s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x000198
0x000164:
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 0s
    call (instance_destroy[]:int32 )
0x000198:
    exit
