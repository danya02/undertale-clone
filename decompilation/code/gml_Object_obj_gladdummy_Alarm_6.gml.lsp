0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x self.sprite_width))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x00007C
0x000068:
    push (< self.mycommand 100s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x00009C
0x000084:
    stog.msg[0s] = " Thanks!"
0x00009C:
    self.t = (+ self.t 1s)
    if !(== self.t 1s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "Thanks!"
0x0000E0:
    if !(== self.t 2s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "Thank&you!"
0x00010C:
    if !(== self.t 3s) goto 0x000138
0x000120:
    stog.msg[0s] = "Great&work!"
0x000138:
    if !(== self.t 4s) goto 0x000164
0x00014C:
    stog.msg[0s] = "Bravo!"
0x000164:
    if !(== self.t 5s) goto 0x000190
0x000178:
    stog.msg[0s] = "OK!"
0x000190:
    if !(>= self.t 6s) goto 0x0001BC
0x0001A4:
    stog.msg[0s] = "..."
0x0001BC:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x000230:
    exit
