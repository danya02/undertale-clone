0x000000:
    self.mrd = 0s
    push -5s
    if !(>= 202s:flag 20s) goto 0x000034
0x000028:
    self.mrd = 1s
0x000034:
    if !(== self.mrd 1s) goto 0x000064
0x000048:
    push -5s
    push (== 45s:flag 4s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x000078
0x00006C:
    self.mrd = 2s
0x000078:
    if !(== self.mrd 2s) goto 0x0000A8
0x00008C:
    push -5s
    push (== 52s:flag 1s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000BC
0x0000B0:
    self.mrd = 3s
0x0000BC:
    if !(== self.mrd 3s) goto 0x0000EC
0x0000D0:
    push -5s
    push (== 53s:flag 1s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000100
0x0000F4:
    self.mrd = 4s
0x000100:
    if !(== self.mrd 4s) goto 0x000130
0x000114:
    push -5s
    push (== 54s:flag 1s)
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x000144
0x000138:
    self.mrd = 5s
0x000144:
    if !(== self.mrd 5s) goto 0x000174
0x000158:
    push -5s
    push (== 57s:flag 2s)
    goto 0x000178
0x000174:
    push 0s
0x000178:
    if !pop goto 0x000188
0x00017C:
    self.mrd = 6s
0x000188:
    if !(== self.mrd 6s) goto 0x0001B8
0x00019C:
    push -5s
    push (>= 203s:flag 16s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x0001CC
0x0001C0:
    self.mrd = 7s
0x0001CC:
    if !(== self.mrd 7s) goto 0x0001FC
0x0001E0:
    push -5s
    push (== 67s:flag 1s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x000210
0x000204:
    self.mrd = 8s
0x000210:
    if !(== self.mrd 8s) goto 0x000240
0x000224:
    push -5s
    push (== 81s:flag 1s)
    goto 0x000244
0x000240:
    push 0s
0x000244:
    if !pop goto 0x000254
0x000248:
    self.mrd = 9s
0x000254:
    if !(== self.mrd 9s) goto 0x000284
0x000268:
    push -5s
    push (== 252s:flag 1s)
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x000298
0x00028C:
    self.mrd = 10s
0x000298:
    if !(== self.mrd 10s) goto 0x0002C8
0x0002AC:
    push -5s
    push (>= 204s:flag 18s)
    goto 0x0002CC
0x0002C8:
    push 0s
0x0002CC:
    if !pop goto 0x0002DC
0x0002D0:
    self.mrd = 11s
0x0002DC:
    if !(== self.mrd 11s) goto 0x000328
0x0002F0:
    push -5s
    if !(== 251s:flag 1s) goto 0x000328
0x00030C:
    push -5s
    push (== 350s:flag 1s)
    goto 0x00032C
0x000328:
    push 0s
0x00032C:
    if !pop goto 0x00033C
0x000330:
    self.mrd = 12s
0x00033C:
    if !(== self.mrd 12s) goto 0x00036C
0x000350:
    push -5s
    push (== 402s:flag 1s)
    goto 0x000370
0x00036C:
    push 0s
0x000370:
    if !pop goto 0x000380
0x000374:
    self.mrd = 13s
0x000380:
    if !(== self.mrd 13s) goto 0x0003B0
0x000394:
    push -5s
    push (== 397s:flag 1s)
    goto 0x0003B4
0x0003B0:
    push 0s
0x0003B4:
    if !pop goto 0x0003C4
0x0003B8:
    self.mrd = 14s
0x0003C4:
    if !(== self.mrd 14s) goto 0x0003F4
0x0003D8:
    push -5s
    push (>= 205s:flag 40s)
    goto 0x0003F8
0x0003F4:
    push 0s
0x0003F8:
    if !pop goto 0x000408
0x0003FC:
    self.mrd = 15s
0x000408:
    if !(== self.mrd 15s) goto 0x000454
0x00041C:
    push -5s
    if !(== 425s:flag 1s) goto 0x000454
0x000438:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000458
0x000454:
    push 0s
0x000458:
    if !pop goto 0x000468
0x00045C:
    self.mrd = 16s
0x000468:
    self.murderboy = self.mrd
    push -5s
    if !(> 26s:flag 0s) goto 0x0004AC
0x000494:
    push -5s
    self.mrd = 26s:flag
0x0004AC:
    ret var self.mrd
0x0004B8:
    exit
