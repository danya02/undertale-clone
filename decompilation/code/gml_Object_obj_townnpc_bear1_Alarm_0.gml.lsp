0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* This town doesn't have a&  mayor./"
    stog.msg[1s] = "* But if there's ever a problem^1,&  a skeleton will tell a fish&  lady about it./"
    stog.msg[2s] = "* Thaaaaaat's politics!/%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Politics./%%"
0x0000B0:
    if !(>= global.plot 122s) goto 0x00010C
0x0000C4:
    stog.msg[0s] = "* What if I ran for mayor...?/"
    stog.msg[1s] = "* I don't think I would do&  a good job^1, and I hate&  responsibility.../"
    stog.msg[2s] = "* But I love politics^1.&* So I might be a perfect&  match./%%"
0x00010C:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001CC
0x000128:
    stog.msg[0s] = "* I heard Dr. Alphys told&  the king and queen the&  awful things she'd done./"
    stog.msg[1s] = "* The king felt so bad&  that he didn't know^1.&* He gave her a big hug./"
    stog.msg[2s] = "* Then the queen fired her./"
    stog.msg[3s] = "* Now we don't have a Royal&  Scientist anymore.../"
    stog.msg[4s] = "* Thaaaaat's politics!/%%"
    if !(> self.talkedto 0s) goto 0x0001CC
0x0001B4:
    stog.msg[0s] = "* Too bad there are no&  politics on the surface./%%"
0x0001CC:
    push -5s
    if !(== 67s:flag 1s) goto 0x000218
0x0001E8:
    stog.msg[0s] = "* Hmmm^1, usually that skeleton&  goes to meet with Undyne&  about now./"
    stog.msg[1s] = "* Where is he...^1?&* I can feel our political&  system crumbling apart.../%%"
0x000218:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000258:
    exit
