0x000000:
    if !(== self.con2 0s) goto 0x000124
0x000014:
    self.next = 0s
    self.con2 = 1s
    self.talko = 3s
    global.typer = 33s
    stog.msg[0s] = "\\E1OWWWW^1, you&DUMMIES!!/"
    stog.msg[1s] = "\\XWatch where you're&aiming your \\RMAGIC\\X &attacks!/"
    stog.msg[2s] = "\\E3.../"
    stog.msg[3s] = "\\XHey^1!&You^1! \\E2Forget&I said anything&about \\RMAGIC\\X!!!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
0x000124:
    exit
