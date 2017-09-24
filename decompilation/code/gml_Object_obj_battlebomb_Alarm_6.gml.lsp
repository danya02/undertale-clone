0x000000:
    self.blcon = (instance_create[]:int32 (var 187s) (var 100s) (var 200s))
    push 22s
    stog.sprite_index* = (int32 self.blcon)
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Tick."
    if !(< self.mycommand 75s) goto 0x0000C4
0x0000AC:
    stog.msg[0s] = "Tock."
0x0000C4:
    if !(< self.mycommand 50s) goto 0x0000F0
0x0000D8:
    stog.msg[0s] = "Tick."
0x0000F0:
    if !(< self.mycommand 25s) goto 0x00011C
0x000104:
    stog.msg[0s] = "Tock."
0x00011C:
    if !(== self.bombtype 1s) goto 0x000148
0x000130:
    stog.msg[0s] = "Zzz..."
0x000148:
    if !(== self.bombtype 2s) goto 0x000174
0x00015C:
    stog.msg[0s] = "Swish."
0x000174:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x0001E8:
    exit
