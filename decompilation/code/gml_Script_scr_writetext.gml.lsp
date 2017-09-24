0x000000:
    global.facechoice = 0s
    global.msc = self.argument0
    if !(!= self.argument1 "x") goto 0x00004C
0x000034:
    stog.msg[0s] = self.argument1
0x00004C:
    if !(!= self.argument2 0s) goto 0x000070
0x000060:
    global.facechoice = self.argument2
0x000070:
    if !(== global.inbattle 0s) goto 0x0000D8
0x000084:
    global.typer = 5s
    if !(!= self.argument3 0s) goto 0x0000B4
0x0000A4:
    global.typer = self.argument3
0x0000B4:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000D8:
    if !(== global.inbattle 1s) goto 0x000168
0x0000EC:
    pushenv 782s 0x000100
0x0000F4:
    self.halt = 3s
0x000100:
    popenv 0x0000F4
0x000104:
    global.typer = 1s
    if !(!= self.argument3 0s) goto 0x000134
0x000124:
    global.typer = self.argument3
0x000134:
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x000168:
    exit
