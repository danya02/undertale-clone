0x000000:
    stog.btype[(int32 self.bmax)] = self.argument0
    stog.bspeed[(int32 self.bmax)] = self.argument1
    stog.bchoice[(int32 self.bmax)] = self.argument2
    stog.bside[(int32 self.bmax)] = self.argument3
    stog.btime[(int32 self.bmax)] = self.argument4
    self.bmax = (+ self.bmax 1s)
0x0000B8:
    exit
