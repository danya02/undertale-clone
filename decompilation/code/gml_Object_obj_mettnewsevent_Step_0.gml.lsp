0x000000:
    if !(== self.con 1s) goto 0x000140
0x000014:
    [obj_mainchara].cutscene = 1s
    stog.flag[17s] = 1s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Okay^1, I'm back!/"
    stog.msg[3s] = "\\E0* A-another dark room^1,&  huh?/"
    stog.msg[4s] = "\\E6* Don't worry!/"
    stog.msg[5s] = "\\E0* M-my hacking skills&  have got things&  covered!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 3s
    call (snd_play[]:int32 (var 104s))
    if !(== self.quickskip 1s) goto 0x000140
0x000134:
    self.con = 130s
0x000140:
    if !(== self.con 3s) goto 0x000170
0x000154:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x000604
0x000178:
    stog.flag[20s] = 1s
    call (snd_play[]:int32 (var 106s))
    self.con = 4s
    self.news = (caster_load[]:int32 (var "music/news.ogg"))
    if !(== self.quickskip 0s) goto 0x0001F0
0x0001DC:
    call (event_user[]:int32 (var 0s))
0x0001F0:
    stog.nitem[0s] = 0s
    self.dog = (instance_create[]:int32 (var 1222s) (var 250s) (var 380s))
    push 1s
    stog.type* = (int32 self.dog)
    stog.nitem[1s] = self.dog
    self.water = (instance_create[]:int32 (var 1222s) (var 336s) (var 276s))
    push 2s
    stog.type* = (int32 self.water)
    stog.nitem[2s] = self.water
    self.script = (instance_create[]:int32 (var 1222s) (var 342s) (var 380s))
    push 3s
    stog.type* = (int32 self.script)
    stog.nitem[3s] = self.script
    self.basketball = (instance_create[]:int32 (var 1222s) (var 252s) (var 278s))
    push 4s
    stog.type* = (int32 self.basketball)
    stog.nitem[4s] = self.basketball
    self.present = (instance_create[]:int32 (var 1222s) (var 246s) (var 494s))
    push 5s
    stog.type* = (int32 self.present)
    stog.nitem[5s] = self.present
    self.game = (instance_create[]:int32 (var 1222s) (var 342s) (var 494s))
    push 6s
    stog.type* = (int32 self.game)
    stog.nitem[6s] = self.game
    if !(== self.quickskip 0s) goto 0x0005F8
0x000428:
    self.ff1 = (instance_create[]:int32 (var 1183s) (var 300s) (var 140s))
    push 1s
    stog.image_xscale* = (int32 self.ff1)
    push 2s
    stog.image_yscale* = (int32 self.ff1)
    self.ff2 = (instance_create[]:int32 (var 1183s) (var 300s) (var 560s))
    push 1s
    stog.image_xscale* = (int32 self.ff2)
    push 2s
    stog.image_yscale* = (int32 self.ff2)
    self.ff3 = (instance_create[]:int32 (var 1183s) (var 200s) (var 340s))
    push 2s
    stog.image_xscale* = (int32 self.ff3)
    push 1s
    stog.image_yscale* = (int32 self.ff3)
    self.ff4 = (instance_create[]:int32 (var 1183s) (var 400s) (var 420s))
    push 2s
    stog.image_xscale* = (int32 self.ff4)
    push 1s
    stog.image_yscale* = (int32 self.ff4)
    self.ff5 = (instance_create[]:int32 (var 1183s) (var 300s) (var 720s))
    push 1s
    stog.image_xscale* = (int32 self.ff5)
    push 2s
    stog.image_yscale* = (int32 self.ff5)
    stog.alarm[4s] = 60s
    goto 0x000604
0x0005F8:
    self.con = 129s
0x000604:
    if !(== self.con 5s) goto 0x00067C
0x000618:
    stog.msg[0s] = "\\E3* Are you serious?/%%"
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.d)
    self.con = 6s
0x00067C:
    if !(== self.con 6s) goto 0x0006AC
0x000690:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0006B0
0x0006AC:
    push 0s
0x0006B0:
    if !pop goto 0x000804
0x0006B4:
    call (caster_loop[]:int32 (var 1s) (var 0.9d) self.news)
    self.con = 7s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    stog.msg[0s] = "* OHHHHHH YESSS!!!/"
    stog.msg[1s] = "* GOOD EVENING^1, BEAUTIES AND&  GENTLEBEAUTIES!/"
    stog.msg[2s] = "* THIS IS METTATON^1, REPORTING&  LIVE FROM MTT NEWS!/"
    stog.msg[3s] = "\\M2* AN INTERESTING SITUATION HAS&  ARISEN IN EASTERN HOTLAND!/"
    stog.msg[4s] = "\\M3* FORTUNATELY^1, OUR CORRESPONDENT&  IS OUT THERE^1, REPORTING LIVE!/"
    stog.msg[5s] = "\\M6* BRAVE CORRESPONDENT^1!&* PLEASE FIND SOMETHING&  NEWSWORTHY TO REPORT!/"
    stog.msg[6s] = "\\M4* OUR TEN WONDERFUL VIEWERS&  ARE WAITING FOR YOU!!/%%"
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dg)
0x000804:
    if !(== self.con 7s) goto 0x000834
0x000818:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000838
0x000834:
    push 0s
0x000838:
    if !pop goto 0x000868
0x00083C:
    stog.flag[20s] = 2s
    global.interact = 0s
    self.con = 8s
0x000868:
    if !(== self.con 50s) goto 0x0008D0
0x00087C:
    push 2s
    push -1s
    stog.con* = (int32 (int32 self.eventchoice):nitem)
    global.interact = 1s
    self.con = 51s
    stog.alarm[4s] = 20s
0x0008D0:
    if !(== self.con 51s) goto 0x0008F0
0x0008E4:
    global.interact = 1s
0x0008F0:
    if !(== self.con 52s) goto 0x00092C
0x000904:
    self.con = (+ 60s (* (- self.eventchoice 1s) 5s))
0x00092C:
    if !(== self.con 60s) goto 0x000AAC
0x000940:
    self.connor = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.facing = 0s
    stog.msg[0s] = "\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A DOG!/"
    stog.msg[1s] = "\\M4* (CUE AUDIENCE AWWS)/"
    stog.msg[2s] = "\\M3* THAT'S RIGHT^1, FOLKS^1!&* IT'S THE FEEL-GOOD&  STORY OF THE YEAR!/"
    stog.msg[3s] = "\\M4* LOOK AT ITS LITTLE&  EARS^1, TINY PAWS^1, FLUFFY&  TAIL.../"
    stog.msg[4s] = "* .../"
    stog.msg[5s] = "* WAIT A SECOND./"
    stog.msg[6s] = "\\M5* THAT'S NOT A TAIL!/"
    stog.msg[7s] = "\\M3* THAT'S.../"
    stog.msg[8s] = "\\M5* A FUSE!!!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 61s
0x000AAC:
    if !(== self.con 61s) goto 0x000AD8
0x000AC0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000ADC
0x000AD8:
    push 0s
0x000ADC:
    if !pop goto 0x000B30
0x000AE0:
    if !(== 782.stringno 4s) goto 0x000B08
0x000AF4:
    push (== self.connor 0s)
    goto 0x000B0C
0x000B08:
    push 0s
0x000B0C:
    if !pop goto 0x000B30
0x000B10:
    self.connor = 1s
    call (caster_pause[]:int32 self.news)
0x000B30:
    if !(== self.con 61s) goto 0x000B60
0x000B44:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B64
0x000B60:
    push 0s
0x000B64:
    if !pop goto 0x000BC0
0x000B68:
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.dog) 0x000B9C
0x000B8C:
    self.sprite_index = self.bombsprite
0x000B9C:
    popenv 0x000B8C
0x000BA0:
    self.con = 62s
    stog.alarm[4s] = 30s
0x000BC0:
    if !(== self.con 63s) goto 0x000C80
0x000BD4:
    stog.msg[0s] = "\\M4* THAT'S RIGHT..^1.&* THAT DOG.../"
    stog.msg[1s] = "\\M5* IS A BOMB!!!/"
    stog.msg[2s] = "\\M5* BUT DON'T PANIC!/"
    stog.msg[3s] = "\\M4* YOU HAVEN'T EVEN SEEN&  THE REST OF THE ROOM&  YET!!!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 100s
0x000C80:
    if !(== self.con 65s) goto 0x000E00
0x000C94:
    self.connor = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.facing = 0s
    stog.msg[0s] = "\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A GLASS OF WATER!/"
    stog.msg[1s] = "\\M4* BUT WHAT'S ASTONISHING&  ABOUT THIS GLASS OF&  WATER.../"
    stog.msg[2s] = "\\M3* IS HOW UNINTERESTING IT IS!/"
    stog.msg[3s] = "\\M4* LIKE ALL GLASSES OF WATER^1,&  IT'S COMPRISED OF WATER^1,&  GLASS^1, NITROGLYCERIN.../"
    stog.msg[4s] = "* .../"
    stog.msg[5s] = "* WAIT A SECOND./"
    stog.msg[6s] = "\\M5* THAT'S NOT A GLASS OF&  WATER!!!/"
    stog.msg[7s] = "\\M3* THAT'S.../"
    stog.msg[8s] = "\\M5* A BOMB!!!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 66s
0x000E00:
    if !(== self.con 66s) goto 0x000E2C
0x000E14:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000E30
0x000E2C:
    push 0s
0x000E30:
    if !pop goto 0x000E84
0x000E34:
    if !(== 782.stringno 4s) goto 0x000E5C
0x000E48:
    push (== self.connor 0s)
    goto 0x000E60
0x000E5C:
    push 0s
0x000E60:
    if !pop goto 0x000E84
0x000E64:
    self.connor = 1s
    call (caster_pause[]:int32 self.news)
0x000E84:
    if !(== self.con 66s) goto 0x000EB4
0x000E98:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000EB8
0x000EB4:
    push 0s
0x000EB8:
    if !pop goto 0x000F14
0x000EBC:
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.water) 0x000EF0
0x000EE0:
    self.sprite_index = self.bombsprite
0x000EF0:
    popenv 0x000EE0
0x000EF4:
    self.con = 67s
    stog.alarm[4s] = 30s
0x000F14:
    if !(== self.con 68s) goto 0x000FD4
0x000F28:
    stog.msg[0s] = "\\M5* OH NO!!^1!&* THIS NEWS REPORT.../"
    stog.msg[1s] = "\\M5* IS TURNING INTO A DISASTER&  REPORT!!!/"
    stog.msg[2s] = "\\M3* BUT DON'T PANIC!/"
    stog.msg[3s] = "\\M4* YOU HAVEN'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 100s
0x000FD4:
    if !(== self.con 70s) goto 0x0010C4
0x000FE8:
    self.connor = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.facing = 0s
    stog.msg[0s] = "\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A MOVIE SCRIPT!/"
    stog.msg[1s] = "\\M5* OH MY^1!&* AND IT LOOKS LIKE IT'S&  FOR MY LATEST FILM!/"
    stog.msg[2s] = "\\M3* LET'S NOT KEEP THEM WAITING^1!&* LET'S OPEN IT UP AND GET&  THE SCOOP!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 71s
0x0010C4:
    if !(== self.con 71s) goto 0x0010F4
0x0010D8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010F8
0x0010F4:
    push 0s
0x0010F8:
    if !pop goto 0x001168
0x0010FC:
    call (caster_pause[]:int32 self.news)
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.script) 0x001144
0x001134:
    self.sprite_index = self.bombsprite
0x001144:
    popenv 0x001134
0x001148:
    self.con = 72s
    stog.alarm[4s] = 30s
0x001168:
    if !(== self.con 73s) goto 0x001270
0x00117C:
    stog.msg[0s] = "\\M4* ... OH??^1?&* WHAT'S THAT INSIDE THE&  SCRIPT?/"
    stog.msg[1s] = "\\M4* THAT TICKING SOUND..^1.&* THAT LIT FUSE.../"
    stog.msg[2s] = "\\M5* OH MY!!^1!&* LOOKS LIKE I WAS WRONG&  ABOUT THE MOVIE!/"
    stog.msg[3s] = "* WE DEFINITELY HAVE A BOX&  OFFICE BOMB ON OUR HANDS!/"
    stog.msg[4s] = "* AND IT'S ABOUT TO BLAST&  YOU TO BITS!/"
    stog.msg[5s] = "\\M3* BUT DON'T GET TOO EXCITED!/"
    stog.msg[6s] = "\\M4* YOU HAVEN'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 100s
0x001270:
    if !(== self.con 75s) goto 0x0013F0
0x001284:
    self.connor = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.facing = 0s
    stog.msg[0s] = "\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A BASKETBALL!/"
    stog.msg[1s] = "\\M4* AH^1.&* BASKETBALLS./"
    stog.msg[2s] = "\\M3* CIRCLES OF FUN^1.&* ORBS OF JOY^1.&* SPHERES OF AMUSEMENT./"
    stog.msg[3s] = "\\M4* BUT YOU SHOULDN'T PLAY&  WITH THIS ONE^1.&* IT'S AN MTT-BRAND FASHIONBALL./"
    stog.msg[4s] = "\\M3* PROPER MAINTENANCE IS&  REQUIRED TO KEEP IT LOOKING&  GOOD./"
    stog.msg[5s] = "\\M3* AS YOU CAN SEE^1, EVEN EXPOSURE&  TO HUMAN BODY HEAT CAUSES&  THE PAINT TO SLOUGH OFF./"
    stog.msg[6s] = "* .../"
    stog.msg[7s] = "* WAIT A SECOND./"
    stog.msg[8s] = "* THAT'S NOT A BASKETBALL./%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 76s
0x0013F0:
    if !(== self.con 76s) goto 0x00141C
0x001404:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001420
0x00141C:
    push 0s
0x001420:
    if !pop goto 0x001474
0x001424:
    if !(== 782.stringno 6s) goto 0x00144C
0x001438:
    push (== self.connor 0s)
    goto 0x001450
0x00144C:
    push 0s
0x001450:
    if !pop goto 0x001474
0x001454:
    self.connor = 1s
    call (caster_pause[]:int32 self.news)
0x001474:
    if !(== self.con 76s) goto 0x0014A4
0x001488:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0014A8
0x0014A4:
    push 0s
0x0014A8:
    if !pop goto 0x001504
0x0014AC:
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.basketball) 0x0014E0
0x0014D0:
    self.sprite_index = self.bombsprite
0x0014E0:
    popenv 0x0014D0
0x0014E4:
    self.con = 77s
    stog.alarm[4s] = 30s
0x001504:
    if !(== self.con 78s) goto 0x0015F4
0x001518:
    stog.msg[0s] = "\\M5* THAT'S A BOMB!!!/"
    stog.msg[1s] = "* OH NO!!^1!&* THIS SPORT REVIEW.../"
    stog.msg[2s] = "* IS TURNING INTO A SHORT&  REVIEW!/"
    stog.msg[3s] = "* BECAUSE IT'LL BE OVER^1.&* AFTER YOU BLOW UP./"
    stog.msg[4s] = "\\M3* BUT DON'T GET TOO EXCITED!/"
    stog.msg[5s] = "\\M4* YOU HAVEN'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 100s
0x0015F4:
    if !(== self.con 80s) goto 0x0016E4
0x001608:
    self.connor = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.facing = 0s
    stog.msg[0s] = "\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A PRESENT!/"
    stog.msg[1s] = "\\M4* AND IT'S TIME FOR THE&  UNBOXING VIDEO!!!/"
    stog.msg[2s] = "\\M5* LET'S FIND OUT WHAT'S&  INSIDE!!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 81s
0x0016E4:
    if !(== self.con 81s) goto 0x001714
0x0016F8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001718
0x001714:
    push 0s
0x001718:
    if !pop goto 0x001788
0x00171C:
    call (caster_pause[]:int32 self.news)
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.present) 0x001764
0x001754:
    self.sprite_index = self.bombsprite
0x001764:
    popenv 0x001754
0x001768:
    self.con = 82s
    stog.alarm[4s] = 30s
0x001788:
    if !(== self.con 83s) goto 0x001890
0x00179C:
    stog.msg[0s] = "\\M2* THAT ROUND^1, BLACK SHAPE..^1.&* COULD IT BE???/"
    stog.msg[1s] = "\\M4* LOOKS LIKE CHRISTMAS CAME&  EARLY THIS YEAR./"
    stog.msg[2s] = "\\M5* IF SANTA GAVE PEOPLE BOMBS&  INSTEAD OF PRESENTS!!/"
    stog.msg[3s] = "\\M2* REALLY THOUGH^1.&* A BOMB^1.&* WHAT A THOUGHTFUL GIFT./"
    stog.msg[4s] = "\\M4* THEY EVEN DECIDED TO&  LIGHT IT FOR YOU!/"
    stog.msg[5s] = "\\M3* BUT DON'T GET TOO EXCITED!/"
    stog.msg[6s] = "\\M4* YOU HAVEN'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 100s
0x001890:
    if !(== self.con 85s) goto 0x0019B0
0x0018A4:
    self.connor = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.facing = 0s
    stog.msg[0s] = "\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A VIDEO GAME!/"
    stog.msg[1s] = "\\M4* THIS ACTION-PACKED GAME&  IS GUARANTEED TO BLOW YOU&  AWAY!/"
    stog.msg[2s] = "\\M3* STRANGE ENEMIES^1!&* STRANGE ALLIES^1!&* ATTRACTIVE ROBOTS!/"
    stog.msg[3s] = "\\M4* FEATURING UP TO SIX&  ARBITRARY DIALOGUE CHOICES&  AT ONCE!/"
    stog.msg[4s] = "\\M5* CORRESPONDENT^1!&* LET'S LOOK INSIDE THE CASE!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 86s
0x0019B0:
    if !(== self.con 86s) goto 0x0019E0
0x0019C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0019E4
0x0019E0:
    push 0s
0x0019E4:
    if !pop goto 0x001A54
0x0019E8:
    call (caster_pause[]:int32 self.news)
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.game) 0x001A30
0x001A20:
    self.sprite_index = self.bombsprite
0x001A30:
    popenv 0x001A20
0x001A34:
    self.con = 87s
    stog.alarm[4s] = 30s
0x001A54:
    if !(== self.con 88s) goto 0x001B5C
0x001A68:
    stog.msg[0s] = "\\M4* ..^1.&* THOSE RED CYLINDERS WITH&  BURNING FUSES.../"
    stog.msg[1s] = "\\M5* OH NO^1!&* THIS GAME LITERALLY IS&  DYNAMITE!/"
    stog.msg[2s] = "\\M5* I GUESS THEY WERE RIGHT&  ALL ALONG!!!/"
    stog.msg[3s] = "\\M5* VIDEO-GAMES DO CAUSE&  VIOLENCE!/"
    stog.msg[4s] = "\\M4* OR AT LEAST THIS ONE'S&  ABOUT TO./"
    stog.msg[5s] = "\\M3* BUT DON'T GET TOO EXCITED!/"
    stog.msg[6s] = "\\M4* YOU HAVEN'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%"
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
    self.con = 100s
0x001B5C:
    if !(== self.con 100s) goto 0x001B8C
0x001B70:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001B90
0x001B8C:
    push 0s
0x001B90:
    if !pop goto 0x001D18
0x001B94:
    push (int32 self.water):bombsprite
    stog.sprite_index* = (int32 self.water)
    push (int32 self.script):bombsprite
    stog.sprite_index* = (int32 self.script)
    push (int32 self.game):bombsprite
    stog.sprite_index* = (int32 self.game)
    if !(!= self.eventchoice 1s) goto 0x001C34
0x001C20:
    push (!= self.eventchoice 4s)
    goto 0x001C38
0x001C34:
    push 0s
0x001C38:
    if !pop goto 0x001C64
0x001C3C:
    push (int32 self.present):bombsprite
    stog.sprite_index* = (int32 self.present)
0x001C64:
    stog.flag[20s] = 8s
    pushenv (int32 self.ff2) 0x001C94
0x001C88:
    call (instance_destroy[]:int32 )
0x001C94:
    popenv 0x001C88
0x001C98:
    pushenv (int32 self.ff3) 0x001CB4
0x001CA8:
    call (instance_destroy[]:int32 )
0x001CB4:
    popenv 0x001CA8
0x001CB8:
    pushenv (int32 self.ff4) 0x001CD4
0x001CC8:
    call (instance_destroy[]:int32 )
0x001CD4:
    popenv 0x001CC8
0x001CD8:
    self.con = 103s
    stog.alarm[4s] = 50s
    [obj_mainchara].cutscene = 1s
    call (event_user[]:int32 (var 1s))
0x001D18:
    if !(== self.con 105s) goto 0x001E2C
0x001D2C:
    push -1s
    if !(> 0s:view_xview 240s) goto 0x001D6C
0x001D48:
    push -1s
    stog.view_xview[(- 0s:view_xview 3s)] = 0s
0x001D6C:
    push -1s
    if !(< 0s:view_xview 210s) goto 0x001DAC
0x001D88:
    push -1s
    stog.view_xview[(+ 0s:view_xview 3s)] = 0s
0x001DAC:
    push -1s
    if !(< 0s:view_yview 140s) goto 0x001DEC
0x001DC8:
    push -1s
    stog.view_yview[(+ 0s:view_yview 3s)] = 0s
0x001DEC:
    push -1s
    if !(> 0s:view_yview 150s) goto 0x001E2C
0x001E08:
    push -1s
    stog.view_yview[(- 0s:view_yview 3s)] = 0s
0x001E2C:
    if !(== self.con 104s) goto 0x001E60
0x001E40:
    self.con = 105s
    stog.alarm[4s] = 30s
0x001E60:
    if !(== self.con 106s) goto 0x001E80
0x001E74:
    self.con = 107s
0x001E80:
    if !(== self.con 107s) goto 0x001F94
0x001E94:
    global.typer = 27s
    global.msc = 0s
    global.faceemotion = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* OH MY!/"
    stog.msg[1s] = "* IT SEEMS EVERYTHING IN THIS&  AREA IS ACTUALLY A BOMB!/"
    if !(!= self.eventchoice 1s) goto 0x001F30
0x001F08:
    stog.msg[2s] = "* THAT DOG'S A BOMB!/%%"
    self.con = 108s
    goto 0x001F54
0x001F30:
    stog.msg[2s] = "* THAT PRESENT'S A BOMB!/%%"
    self.con = 112s
0x001F54:
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dg)
0x001F94:
    if !(== self.con 108s) goto 0x001FC4
0x001FA8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001FC8
0x001FC4:
    push 0s
0x001FC8:
    if !pop goto 0x002028
0x001FCC:
    call (snd_play[]:int32 (var 106s))
    push (int32 self.dog):bombsprite
    stog.sprite_index* = (int32 self.dog)
    self.con = 109s
    stog.alarm[4s] = 30s
0x002028:
    if !(== self.con 110s) goto 0x002048
0x00203C:
    self.con = 116s
0x002048:
    if !(== self.con 112s) goto 0x002078
0x00205C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00207C
0x002078:
    push 0s
0x00207C:
    if !pop goto 0x0020DC
0x002080:
    call (snd_play[]:int32 (var 106s))
    push (int32 self.present):bombsprite
    stog.sprite_index* = (int32 self.present)
    self.con = 109s
    stog.alarm[4s] = 30s
0x0020DC:
    if !(== self.con 116s) goto 0x002190
0x0020F0:
    if !(!= self.eventchoice 4s) goto 0x00212C
0x002104:
    stog.msg[0s] = "* THAT BASKETBALL'S A BOMB!/%%"
    self.con = 118s
    goto 0x002150
0x00212C:
    stog.msg[0s] = "* THAT PRESENT'S A BOMB!/%%"
    self.con = 122s
0x002150:
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dg)
0x002190:
    if !(== self.con 118s) goto 0x0021C0
0x0021A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0021C4
0x0021C0:
    push 0s
0x0021C4:
    if !pop goto 0x002224
0x0021C8:
    call (snd_play[]:int32 (var 106s))
    push (int32 self.basketball):bombsprite
    stog.sprite_index* = (int32 self.basketball)
    self.con = 119s
    stog.alarm[4s] = 20s
0x002224:
    if !(== self.con 122s) goto 0x002254
0x002238:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002258
0x002254:
    push 0s
0x002258:
    if !pop goto 0x0022B8
0x00225C:
    call (snd_play[]:int32 (var 106s))
    push (int32 self.present):bombsprite
    stog.sprite_index* = (int32 self.present)
    self.con = 119s
    stog.alarm[4s] = 20s
0x0022B8:
    if !(== self.con 120s) goto 0x0022D8
0x0022CC:
    self.con = 125s
0x0022D8:
    if !(== self.con 125s) goto 0x002358
0x0022EC:
    stog.msg[0s] = "* EVEN MY WORDS ARE...!/%%"
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dg)
    self.con = 125.1d
0x002358:
    if !(== self.con 125.1d) goto 0x002390
0x002374:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002394
0x002390:
    push 0s
0x002394:
    if !pop goto 0x002468
0x002398:
    push (var 1230s)
    push -1s
    self.wordfall = (instance_create[]:int32 (+ 0s:view_yview 20s) -1s (+ 0s:view_xview 20s))
    global.typer = 5s
    stog.msg[0s] = "\\TS ^7  %"
    stog.msg[1s] = " %%"
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dg)
    self.con = 126s
0x002468:
    if !(== self.con 126s) goto 0x002498
0x00247C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00249C
0x002498:
    push 0s
0x00249C:
    if !pop goto 0x00257C
0x0024A0:
    self.bigbomb = (scr_marker[]:int32 (var 1767s) (var 80s) (var 340s))
    push 500000
    stog.depth* = (int32 self.bigbomb)
    self.bigbombsolid = (instance_create[]:int32 (var 8s) (var 100s) (var 340s))
    global.typer = 27s
    stog.msg[0s] = "\\W* BRAVE CORRESPONDENT..^1.&* IF YOU DON'T DEFUSE ALL OF&  THE BOMBS.../%%"
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dg)
    self.con = 127s
0x00257C:
    if !(== self.con 127s) goto 0x0025AC
0x002590:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0025B0
0x0025AC:
    push 0s
0x0025B0:
    if !pop goto 0x00263C
0x0025B4:
    global.facing = 2s
    stog.view_object[0s] = -4s
    push -1s
    if !(> 0s:view_yview 40s) goto 0x002630
0x0025F0:
    [obj_mettanchor].y = (- 1223.y 15s)
    push -1s
    stog.view_yview[(- 0s:view_yview 10s)] = 0s
    goto 0x00263C
0x002630:
    self.con = 128s
0x00263C:
    if !(== self.con 128s) goto 0x002784
0x002650:
    stog.msg[0s] = "\\W*\\M9 THIS BIG BOMB WILL BLOW&  YOU TO SMITHEREENS IN&  \\YTWO MINUTES\\W!/"
    stog.msg[1s] = "\\M8* THEN YOU WON'T BE REPORTING&  \"LIVE\" ANY LONGER!/"
    stog.msg[2s] = "* HOW TERRIBLE^1!&* HOW DISTURBING!/"
    stog.msg[3s] = "\\M9* OUR NINE VIEWERS ARE GOING&  TO LOVE WATCHING THIS!/"
    stog.msg[4s] = "* GOOD LUCK^1, DARLING!!/%%"
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dg)
    self.con = 129s
    pushenv 1222s 0x002728
0x00271C:
    self.vspeed = 5s
0x002728:
    popenv 0x00271C
0x00272C:
    pushenv 1222s 0x002740
0x002734:
    self.gtfo = 1s
0x002740:
    popenv 0x002734
0x002744:
    pushenv (int32 self.dog) 0x002760
0x002754:
    self.vspeed = 0s
0x002760:
    popenv 0x002754
0x002764:
    pushenv (int32 self.dog) 0x002780
0x002774:
    self.gtfo = 0s
0x002780:
    popenv 0x002774
0x002784:
    if !(== self.con 129s) goto 0x0027B4
0x002798:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0027B8
0x0027B4:
    push 0s
0x0027B8:
    if !pop goto 0x002C88
0x0027BC:
    if !(bool (instance_exists[]:int32 self.game)) goto 0x0027F4
0x0027D4:
    pushenv (int32 self.game) 0x0027F0
0x0027E4:
    call (instance_destroy[]:int32 )
0x0027F0:
    popenv 0x0027E4
0x0027F4:
    if !(bool (instance_exists[]:int32 self.present)) goto 0x00282C
0x00280C:
    pushenv (int32 self.present) 0x002828
0x00281C:
    call (instance_destroy[]:int32 )
0x002828:
    popenv 0x00281C
0x00282C:
    if !(bool (instance_exists[]:int32 self.script)) goto 0x002864
0x002844:
    pushenv (int32 self.script) 0x002860
0x002854:
    call (instance_destroy[]:int32 )
0x002860:
    popenv 0x002854
0x002864:
    if !(bool (instance_exists[]:int32 self.water)) goto 0x00289C
0x00287C:
    pushenv (int32 self.water) 0x002898
0x00288C:
    call (instance_destroy[]:int32 )
0x002898:
    popenv 0x00288C
0x00289C:
    if !(bool (instance_exists[]:int32 self.basketball)) goto 0x0028D4
0x0028B4:
    pushenv (int32 self.basketball) 0x0028D0
0x0028C4:
    call (instance_destroy[]:int32 )
0x0028D0:
    popenv 0x0028C4
0x0028D4:
    [obj_mettanchor].hspeed = 6s
    global.facing = 0s
    self.go = 0s
    self.xx = 1570.x
    self.yy = 1570.y
    push -1s
    push 0s:view_xview
    if !(< self.xx (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))) goto 0x00298C
0x002968:
    push -1s
    stog.view_xview[(+ 0s:view_xview 5s)] = 0s
0x00298C:
    push -1s
    push 0s:view_xview
    if !(> self.xx (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))) goto 0x002A00
0x0029DC:
    push -1s
    stog.view_xview[(- 0s:view_xview 5s)] = 0s
0x002A00:
    push -1s
    push 0s:view_xview
    if !(< (abs[]:int32 (- self.xx (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s)))) 6s) goto 0x002AC0
0x002A60:
    push self.xx
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))
    self.go = (+ self.go 1s)
0x002AC0:
    push -1s
    push 0s:view_yview
    if !(< self.yy (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))) goto 0x002B34
0x002B10:
    push -1s
    stog.view_yview[(+ 0s:view_yview 5s)] = 0s
0x002B34:
    push -1s
    push 0s:view_yview
    if !(> self.yy (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))) goto 0x002BA8
0x002B84:
    push -1s
    stog.view_yview[(- 0s:view_yview 5s)] = 0s
0x002BA8:
    push -1s
    push 0s:view_yview
    if !(< (abs[]:int32 (- self.yy (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s)))) 6s) goto 0x002C68
0x002C08:
    push self.yy
    stog.view_yview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))
    self.go = (+ self.go 1s)
0x002C68:
    if !(== self.go 2s) goto 0x002C88
0x002C7C:
    self.con = 130s
0x002C88:
    if !(> self.con 129s) goto 0x002E5C
0x002C9C:
    if !(== self.quickskip 0s) goto 0x002E5C
0x002CB0:
    if !(bool (instance_exists[]:int32 self.dog)) goto 0x002E5C
0x002CC8:
    self.clumber = 0s
    if !(> 1570.x (int32 self.dog):x) goto 0x002D24
0x002CF8:
    if !(> (int32 self.dog):x 300s) goto 0x002D24
0x002D18:
    self.clumber = 1s
0x002D24:
    if !(< 1570.x (int32 self.dog):x) goto 0x002D74
0x002D48:
    if !(< (int32 self.dog):x 400s) goto 0x002D74
0x002D68:
    self.clumber = 2s
0x002D74:
    if !(!= self.clumber 0s) goto 0x002E0C
0x002D88:
    if !(== self.clumber 1s) goto 0x002DBC
0x002D9C:
    push -0.5d
    stog.hspeed* = (int32 self.dog)
0x002DBC:
    if !(== self.clumber 2s) goto 0x002DF0
0x002DD0:
    push 0.5d
    stog.hspeed* = (int32 self.dog)
0x002DF0:
    push 1521s
    stog.sprite_index* = (int32 self.dog)
    goto 0x002E5C
0x002E0C:
    push 0s
    stog.hspeed* = (int32 self.dog)
    push 0.1d
    stog.image_speed* = (int32 self.dog)
    push 1517s
    stog.sprite_index* = (int32 self.dog)
0x002E5C:
    if !(== self.con 130s) goto 0x002E8C
0x002E70:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002E90
0x002E8C:
    push 0s
0x002E90:
    if !pop goto 0x002FA0
0x002E94:
    call (caster_free[]:int32 (var -3s))
    global.mercy = 1s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* D-don't worry!/"
    stog.msg[3s] = "\\E6* I installed a&  bomb-defusing program&  on your phone!/"
    stog.msg[4s] = "\\W* Use the 'defuse' option&  when the bomb is in the&  \\GDEFUSE ZONE\\W!/"
    stog.msg[5s] = "\\E0* N-now^1, go get 'em!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 131s
    call (snd_play[]:int32 (var 104s))
0x002FA0:
    if !(== self.con 131s) goto 0x002FD0
0x002FB4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002FD4
0x002FD0:
    push 0s
0x002FD4:
    if !pop goto 0x0032F0
0x002FD8:
    if !(== self.quickskip 0s) goto 0x003060
0x002FEC:
    pushenv 1223s 0x003000
0x002FF4:
    call (instance_destroy[]:int32 )
0x003000:
    popenv 0x002FF4
0x003004:
    self.newdog = (instance_create[]:int32 (var 1225s) (int32 self.dog):y (int32 self.dog):x)
    pushenv 1222s 0x003058
0x00304C:
    call (instance_destroy[]:int32 )
0x003058:
    popenv 0x00304C
0x00305C:
    goto 0x003088
0x003060:
    self.newdog = (instance_create[]:int32 (var 1225s) (var 300s) (var 400s))
0x003088:
    self.newwater = (instance_create[]:int32 (var 1225s) (var 400s) (var 430s))
    push 2s
    stog.bombtype* = (int32 self.newwater)
    self.newscript = (instance_create[]:int32 (var 1225s) (var 420s) (var 680s))
    push 3s
    stog.bombtype* = (int32 self.newscript)
    self.newbasketball = (instance_create[]:int32 (var 1225s) (var 100s) (var 340s))
    push 4s
    stog.bombtype* = (int32 self.newbasketball)
    self.newpresent = (instance_create[]:int32 (var 1225s) (var 100s) (var 650s))
    push 5s
    stog.bombtype* = (int32 self.newpresent)
    self.newgame = (instance_create[]:int32 (var 1225s) (var 500s) (var 210s))
    push 6s
    stog.bombtype* = (int32 self.newgame)
    push (var 1231s)
    push -1s
    self.newticker = (instance_create[]:int32 (+ 0s:view_yview 200s) -1s 0s:view_xview)
    push 1s
    stog.on* = (int32 self.newticker)
    push 1s
    stog.doom* = (int32 self.newticker)
    push 40s
    stog.voff* = (int32 self.newticker)
    self.doomtimer = (instance_create[]:int32 (var 1226s) (var 0s) (var 0s))
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.interact = 0s
    global.currentsong = (caster_load[]:int32 (var "music/news_battle.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    self.con = 132s
0x0032F0:
    if !(== self.con 160s) goto 0x0033A4
0x003304:
    pushenv (int32 self.doomtimer) 0x003320
0x003314:
    call (instance_destroy[]:int32 )
0x003320:
    popenv 0x003314
0x003324:
    push 0s
    stog.on* = (int32 self.newticker)
    push 3s
    stog.vspeed* = (int32 self.newticker)
    global.interact = 1s
    self.con = 161s
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    stog.alarm[4s] = 15s
0x0033A4:
    if !(== self.con 161s) goto 0x0033C4
0x0033B8:
    global.interact = 1s
0x0033C4:
    if !(== self.con 162s) goto 0x00359C
0x0033D8:
    push -5s
    if !(== 288s:flag 1s) goto 0x003400
0x0033F4:
    self.failure = 1s
0x003400:
    if !(== self.failure 1s) goto 0x003464
0x003414:
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 30s))
    pushenv 1225s 0x003460
0x003454:
    call (instance_destroy[]:int32 )
0x003460:
    popenv 0x003454
0x003464:
    pushenv (int32 self.newticker) 0x003480
0x003474:
    call (instance_destroy[]:int32 )
0x003480:
    popenv 0x003474
0x003484:
    push (var 1223s)
    push -1s
    self.mett = (instance_create[]:int32 (+ 0s:view_yview 70s) -1s (+ 0s:view_xview 340s))
    stog.flag[20s] = 8s
    push 2s
    stog.on* = (int32 self.mett)
    if !(bool (instance_exists[]:int32 (var 92s))) goto 0x00353C
0x003510:
    pushenv 92s 0x003524
0x003518:
    call (instance_destroy[]:int32 )
0x003524:
    popenv 0x003518
0x003528:
    call (caster_free[]:int32 (var -3s))
0x00353C:
    global.currentsong = (caster_load[]:int32 (var "music/mtgameshow.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    self.con = 163s
    stog.alarm[4s] = 20s
0x00359C:
    if !(== self.con 164s) goto 0x003780
0x0035B0:
    self.conner = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    if !(== self.failure 0s) goto 0x003690
0x003600:
    stog.msg[0s] = "* WELL DONE^1, DARLING!/"
    stog.msg[1s] = "* YOU'VE DEACTIVATED ALL OF&  THE BOMBS!/"
    stog.msg[2s] = "\\W* IF YOU DIDN'T DEACTIVATE&  THEM^1, THE BIG BOMB WOULD&  HAVE EXPLODED IN \\YTWO MINUTES\\W./"
    stog.msg[3s] = "\\W* NOW IT WON'T EXPLODE&  IN \\YTWO MINUTES\\W!/"
    stog.msg[4s] = "\\W*\\M9 INSTEAD IT'LL EXPLODE&  IN \\YTWO SECONDS\\W!/"
    stog.msg[5s] = "* GOODBYE^1, DARLING!/%%"
0x003690:
    if !(== self.failure 1s) goto 0x003734
0x0036A4:
    stog.msg[0s] = "* TOO BAD^1, DARLING!/"
    stog.msg[1s] = "\\W* YOU FAILED TO DEFUSE ALL&  OF THE BOMBS WITHIN \\YTHREE&  MINUTES\\W!/"
    stog.msg[2s] = "* NOW THE BIG BOMB IS&  GOING TO BLOW YOU TO&  SMITHEREENS!/"
    stog.msg[3s] = "* READY^1, VIEWERS^1?&* HERE COMES THE MOMENT&  YOU'VE ALL BEEN WAITING FOR!/"
    stog.msg[4s] = "* AHAHAH!/"
    stog.msg[5s] = "* GOODBYE^1, DARLING!/%%"
0x003734:
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.d)
    self.con = 165s
0x003780:
    if !(== self.con 165s) goto 0x0037AC
0x003794:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0037B0
0x0037AC:
    push 0s
0x0037B0:
    if !pop goto 0x00388C
0x0037B4:
    if !(== 782.stringno 4s) goto 0x0037DC
0x0037C8:
    push (== self.conner 0s)
    goto 0x0037E0
0x0037DC:
    push 0s
0x0037E0:
    if !pop goto 0x003804
0x0037E4:
    self.conner = 1s
    call (caster_pause[]:int32 global.currentsong)
0x003804:
    if !(== 782.stringno 5s) goto 0x00382C
0x003818:
    push (< self.conner 2s)
    goto 0x003830
0x00382C:
    push 0s
0x003830:
    if !pop goto 0x00388C
0x003834:
    self.mypitch = 1s
    self.ohno = (caster_load[]:int32 (var "music/bad.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.ohno)
    self.conner = 2s
0x00388C:
    if !(== self.con 165s) goto 0x0038BC
0x0038A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0038C0
0x0038BC:
    push 0s
0x0038C0:
    if !pop goto 0x0038E4
0x0038C4:
    self.con = 166s
    stog.alarm[4s] = 80s
0x0038E4:
    if !(== self.con 167s) goto 0x0039A0
0x0038F8:
    self.mypitch = (- self.mypitch 0.015d)
    call (caster_set_volume[]:int32 self.mypitch self.ohno)
    call (caster_set_pitch[]:int32 self.mypitch self.ohno)
    if !(< self.mypitch 0.06d) goto 0x0039A0
0x00396C:
    self.con = 168s
    stog.alarm[4s] = 30s
    call (caster_free[]:int32 self.ohno)
0x0039A0:
    if !(== self.con 169s) goto 0x003B94
0x0039B4:
    self.conner = 0s
    stog.msg[0s] = "\\M8* AH./"
    stog.msg[1s] = "* IT SEEMS THE BOMB ISN'T&  GOING OFF./"
    stog.msg[2s] = "\\T0* Ring.../"
    call (scr_alface[]:int32 (var 6s) (var 3s))
    stog.msg[4s] = "* That's b-because!!!/"
    stog.msg[5s] = "* While you were&  monologuing... I...!!!/"
    stog.msg[6s] = "\\E4* I f..^1. fix..^1.&* Um..^1. I ch-change.../"
    stog.msg[7s] = "\\TS \\F0 \\E0 \\TM %"
    stog.msg[8s] = "* OH NO^1.&* YOU DEACTIVATED THE BOMB&  WITH YOUR HACKING SKILLS./"
    call (scr_alface[]:int32 (var 5s) (var 9s))
    stog.msg[10s] = "* Yeah^1!&* That's what I did!/"
    stog.msg[11s] = "\\TS \\F0 \\E0 \\TM %"
    stog.msg[12s] = "\\M9* CURSES^1!&* IT SEEMS I'VE BEEN FOILED&  AGAIN!/"
    stog.msg[13s] = "* CURSE YOU^1, HUMAN^1!&* CURSE YOU^1, DR. ALPHYS^1,&  FOR HELPING SO MUCH!/"
    stog.msg[14s] = "\\M8* BUT I DON'T CURSE MY&  EIGHT WONDERFUL VIEWERS&  FOR TUNING IN!!!/"
    stog.msg[15s] = "* UNTIL NEXT TIME^1, DARLING!/%%"
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dg)
    self.con = 170s
0x003B94:
    if !(== self.con 170s) goto 0x003BC4
0x003BA8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003BC8
0x003BC4:
    push 0s
0x003BC8:
    if !pop goto 0x003F0C
0x003BCC:
    global.typer = 47s
    push 4s
    stog.hspeed* = (int32 self.mett)
    push 99s
    stog.on* = (int32 self.mett)
    global.facechoice = 6s
    global.faceemotion = 0s
    if !(== self.failure 0s) goto 0x003D6C
0x003C34:
    stog.msg[0s] = "* W-wow..^1.&* W-we really showed&  him^1, huh?/"
    stog.msg[1s] = "\\E2* .../"
    stog.msg[2s] = "\\E4* H-hey^1, I know I was&  kind of weird at&  first.../"
    stog.msg[3s] = "\\E0* But I really think&  I'm getting more.../"
    stog.msg[4s] = "\\E4* Uh^1, more.../"
    stog.msg[5s] = "\\E6* M-more confident about&  guiding you!/"
    stog.msg[6s] = "\\E0* S-so don't worry&  about that b-big&  d-dumb robot.../"
    stog.msg[7s] = "\\E6* I-I'll protect you&  from him!/"
    stog.msg[8s] = "\\E3* A-and if it really&  c-came down to it^1,&  we could just t-turn.../"
    stog.msg[9s] = "\\E5* Um^1, nevermind./"
    stog.msg[10s] = "\\E0* Later!/"
    stog.msg[11s] = "\\TS \\F0 \\E0 \\T0 %"
    stog.msg[12s] = "* (Click...)/%%"
0x003D6C:
    if !(== self.failure 1s) goto 0x003EDC
0x003D80:
    global.faceemotion = 4s
    stog.msg[0s] = "* B-boy..^1.&* That was close^1, huh?/"
    stog.msg[1s] = "\\E8* I guess a little&  closer than I would&  have liked./"
    stog.msg[2s] = "\\E9* I should have given&  you better directions.../"
    stog.msg[3s] = "\\E8* A-and there j-just&  w-wasn't enough&  time.../"
    stog.msg[4s] = "\\E6* W-well^1!&* That's Mettaton's fault^1,&  not mine!/"
    stog.msg[5s] = "\\E9* I c-can't second&  guess myself now./"
    stog.msg[6s] = "\\E4* I'm f-finally starting&  to f-feel confident&  about g-guiding you./"
    stog.msg[7s] = "\\E6* I'll protect you from&  that mean old robot^1,&  n-no matter what!/"
    stog.msg[8s] = "\\E3* If I have to^1,&  I'll even t-turn.../"
    stog.msg[9s] = "\\E5* Um^1, nevermind./"
    stog.msg[10s] = "\\E0* We're over halfway&  to the core!/"
    stog.msg[11s] = "* Let's go!/"
    stog.msg[12s] = "\\TS \\F0 \\E0 \\T0 %"
    stog.msg[13s] = "* (Click...)/%%"
0x003EDC:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 171s
0x003F0C:
    if !(== self.con 171s) goto 0x003F3C
0x003F20:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003F40
0x003F3C:
    push 0s
0x003F40:
    if !pop goto 0x00405C
0x003F44:
    self.flowey = (instance_create[]:int32 (var 1339s) (var 300s) (var 40s))
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    pushenv 1231s 0x003FA0
0x003F94:
    call (instance_destroy[]:int32 )
0x003FA0:
    popenv 0x003F94
0x003FA4:
    pushenv 1223s 0x003FB8
0x003FAC:
    call (instance_destroy[]:int32 )
0x003FB8:
    popenv 0x003FAC
0x003FBC:
    pushenv 1183s 0x003FD0
0x003FC4:
    call (instance_destroy[]:int32 )
0x003FD0:
    popenv 0x003FC4
0x003FD4:
    global.plot = 161s
    self.con = 172s
    call (caster_free[]:int32 (var -3s))
    pushenv 1281s 0x004014
0x004008:
    self.active = 2s
0x004014:
    popenv 0x004008
0x004018:
    global.interact = 0s
    stog.flag[17s] = 0s
    global.mercy = 0s
    call (scr_tempsave[]:int32 )
    call (instance_destroy[]:int32 )
0x00405C:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x00408C
0x004078:
    stog.view_yview[0s] = 0s
0x00408C:
    exit
