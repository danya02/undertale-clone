0x000000:
    if !(== self.visible 1s) goto 0x00006C
0x000014:
    if !(== 307.phase 2s) goto 0x00003C
0x000028:
    push (== self.answered 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00006C
0x000044:
    [obj_questionasker].phase = 3s
    [obj_questionasker].answer = self.ano
    self.answered = 1s
0x00006C:
    exit
