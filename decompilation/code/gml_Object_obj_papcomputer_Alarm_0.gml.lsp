0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000130
0x000054:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "THE INTERNET^1!&I'M QUITE&POPULAR THERE./"
    stog.msg[2s] = "I'M JUST A&DOZEN AWAY.../"
    stog.msg[3s] = "FROM A DOUBLE&DIGIT FOLLOWER&COUNT!/"
    stog.msg[4s] = "\\E3OF COURSE^1, FAME&HAS A STEEP&PRICE./"
    stog.msg[5s] = "\\E1A JEALOUS TROLL&HAS BESIEGED MY&ONLINE PERSONA./"
    stog.msg[6s] = "ALWAYS SENDING&ME BAD PUNS IN&A GOOFY FONT.../%%/"
    if !(> self.read 0s) goto 0x00012C
0x000114:
    stog.msg[0s] = "* (The computer's internet&  browser is opened to&  a social media site.)/%%"
0x00012C:
    goto 0x000148
0x000130:
    stog.msg[0s] = "* (The computer's internet&  browser is opened to&  a social media site.)/%%"
0x000148:
    if !(== self.room 120s) goto 0x000174
0x00015C:
    stog.msg[0s] = "* (The computer's internet&  browser is opened to&  a music-sharing forum.)/%%"
0x000174:
    if !(== self.room 266s) goto 0x000218
0x000188:
    stog.msg[0s] = "* (Looks like this dog makes&  a lot of bad posts&  on-line.)/"
    stog.msg[1s] = "* (Text to speech is on.)/"
    stog.msg[2s] = "* (Seems like the dog barks^1,&  and it translates to these&  bad posts.)/"
    stog.msg[3s] = "* (It doesn't really know what&  it's saying.)/"
    stog.msg[4s] = "* (Seems like most bad posts&  on-line^1, are actually this&  dog.)/"
    stog.msg[5s] = "* (Thinking about this...^1)&* (Brings you relief.)/%%"
0x000218:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000258:
    exit
