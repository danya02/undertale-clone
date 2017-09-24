0x000000:
    self.dmg = 7s
    if !(> 259.emotion 0s) goto 0x00006C
0x000020:
    call (caster_pause[]:int32 global.batmusic)
    pushenv 259s 0x000068
0x00003C:
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -1s 0s:longnote)
0x000068:
    popenv 0x00003C
0x00006C:
    self.rate = global.firingrate
    stog.alarm[0s] = self.rate
    self.longnote = 0s
    self.offset = 0s
0x0000AC:
    exit
