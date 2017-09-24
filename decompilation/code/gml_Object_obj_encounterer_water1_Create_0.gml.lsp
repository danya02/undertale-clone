0x000000:
    self.alldead = 0s
    global.encounter = 0s
    self.factor = 360s
    self.desto = 0s
    if !(== self.room 90s) goto 0x000050
0x000044:
    self.factor = 110s
0x000050:
    if !(== self.room 88s) goto 0x000070
0x000064:
    self.factor = 340s
0x000070:
    if !(== self.room 88s) goto 0x0000B4
0x000084:
    push -5s
    if !(== 357s:flag 0s) goto 0x0000B4
0x0000A0:
    push (== global.entrance 1s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000D4
0x0000BC:
    self.factor = 20s
    self.desto = 1s
0x0000D4:
    call (script_execute[]:int32 (var 204s) (var 18s) (var 30s) self.factor (var 101s))
    push -5s
    if !(== 204s:flag 0s) goto 0x000138
0x000124:
    push (> global.plot 121s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x00014C
0x000140:
    call (instance_destroy[]:int32 )
0x00014C:
    exit
