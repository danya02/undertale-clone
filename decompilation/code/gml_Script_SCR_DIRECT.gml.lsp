0x000000:
    stog.bulletvariable[0s] = self.argument0
    stog.bulletvariable[1s] = self.argument1
    stog.bulletvariable[2s] = self.argument2
    stog.bulletvariable[3s] = self.argument3
    stog.bulletvariable[4s] = self.argument4
    stog.bulletvariable[5s] = self.argument5
    stog.bulletvariable[6s] = self.argument6
    stog.bulletvariable[7s] = self.argument7
    self.bulletnumber = self.argument8
    global.bulletappearance = self.argument9
    self.i = 0s
    if !(<= self.i self.bulletnumber) goto 0x000174
0x000104:
    self.iii = (instance_create[]:int32 (var 680s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    self.i = (+ self.i 1s)
    goto 0x0000EC
0x000174:
    exit
