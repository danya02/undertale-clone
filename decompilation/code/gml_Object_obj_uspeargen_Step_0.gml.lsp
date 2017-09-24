0x000000:
    if !(!= global.interact 0s) goto 0x000038
0x000014:
    push -1s
    stog.alarm[(+ 0s:alarm 1s)] = 0s
0x000038:
    exit
