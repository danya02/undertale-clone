0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    if !(== self.room 50s) goto 0x000124
0x000050:
    stog.msg[0s] = "* hey^1, here's something&  important to remember./"
    stog.msg[1s] = "\\W* my brother has a very&  \\Bspecial attack\\W./"
    stog.msg[2s] = "\\W* if you see a \\Lblue&  attack\\W,^1 don't move and&  it won't hurt you./"
    stog.msg[3s] = "* here's an easy way to&  keep it in mind./"
    stog.msg[4s] = "\\W* imagine a stop sign^1.&* when you see a stop&  sign^1, you \\Rstop^1,\\W right?/"
    stog.msg[5s] = "\\W* stop signs are \\Rred\\W.&* so imagine a \\Lblue\\W stop&  sign instead./"
    stog.msg[6s] = "\\W* simple^1, right^1?&* when fighting^1, think&  about \\Yblue stop signs\\W./%%"
    if !(> self.talkedto 0s) goto 0x000124
0x00010C:
    stog.msg[0s] = "* remember..^1.&* blue stop signs./%%"
0x000124:
    if !(== self.room 52s) goto 0x000230
0x000138:
    stog.msg[0s] = "* hey^1, thanks..^1.&* my brother seems like&  he's having fun./"
    stog.msg[1s] = "* by the way^1, did you&  see that weird outfit&  he's wearing?/"
    stog.msg[2s] = "* we made that a few&  weeks ago for a costume&  party./"
    stog.msg[3s] = "* he hasn't worn anything&  else since.../"
    stog.msg[4s] = "* keeps calling it his&  \"battle body.\"/"
    stog.msg[5s] = "* man./"
    stog.msg[6s] = "\\E1* isn't my brother cool?/%%"
    if !(>= (scr_murderlv[]:int32 ) 3s) goto 0x000210
0x0001F4:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x000230
0x000218:
    stog.msg[0s] = "* it would make my&  brother happy if you&  played along./%%"
0x000230:
    if !(== self.room 53s) goto 0x000250
0x000244:
    global.msc = 235s
0x000250:
    if !(== self.room 55s) goto 0x0003A8
0x000264:
    push -5s
    if !(== 58s:flag 0s) goto 0x0002B4
0x000280:
    stog.msg[0s] = "* thanks for saying&  \"junior jumble\" just&  to appease my brother./"
    stog.msg[1s] = "\\E1* yesterday he got&  stumped trying to&  \"solve\" the horoscope./%%"
    goto 0x0002E4
0x0002B4:
    stog.msg[0s] = "* papyrus..^1.&* ... finds difficulty in&  interesting places./"
    stog.msg[1s] = "\\E1* yesterday he got&  stumped trying to&  \"solve\" the horoscope./%%"
0x0002E4:
    if !(>= (scr_murderlv[]:int32 ) 3s) goto 0x0003A8
0x0002F8:
    push -5s
    if !(== 254s:flag 0s) goto 0x000378
0x000314:
    stog.msg[0s] = "* guess you don't like&  word searches^1, huh?/"
    stog.msg[1s] = "\\E2* me neither^1.&* i'm more of a funny&  pages kind of guy./"
    stog.msg[2s] = "\\E0* .../"
    stog.msg[3s] = "\\E1* .../%%"
    goto 0x0003A8
0x000378:
    stog.msg[0s] = "\\E1* i guess despite all&  that^1, you still like&  word searches^1, huh...?/"
    stog.msg[1s] = "\\E0* that means you can't&  be all bad./%%"
0x0003A8:
    if !(== self.room 60s) goto 0x000448
0x0003BC:
    stog.msg[0s] = "* actually^1, that spaghetti&  from earlier..^1./"
    stog.msg[1s] = "* it wasn't too bad for&  my brother./"
    stog.msg[2s] = "* since he started cooking&  lessons^1, he's been&  improving a lot./"
    stog.msg[3s] = "\\E1* i bet if he keeps it&  up^1, next year he'll even&  make something edible./%%"
    if !(>= (scr_murderlv[]:int32 ) 4s) goto 0x000448
0x000430:
    stog.msg[0s] = "* hey..^1.&* puzzles might be fun^1.&* if you tried them./%%"
0x000448:
    if !(== self.room 59s) goto 0x0005E0
0x00045C:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.M1 = (ini_read_real[]:int32 (var 0s) (var "M1") (var "Sans"))
    call (ini_close[]:int32 )
    push -5s
    if !(>= 63s:flag 0s) goto 0x000514
0x0004CC:
    stog.msg[0s] = "* good job on solving it&  so quickly^1./"
    stog.msg[1s] = "* you didn't even need&  my help./"
    stog.msg[2s] = "* which is great^1, 'cause&  i love doing absolutely&  nothing./%%"
0x000514:
    push -5s
    if !(== 63s:flag 0s) goto 0x000544
0x000530:
    push (> self.M1 1s)
    goto 0x000548
0x000544:
    push 0s
0x000548:
    if !pop goto 0x000594
0x00054C:
    stog.msg[0s] = "* ... you must be really&  good at puzzles^1,&  huh?/"
    stog.msg[1s] = "* i mean./"
    stog.msg[2s] = "* it's impossible for&  you to have seen&  this one before./%%"
0x000594:
    push -5s
    if !(> 63s:flag 5s) goto 0x0005E0
0x0005B0:
    stog.msg[0s] = "* hey^1, why didn't you&  ask for help?/"
    stog.msg[1s] = "\\E1* i was right here./%%"
0x0005E0:
    if !(== self.room 64s) goto 0x000638
0x0005F4:
    stog.msg[0s] = "* what's up?/%%"
    if !(> 1023.talkedto 0s) goto 0x000638
0x000620:
    stog.msg[0s] = "* you sure do like to&  exercise./%%"
0x000638:
    if !(== self.room 67s) goto 0x000848
0x00064C:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.PK = (ini_read_real[]:int32 (var 0s) (var "PK") (var "Papyrus"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "* i don't know what my&  brother's going to do&  now./"
    stog.msg[1s] = "\\W* if i were you^1, i would&  make sure i understand&  \\Bblue attacks\\W./%%"
    if !(> self.PK 0s) goto 0x000714
0x0006E4:
    stog.msg[0s] = "* here^1, i'll give you some&  advice about fighting&  my brother./"
    stog.msg[1s] = "\\E1* don't^1.&* capiche?/%%"
0x000714:
    if !(>= (scr_murderlv[]:int32 ) 5s) goto 0x000744
0x000728:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000748
0x000744:
    push 0s
0x000748:
    if !pop goto 0x000848
0x00074C:
    stog.msg[0s] = "\\E1* hmmm.../"
    stog.msg[1s] = "\\E2* guess we didn't need&  your help to have a&  good time after all./"
    stog.msg[2s] = "\\E3* .../"
    stog.msg[3s] = "\\E2* say^1, i've been&  thinking./"
    stog.msg[4s] = "\\E1* seems like you're&  gonna fight my brother&  pretty soon./"
    stog.msg[5s] = "\\E2* here's some friendly&  advice./"
    stog.msg[6s] = "\\E3* if you keep going the&  way you are now.../"
    stog.msg[7s] = "* .../"
    stog.msg[8s] = "\\E4* you're gonna have a&  bad time./%%"
    self.s_click = 1s
    pushenv 1570s 0x000844
0x000838:
    self.uncan = 1s
0x000844:
    popenv 0x000838
0x000848:
    if !(== self.room 95s) goto 0x0008DC
0x00085C:
    push -5s
    if !(== 85s:flag 0s) goto 0x000884
0x000878:
    global.msc = 551s
0x000884:
    push -5s
    if !(== 85s:flag 1s) goto 0x0008DC
0x0008A0:
    global.msc = 0s
    stog.msg[0s] = "\\E0* dang^1, i wish i brought&  a parasol./"
    stog.msg[1s] = "\\E1* i'm getting a nasty burn&  from all this sun./%%"
0x0008DC:
    if !(== self.room 158s) goto 0x000920
0x0008F0:
    call (instance_create[]:int32 (var 1525s) (var 0s) (var 0s))
    global.msc = 685s
0x000920:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    [obj_sans_room].talkedto = (+ 1022.talkedto 1s)
0x000960:
    exit
