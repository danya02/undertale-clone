0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Isn't my little Cinnamon&  just the cutest?/"
    stog.msg[1s] = "* Bun-buns are so adorable..^1.&* Tee hee!/%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* Bun-bun-bun-bun-bun.../%%"
0x000098:
    if !(> global.plot 121s) goto 0x0000DC
0x0000AC:
    stog.msg[0s] = "* Huh^1? Yes^1, I'm taking&  my bunny for a walk./"
    stog.msg[1s] = "* It's just a very slow one./%%"
0x0000DC:
    push -5s
    if !(== 7s:flag 1s) goto 0x000158
0x0000F8:
    stog.msg[0s] = "* That kid over there told&  me that it's weird that&  I have a pet bunny./"
    stog.msg[1s] = "* First^1, there'd be nothing&  weird about it^1.&* It's cute!/"
    stog.msg[2s] = "* Second..^1.&* What?/"
    stog.msg[3s] = "* It's normal to walk your&  younger brother on a&  leash^1, right?/%%"
0x000158:
    if !(== (scr_deaddog[]:int32 ) 1s) goto 0x00019C
0x00016C:
    stog.msg[0s] = "* Ah^1, it's so peaceful&  and quiet.../"
    stog.msg[1s] = "* Usually one of those dogs&  chases my little Cinnamon&  around./%%"
0x00019C:
    push -5s
    if !(== 67s:flag 1s) goto 0x0001E8
0x0001B8:
    stog.msg[0s] = "* Ah^1, it's so peaceful&  and quiet.../"
    stog.msg[1s] = "* Usually one of those&  skeletons chases my little&  Cinnamon around./%%"
0x0001E8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000228:
    exit
