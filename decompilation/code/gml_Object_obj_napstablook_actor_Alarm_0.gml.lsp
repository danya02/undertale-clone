0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* i'm..^1. working on a mix cd..^1.&* make yourself at home...?/%%"
    push -5s
    if !(> 36s:flag 0s) goto 0x00008C
0x000070:
    push -5s
    push (== 94s:flag 0s)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000C4
0x000094:
    stog.msg[0s] = "* uh^1, do you wanna..^1.&* listen to some tunes.../"
    stog.msg[1s] = "* or something.../%%"
0x0000C4:
    push -5s
    if !(== 458s:flag 1s) goto 0x0000F8
0x0000E0:
    stog.msg[0s] = "* uhhhh..^1.&* i'm gonna keep working&  on that mix cd./%%"
0x0000F8:
    push -5s
    if !(== 350s:flag 1s) goto 0x00015C
0x000114:
    stog.msg[0s] = "* i've almost got a mix cd&  finished for my scary&  neighbor.../"
    stog.msg[1s] = "* it's 74 minutes of people&  screaming their signature&  wrestling moves/"
    stog.msg[2s] = "* but they're all autotuned^1.&* i hope she likes it/%%"
0x00015C:
    push -5s
    if !(== 93s:flag 9s) goto 0x000190
0x000178:
    stog.msg[0s] = "* oh............../%%"
0x000190:
    push -5s
    if !(== 94s:flag 1s) goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "* oh..^1. a classic spooktune..^1.&* they don't make songs like&  this anymore.../%%"
0x0001C4:
    push -5s
    if !(== 94s:flag 2s) goto 0x0001F8
0x0001E0:
    stog.msg[0s] = "* dang..^1. that ambience...&* it's like my whole body&  is being spooked.../%%"
0x0001F8:
    push -5s
    if !(== 94s:flag 3s) goto 0x000244
0x000214:
    stog.msg[0s] = "* oh^1, this one..^1.&* once you learn the lyrics&  it's hard not to sing along.../"
    stog.msg[1s] = "* ooo ooo ooo^2o&* ooo ooo ooo^2o&* oo oo oo^1o oo ooo/%%"
0x000244:
    push -5s
    if !(== 7s:flag 1s) goto 0x0005FC
0x000260:
    push -5s
    if !(== 199s:flag 0s) goto 0x0004C8
0x00027C:
    stog.msg[0s] = "* oh..............^1.&* mettaton.......^1.&* i'm a huge fan......../"
    stog.msg[1s] = "* ..... oh^1, hi/"
    push -5s
    if !(> 194s:flag 0s) goto 0x0002F8
0x0002C8:
    stog.msg[0s] = "* what^1? undyne says hi^1?&* then tell her...^1.&* i say.........../"
    stog.msg[1s] = "* ......................&  ...... something cool./"
0x0002F8:
    push -5s
    if !(> 36s:flag 0s) goto 0x00035C
0x000314:
    stog.msg[2s] = "* human...^1.&* i'll never forget when you&  cheered me on/"
    stog.msg[3s] = "* when i was pretending to&  sleep.../"
    stog.msg[4s] = "* no one had ever had so&  much faith in my fake&  sleep..../"
0x00035C:
    push -5s
    if !(<= 36s:flag 0s) goto 0x0003C0
0x000378:
    stog.msg[2s] = "* human..^1.&* i'll never forget.../"
    stog.msg[3s] = "* that time you tried to&  destroy me..^1.&* but... you failed..../"
    stog.msg[4s] = "* sorry..^1.&* i messed it up/"
0x0003C0:
    stog.msg[5s] = "* uh........^1.&* also.....^1.&* this is awkward... but/"
    stog.msg[6s] = "* what's...^1.&  your name/"
    stog.msg[7s] = "* everyone seems to know&  it now^1, except me...../"
    stog.msg[8s] = "* seems like i've been&  missing out lately/"
    stog.msg[9s] = "* i was just sitting at home&  listening to tunes/"
    stog.msg[10s] = "* there was a flash of light&  outside my window/"
    stog.msg[11s] = "* i saw the snails on the farm&  disappear/"
    stog.msg[12s] = "* then i heard a knock at&  the door/"
    stog.msg[13s] = "* the flash of light wanted&  to come in...&* i closed the blinds.../"
    stog.msg[14s] = "* now everyone knows your&  name except for me/"
    stog.msg[15s] = "* \"frisk...\"&* ok^1, i wont forget it/%%"
0x0004C8:
    push -5s
    if !(>= 199s:flag 1s) goto 0x000544
0x0004E4:
    stog.msg[0s] = "* your name...?/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* \"frisk\"..^1.&* i didnt forget/"
    stog.msg[3s] = "* because i cried the&  letters into my hand/%%"
0x000544:
    push -5s
    if !(>= 199s:flag 2s) goto 0x0005D8
0x000560:
    stog.msg[0s] = "* oh no..^1.&* the letters in my hand&  are joining together/"
    stog.msg[1s] = "* oh no..^1.&* i'm going to forget your&  name.../"
    stog.msg[2s] = "* oh no..^1.&* i'm trying to cry more&  tears into my hand.../"
    stog.msg[3s] = "* oh no..^1.&* the tears are all forming&  a big pile.../"
    stog.msg[4s] = "* oh no..^1.&* your name's getting really&  long/%%"
0x0005D8:
    push -5s
    stog.flag[(+ 199s:flag 1s)] = 199s
0x0005FC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00063C:
    exit
