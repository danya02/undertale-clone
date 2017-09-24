0x000000:
    self.myinteract = 3s
    global.msc = 254s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Isn't my little Cinnamon&  just the cutest?/"
    stog.msg[1s] = "* Bun-buns are so adorable..^1.&* Tee hee!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    if !(> self.talkedto 0s) goto 0x0000C0
0x0000A8:
    stog.msg[0s] = "* Bun-bun-bun-bun-bun.../%%"
0x0000C0:
    self.talkedto = (+ self.talkedto 1s)
0x0000D8:
    exit
