0x000000:
    stog.alarm[5s] = self.dancewait
    if !(== global.myfight 0s) goto 0x000054
0x00002C:
    if !(== global.mnfight 0s) goto 0x000054
0x000040:
    push (== self.dance 1s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000070
0x00005C:
    call (event_user[]:int32 (var 0s))
0x000070:
    exit
