0x000000:
    if !(== self.con 3s) goto 0x000020
0x000014:
    self.con = 4s
0x000020:
    if !(== self.con 1s) goto 0x000120
0x000034:
    global.typer = 33s
    stog.msg[0s] = "Foolish^1.&Foolish^1!&FOOLISH!/"
    stog.msg[1s] = "Even if you attack&my vessel^1, you'll&NEVER hurt me!/"
    stog.msg[2s] = "I'm still&incorporeal^1, you&DUMMY!!!/%%"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blconwdS = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.hurtsies = 0s
    self.con = 2s
0x000120:
    exit
