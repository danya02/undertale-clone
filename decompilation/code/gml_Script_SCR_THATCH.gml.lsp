0x000000:
    self.xdiff = self.argument0
    self.ydiff = self.argument1
    stog.bulletvariable[2s] = self.argument2
    stog.bulletvariable[3s] = self.argument3
    stog.bulletvariable[4s] = self.argument4
    stog.bulletvariable[5s] = self.argument5
    stog.bulletvariable[6s] = self.argument6
    stog.bulletvariable[7s] = self.argument7
    self.thatchbonus = self.argument8
    self.bulletnumber = self.argument9
    global.bulletappearance = self.argument10
    self.i = 0s
    if !(<= self.i self.bulletnumber) goto 0x000308
0x000104:
    push -5s
    stog.bulletvariable[(+ 6s:bulletvariable self.argument2)] = 6s
    push -5s
    stog.bulletvariable[(+ 7s:bulletvariable (* self.argument8 self.i))] = 7s
    self.iii = (instance_create[]:int32 (var 681s) (+ self.y (* self.i self.ydiff)) (+ self.x (* self.i self.xdiff)))
    pushenv (int32 self.iii) 0x0001D4
0x0001C8:
    self.dmg = 5s
0x0001D4:
    popenv 0x0001C8
0x0001D8:
    push -5s
    stog.bulletvariable[(- 6s:bulletvariable (* self.argument2 2s))] = 6s
    push -5s
    stog.bulletvariable[(- 7s:bulletvariable (* (* self.argument8 self.i) 2s))] = 7s
    self.iii = (instance_create[]:int32 (var 681s) (+ self.y (* self.i self.ydiff)) (+ self.x (* self.i self.xdiff)))
    pushenv (int32 self.iii) 0x0002B8
0x0002AC:
    self.dmg = 5s
0x0002B8:
    popenv 0x0002AC
0x0002BC:
    stog.bulletvariable[6s] = self.argument6
    stog.bulletvariable[7s] = self.argument7
    self.i = (+ self.i 1s)
    goto 0x0000EC
0x000308:
    exit
