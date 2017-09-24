0x000000:
    if !(== self.con 1s) goto 0x00007C
0x000014:
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "Hi./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 1.1d
0x00007C:
    if !(== self.con 1.1d) goto 0x0000B4
0x000098:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000E4
0x0000BC:
    self.con = 0.9d
    stog.alarm[4s] = 60s
0x0000E4:
    if !(== self.con 1.9d) goto 0x0001C8
0x000100:
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "Seems as if everyone&is perfectly happy./"
    stog.msg[1s] = "Monsters have returned&to the surface./"
    stog.msg[2s] = "Peace and prosperity&will rule across the land./"
    stog.msg[3s] = "\\E6Take a deep breath./"
    stog.msg[4s] = "\\E5There's nothing left&to worry about./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 0.2d
0x0001C8:
    if !(== self.con 0.2d) goto 0x000200
0x0001E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000204
0x000200:
    push 0s
0x000204:
    if !pop goto 0x000230
0x000208:
    self.con = 1.2d
    stog.alarm[4s] = 70s
0x000230:
    if !(== self.con 2.2d) goto 0x000584
0x00024C:
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\E7.../"
    stog.msg[1s] = "\\E6Well./"
    stog.msg[2s] = "\\E1There is one thing./"
    stog.msg[3s] = "\\E3One last threat./"
    stog.msg[4s] = "One being with the&power to erase&EVERYTHING.../"
    stog.msg[5s] = "\\E1Everything everyone's&worked so hard for./"
    stog.msg[6s] = "\\E7.../"
    stog.msg[7s] = "\\E6You know who I'm&talking about^1, don't&you?/"
    stog.msg[8s] = "\\E1That's right./"
    stog.msg[9s] = "\\E4I'm talking about YOU./"
    stog.msg[10s] = "\\E7YOU still have the&power to reset&everything./"
    stog.msg[11s] = "\\E0Toriel^1, Sans^1, Asgore^1,&Alphys, Papyrus, Undyne.../"
    stog.msg[12s] = "If you so choose.../"
    stog.msg[13s] = "Everyone will be&ripped from this&timeline.../"
    stog.msg[14s] = "... and sent back before&all of this&ever happened./"
    stog.msg[15s] = "\\E6Nobody will&remember anything./"
    stog.msg[16s] = "\\E5You'll be able to&do whatever you&want./"
    stog.msg[17s] = "\\E0.../"
    stog.msg[18s] = "\\E7That power./"
    stog.msg[19s] = "\\E3I know that power./"
    stog.msg[20s] = "\\E6That's the power&you were fighting to&stop^1, wasn't it?/"
    stog.msg[21s] = "\\E7The power that I&wanted to use./"
    stog.msg[22s] = "\\E6But now^1, the idea&of resetting&everything.../"
    stog.msg[23s] = "\\E7I.../"
    stog.msg[24s] = "\\E1I don't think I&could do it all&again./"
    stog.msg[25s] = "Not after that./"
    stog.msg[26s] = "\\E7.../"
    stog.msg[27s] = "\\E1So, please./"
    stog.msg[28s] = "\\E3Just let them go./"
    stog.msg[29s] = "Let Frisk be happy./"
    stog.msg[30s] = "Let Frisk live&their life./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 0.3d
0x000584:
    if !(== self.con 0.3d) goto 0x0005BC
0x0005A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005C0
0x0005BC:
    push 0s
0x0005C0:
    if !pop goto 0x0005EC
0x0005C4:
    self.con = 1.3d
    stog.alarm[4s] = 70s
0x0005EC:
    if !(== self.con 2.3d) goto 0x0007A0
0x000608:
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\E1.../"
    stog.msg[1s] = "\\E3But./"
    stog.msg[2s] = "If I can't change&your mind./"
    stog.msg[3s] = "If you DO end up&erasing everything.../"
    stog.msg[4s] = "\\E7.../"
    stog.msg[5s] = "\\E6You have to erase&my memories^1, too./"
    stog.msg[6s] = "\\E7.../"
    stog.msg[7s] = "\\E6I'm sorry./"
    stog.msg[8s] = "\\E5You've probably heard&this a hundred times&already^1, haven't you...?/"
    stog.msg[9s] = ".../"
    stog.msg[10s] = "\\E0Well^1, that's all./"
    stog.msg[11s] = "\\E6See you later.../"
    stog.msg[12s] = (+ (+ "\\E4" self.chara) "./%%")
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x0007A0:
    if !(== self.con 2s) goto 0x0007D0
0x0007B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007D4
0x0007D0:
    push 0s
0x0007D4:
    if !pop goto 0x000804
0x0007D8:
    self.flowey = 3s
    self.con = 3s
    stog.alarm[4s] = 200s
0x000804:
    if !(== self.con 4s) goto 0x000880
0x000818:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.true_end = (ini_write_real[]:int32 (var 2s) (var "EndF") (var "EndF"))
    call (ini_close[]:int32 )
    call (room_goto[]:int32 (var 323s))
0x000880:
    exit
