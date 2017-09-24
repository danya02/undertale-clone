0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I'm thinking of getting a&  spiked collar to show off&  my personality./"
    stog.msg[1s] = "* It makes a statement like..^1.&* \"Attach a leash to me and&  take me for a walk please.\"/%%"
    if !(>= global.plot 122s) goto 0x0000C8
0x000080:
    stog.msg[0s] = "* He may not look like it^1,&  but this big guy writes&  the most eloquent letters./"
    stog.msg[1s] = "* Here^1, take a look!/"
    stog.msg[2s] = "* (It's just the word \"Bark\"&  but in flowery cursive.)/%%"
0x0000C8:
    push -5s
    if !(== 67s:flag 1s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "* Papyrus^1?&* Is that you^1?& Come on.../%%"
0x0000FC:
    push -5s
    if !(== 350s:flag 1s) goto 0x000130
0x000118:
    stog.msg[0s] = "* Undyne!^1?&* Did you come all the way&  out here...?/%%"
0x000130:
    if !(== self.sansmode 1s) goto 0x000174
0x000144:
    stog.msg[0s] = "* Huh^1?&* Since when did you and&  Sans become friends...?/"
    stog.msg[1s] = "* I don't like him..^1.&* He loves to appear without&  moving./%%"
0x000174:
    push -5s
    if !(== 53s:flag 1s) goto 0x0001C0
0x000190:
    stog.msg[0s] = "* Where're the other two^1?&* I can't play with this&  big dumb guy alone.../"
    stog.msg[1s] = "* He'll just win!!!/%%"
0x0001C0:
    push -5s
    if !(== 53s:flag 1s) goto 0x0001F8
0x0001DC:
    push -5s
    push (== 54s:flag 1s)
    goto 0x0001FC
0x0001F8:
    push 0s
0x0001FC:
    if !pop goto 0x000248
0x000200:
    stog.msg[0s] = "* Sometimes the others like to&  prank me^1. They sit still&  so I can't see them./"
    stog.msg[1s] = "* They must be here^1, playing a&  joke on me./"
    stog.msg[2s] = "* I'll just wait until one of&  them admits it.../%%"
0x000248:
    push -5s
    if !(== 7s:flag 1s) goto 0x000294
0x000264:
    stog.msg[0s] = "* Having an amorphous^1,&  shambling family member&  is great./"
    stog.msg[1s] = "* They're always moving^1, so I&  can see them 100-percent&  of the time!/%%"
0x000294:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0002D4:
    exit
