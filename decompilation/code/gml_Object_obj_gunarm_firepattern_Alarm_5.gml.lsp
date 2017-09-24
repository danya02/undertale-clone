0x000000:
    if !(< self.fire self.maxfire) goto 0x000040
0x000018:
    call (event_user[]:int32 (var 0s))
    stog.alarm[5s] = 2s
0x000040:
    self.fire = (+ self.fire 1s)
0x000058:
    exit
