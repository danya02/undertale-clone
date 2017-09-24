0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 35s) goto 0x0000F0
0x000068:
    global.msc = 524s
    if !(> self.x 192s) goto 0x0000F0
0x000088:
    global.msc = 0s
    stog.msg[0s] = "* You peek inside..^2.&* Scandalous!/"
    stog.msg[1s] = "* It's TORIEL's sock drawer./%%"
    if !(> self.read 0s) goto 0x0000F0
0x0000D8:
    stog.msg[0s] = "* You can't stop looking&  at the socks./%%"
0x0000F0:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000130:
    exit
