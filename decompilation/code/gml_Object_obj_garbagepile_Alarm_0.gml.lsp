0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (Piles of garbage.)&* (There are quite a few&  brands you recognize.)/%%"
    if !(== self.talkedto 1s) goto 0x000080
0x000068:
    stog.msg[0s] = "* (Just garbage.)/%%"
0x000080:
    if !(== self.talkedto 1s) goto 0x0000B0
0x000094:
    push -5s
    push (> 22s:flag 0s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "* (There's a pile of yellow names&  in the trash pile.)/%%"
0x0000D0:
    if !(== self.talkedto 2s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "* (Garbage.)/%%"
0x0000FC:
    if !(== self.talkedto 3s) goto 0x000128
0x000110:
    stog.msg[0s] = "* (A trash heap.)/%%"
0x000128:
    if !(== self.talkedto 4s) goto 0x000154
0x00013C:
    stog.msg[0s] = "* (Your persistent garbage&  habit shows no signs&  of payoff.)/%%"
0x000154:
    if !(== self.talkedto 5s) goto 0x000180
0x000168:
    stog.msg[0s] = "* (Trash.)/%%"
0x000180:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    stog.talkedto* = (+ (int32 self.object_index):talkedto 1s)
0x0001D0:
    exit
