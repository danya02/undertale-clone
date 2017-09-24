0x000000:
    if !(== global.interact 0s) goto 0x0000EC
0x000014:
    global.interact = 1s
    self.con = 1s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    push 18s
    self.pop = (- -5s 204s:flag)
    if !(< self.pop 0s) goto 0x000090
0x000084:
    self.pop = 0s
0x000090:
    stog.msg[0s] = (+ (+ "\\R* Strongly felt " (string[]:int32 self.pop)) " left^1.&* Shouldn't proceed yet./%%")
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000EC:
    exit
