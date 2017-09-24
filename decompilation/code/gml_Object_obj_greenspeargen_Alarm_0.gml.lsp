0x000000:
    push self.rating
    stog.alarm[0s] = (* -1s (int32 self.spearno):timemod)
    push -1s
    if !(== (int32 self.spearno):speartype 0s) goto 0x00009C
0x000058:
    self.b = (instance_create[]:int32 (var 265s) (var 0s) (var 0s))
    push self.dmg
    stog.dmg* = (int32 self.b)
0x00009C:
    push -1s
    if !(== (int32 self.spearno):speartype 1s) goto 0x000104
0x0000C0:
    self.b = (instance_create[]:int32 (var 266s) (var 0s) (var 0s))
    push self.dmg
    stog.dmg* = (int32 self.b)
0x000104:
    push -1s
    if !(== (int32 self.spearno):speartype 2s) goto 0x000228
0x000128:
    stog.alarm[0s] = (* self.rating 2s)
    self.b = (instance_create[]:int32 (var 266s) (var 0s) (var 0s))
    push -1s
    push (int32 self.spearno):timemod
    stog.site* = (int32 self.b)
    push self.dmg
    stog.dmg* = (int32 self.b)
    self.b = (instance_create[]:int32 (var 265s) (var 0s) (var 0s))
    push -1s
    push (int32 self.spearno):speardir
    stog.site* = (int32 self.b)
    push self.dmg
    stog.dmg* = (int32 self.b)
0x000228:
    push -1s
    push (int32 self.spearno):speedmod
    stog.speedmod* = (int32 self.b)
    push -1s
    push (int32 self.spearno):speardir
    stog.site* = (int32 self.b)
    self.spearno = (+ self.spearno 1s)
    if !(> self.spearno self.spearmax) goto 0x0002D0
0x0002B0:
    stog.alarm[0s] = -1s
    self.done = 1s
0x0002D0:
    exit
