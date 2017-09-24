0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 34s) goto 0x0000B4
0x000068:
    stog.msg[0s] = "* It's you!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "* Still just you^1, Frisk./%%"
0x0000B4:
    if !(== self.room 34s) goto 0x0000DC
0x0000C8:
    push (== (murdererlv1[]:int32 ) 1s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x000114
0x0000E4:
    stog.msg[0s] = (+ (+ "* It's me^1, " global.charname) "./%%")
0x000114:
    if !(== self.room 221s) goto 0x000140
0x000128:
    stog.msg[0s] = "* It's a golden flower./%%"
0x000140:
    if !(== self.room 222s) goto 0x0001B0
0x000154:
    stog.msg[0s] = "* Despite everything^1, it's&  still you./%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0001B0
0x000180:
    stog.msg[0s] = (+ (+ "* It's me^1, " global.charname) "./%%")
0x0001B0:
    if !(== self.room 37s) goto 0x0001D8
0x0001C4:
    push (< self.x 130s)
    goto 0x0001DC
0x0001D8:
    push 0s
0x0001DC:
    if !pop goto 0x0001F8
0x0001E0:
    stog.msg[0s] = "* Inside the cupboard are&  cookie cutters for&  gingerbread monsters./%%"
0x0001F8:
    if !(== self.room 37s) goto 0x000234
0x00020C:
    if !(== (murdererlv1[]:int32 ) 1s) goto 0x000234
0x000220:
    push (< self.x 130s)
    goto 0x000238
0x000234:
    push 0s
0x000238:
    if !pop goto 0x000254
0x00023C:
    stog.msg[0s] = "\\R* Where are the knives./%%"
0x000254:
    if !(== self.room 37s) goto 0x00027C
0x000268:
    push (> self.x 130s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x00029C
0x000284:
    stog.msg[0s] = "* The stovetop is very clean^1.&* Toriel must use fire&  magic instead./%%"
0x00029C:
    if !(== self.room 37s) goto 0x0002E0
0x0002B0:
    if !(> self.x 130s) goto 0x0002E0
0x0002C4:
    push -5s
    push (== 45s:flag 4s)
    goto 0x0002E4
0x0002E0:
    push 0s
0x0002E4:
    if !pop goto 0x000300
0x0002E8:
    stog.msg[0s] = "* No one will use this&  anymore.../%%"
0x000300:
    if !(== self.room 225s) goto 0x000328
0x000314:
    push (< self.x 130s)
    goto 0x00032C
0x000328:
    push 0s
0x00032C:
    if !pop goto 0x000374
0x000330:
    stog.msg[0s] = "* (It's a note.^1)&* Howdy^1! Help yourself to&  anything you want!/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000374
0x00035C:
    stog.msg[0s] = "* I've read this already./%%"
0x000374:
    if !(== self.room 225s) goto 0x00039C
0x000388:
    push (> self.x 130s)
    goto 0x0003A0
0x00039C:
    push 0s
0x0003A0:
    if !pop goto 0x0003E8
0x0003A4:
    stog.msg[0s] = "* (The stovetop is very clean.^1)&* (Someone must use fire&  magic instead.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0003E8
0x0003D0:
    stog.msg[0s] = "* Stovetop./%%"
0x0003E8:
    if !(== self.room 224s) goto 0x0004AC
0x0003FC:
    if !(< self.x 160s) goto 0x000454
0x000410:
    stog.msg[0s] = "* (What a comfortable bed.^1)&* (If you laid down here^1,&  you might not ever get up.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000454
0x00043C:
    stog.msg[0s] = "* My bed./%%"
0x000454:
    if !(> self.x 160s) goto 0x0004AC
0x000468:
    stog.msg[0s] = "* (It's a twin-sized bed.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0004AC
0x000494:
    stog.msg[0s] = "* His bed./%%"
0x0004AC:
    if !(== self.room 223s) goto 0x0004D8
0x0004C0:
    stog.msg[0s] = "* (It's a king-sized bed.)/%%"
0x0004D8:
    if !(== self.room 74s) goto 0x00057C
0x0004EC:
    stog.msg[0s] = "* \"MONSTER HISTORY PART 4\"/"
    stog.msg[1s] = "* Fearing the humans no longer^1,&  we moved out of our old&  city^1, HOME./"
    stog.msg[2s] = "* We braved harsh cold^1, damp&  swampland^1, and searing heat.../"
    stog.msg[3s] = "* Until we reached what we now&  call our capital./"
    stog.msg[4s] = "* \"NEW HOME.\"/"
    stog.msg[5s] = "* Again^1, our King is really&  bad at names...?/%%"
0x00057C:
    if !(== self.room 123s) goto 0x000620
0x000590:
    stog.msg[0s] = "* Excuse me..^1.&* Yes^1, you^1, with the striped&  shirt./"
    stog.msg[1s] = "* Can you do something about&  your friend...?/"
    stog.msg[2s] = "* Yes^1, your friend..^1.&* The one behind you^1, with the&  creepy smile./%%"
    push -5s
    if !(== 97s:flag 1s) goto 0x00060C
0x0005F4:
    stog.msg[0s] = "* Hmmm^1?&* Where'd your friend go?/%%"
0x00060C:
    stog.flag[97s] = 1s
0x000620:
    if !(== self.room 91s) goto 0x000664
0x000634:
    stog.msg[0s] = "* If a monster defeats a human^1,&  they can take its SOUL./"
    stog.msg[1s] = "* A monster with a human SOUL..^1.&* A horrible beast with&  unfathomable power./%%"
0x000664:
    if !(== self.room 141s) goto 0x000700
0x000678:
    stog.msg[0s] = "* (It's a video feed of your&  location.)/%%"
    if !(< global.plot 126s) goto 0x0006BC
0x0006A4:
    stog.msg[0s] = "* It's you...?/%%"
0x0006BC:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000700
0x0006D0:
    stog.msg[0s] = (+ (+ "* It's me^1, " global.charname) "./%%")
0x000700:
    self.read = (+ self.read 1s)
    if !(== self.room 142s) goto 0x000738
0x00072C:
    global.msc = 645s
0x000738:
    if !(== self.room 154s) goto 0x00085C
0x00074C:
    stog.msg[0s] = "* (It's a microwave.^1)&* (That's great if you're a&  microwave fan.)/%%"
    if !(< global.plot 134s) goto 0x00078C
0x000778:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x000790
0x00078C:
    push 0s
0x000790:
    if !pop goto 0x0007AC
0x000794:
    stog.msg[0s] = "* (It's too dark to see&  near the walls.)/%%"
0x0007AC:
    if !(bool (instance_exists[]:int32 (var 1173s))) goto 0x00085C
0x0007C4:
    global.typer = 27s
    stog.msg[0s] = "* MTT-BRAND MICROWAVE^1!&* ORIGIN OF THE MTT CHALLENGE!/"
    stog.msg[1s] = "* PUT YOUR FOOD IN AND SET&  THE MICROWAVE ON HIGH FOR&  FIVE MINUTES.../"
    stog.msg[2s] = "* IF YOU CAN STILL RECOGNIZE&  YOUR MEAL^1, WE'LL DOUBLE YOUR&  MONEY BACK!!!/%%"
    if !(== global.plot 134s) goto 0x00085C
0x00082C:
    stog.msg[0s] = "* STILL FIDDLING WITH THAT&  MICROWAVE, EH, DARLING?/"
    stog.msg[1s] = "* CAN'T BLAME YOU FOR BEING&  TOTALLY ENAMORED WITH AN&  ELECTRONIC BOX./%%"
0x00085C:
    if !(== self.room 118s) goto 0x0008C0
0x000870:
    stog.msg[0s] = "* (In the sink is a teacup&  in the shape of a fish.)/%%"
    if !(> self.x 200s) goto 0x0008C0
0x00089C:
    global.facechoice = 5s
    global.typer = 37s
    global.msc = 714s
0x0008C0:
    if !(== self.room 245s) goto 0x0009B0
0x0008D4:
    stog.msg[0s] = "* ENTRY NUMBER 5/"
    stog.msg[1s] = "* I've done it./"
    stog.msg[2s] = "* Using the blueprints^1, I've&  extracted it from the&  human SOULs./"
    stog.msg[3s] = "* I believe this is what&  gives their SOULs the strength&  to persist after death./"
    stog.msg[4s] = "* The will to keep living..^1.&* The resolve to change fate./"
    stog.msg[5s] = "* Let's call this power.../"
    stog.msg[6s] = "\\Y* \"Determination.\"/%%"
    push -5s
    if !(== 485s:flag 1s) goto 0x0009B0
0x000998:
    stog.msg[0s] = "* (It seems to be turned off.)/%%"
0x0009B0:
    if !(== self.room 252s) goto 0x0009DC
0x0009C4:
    stog.msg[0s] = "* (Golden flowers.)/%%"
0x0009DC:
    if !(== self.room 78s) goto 0x000A28
0x0009F0:
    if !(< self.y 128s) goto 0x000A10
0x000A04:
    global.msc = 845s
0x000A10:
    stog.msg[0s] = "* (It's Sans's dirty sock pile.^1)&* (Sc..^1. scandalous...?)/%%"
0x000A28:
    if !(== self.room 80s) goto 0x000A54
0x000A3C:
    stog.msg[0s] = "* (There's a strange machine&  behind the curtain.^1)&* (It seems to be broken.)/%%"
0x000A54:
    if !(== self.room 68s) goto 0x000B08
0x000A68:
    push -5s
    if !(< 497s:flag 3s) goto 0x000A9C
0x000A84:
    stog.msg[0s] = "* (It's locked.)/%%"
0x000A9C:
    push -5s
    if !(>= 497s:flag 3s) goto 0x000B08
0x000AB8:
    stog.msg[0s] = "* (You unlocked the door and&  entered.)/%%"
    call (instance_create[]:int32 (var 963s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 108s))
0x000B08:
    if !(== self.room 266s) goto 0x000B34
0x000B1C:
    stog.msg[0s] = "* (Finally^1, the pieces of the&  puzzle are coming together.^1)&* (The jigsaw puzzle.)/%%"
0x000B34:
    if !(== self.room 84s) goto 0x000B60
0x000B48:
    stog.msg[0s] = "* Huh!^1?&* There's a camera behind&  the waterfall./%%"
0x000B60:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000B88:
    exit
