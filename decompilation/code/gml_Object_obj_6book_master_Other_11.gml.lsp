0x000000:
    if !(< self.alrnum 4s) goto 0x000038
0x000014:
    push -1s
    stog.alarm[(+ 0s:alarm 5s)] = 0s
0x000038:
    push -1s
    stog.alarm[(+ 5s:alarm 5s)] = 5s
    push -1s
    stog.alarm[(+ 6s:alarm 5s)] = 6s
    push -1s
    stog.alarm[(+ 7s:alarm 5s)] = 7s
    push -1s
    stog.alarm[(+ 8s:alarm 5s)] = 8s
    push -1s
    stog.alarm[(+ 9s:alarm 5s)] = 9s
    push -1s
    stog.alarm[(+ 10s:alarm 5s)] = 10s
0x000110:
    exit
