0x000000:
    if !(== self.hitted 0s) goto 0x000074
0x000014:
    self.hitno = 1702.hitno
    push self.text
    push 1702s
    stog.hitname[] = (int32 self.hitno)
    [obj_creditsloader].hitno = (+ 1702.hitno 1s)
    self.hitted = 1s
    [obj_creditsloader].ting = 1s
0x000074:
    exit
