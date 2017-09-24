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
    stog.msg[0s] = " ^1.^1.^1.^1.^1."
0x00009C:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x000110:
    exit
