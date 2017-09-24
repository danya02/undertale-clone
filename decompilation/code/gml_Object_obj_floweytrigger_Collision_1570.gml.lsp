0x000000:
    if !(== global.plot 0s) goto 0x0005F8
0x000014:
    other.x = other.xprevious
    other.y = other.yprevious
    global.interact = 1s
    if !(== self.alter 0s) goto 0x0005E0
0x000054:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.g = (ini_read_real[]:int32 (var 0s) (var "Met1") (var "Flowey"))
    self.truename = (ini_read_real[]:int32 (var 0s) (var "truename") (var "Flowey"))
    self.IK = (ini_read_real[]:int32 (var 0s) (var "IK") (var "Flowey"))
    self.NK = (ini_read_real[]:int32 (var 0s) (var "NK") (var "Flowey"))
    global.currentsong = (caster_load[]:int32 (var "music/flowey.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    global.typer = 9s
    global.facechoice = 2s
    global.faceemotion = 0s
    global.msc = 200s
    self.spec = 0s
    if !(== self.g 1s) goto 0x000270
0x0001BC:
    global.msc = 0s
    stog.msg[0s] = "\\W* Howdy^2!&* I'm\\Y FLOWEY\\W.^2 &* \\YFLOWEY\\W the \\YFLOWER\\W!/"
    stog.msg[1s] = "* Hee hee hee.../"
    stog.msg[2s] = "* Why'd you make me&  introduce myself?/"
    stog.msg[3s] = "* It's rude to act&  like you don't&  know who I am./"
    stog.msg[4s] = "* Someone ought to teach&  you proper manners./"
    stog.msg[5s] = "* I guess little old me&  will have to do./"
    stog.msg[6s] = "* Ready^2?&* Here we go!/%%"
0x000270:
    if !(> self.g 1s) goto 0x0002A8
0x000284:
    global.msc = 0s
    stog.msg[0s] = "* Don't you have anything&  better to do?/%%"
0x0002A8:
    self.conversation = 1s
    if (> self.NK 0s) goto 0x0002F0
0x0002C8:
    if (> self.IK 0s) goto 0x0002F0
0x0002DC:
    push (> self.truename 0s)
    goto 0x0002F4
0x0002F0:
    push 1s
0x0002F4:
    if !pop goto 0x000304
0x0002F8:
    self.spec = 1s
0x000304:
    if !(== self.spec 1s) goto 0x00055C
0x000318:
    global.msc = 0s
    call (ini_write_real[]:int32 (var 1s) (var "Alter") (var "Flowey"))
    stog.msg[0s] = "* Error/%%"
    if !(== self.truename 1s) goto 0x0003DC
0x00037C:
    stog.msg[0s] = (+ (+ "* Really^1, " global.charname) "?/")
    stog.msg[1s] = "\\E5* Well^1, do what you&  will./"
    stog.msg[2s] = "\\E4* I'll be waiting for&  you!/%%"
0x0003DC:
    if !(> self.IK 0s) goto 0x000480
0x0003F0:
    stog.msg[0s] = "\\E0* Hey^1.&* Remember./"
    stog.msg[1s] = "\\E2* DON'T kill anyone./"
    stog.msg[2s] = "\\E2* .../"
    stog.msg[3s] = "\\E1* I can't believe this&  is a REAL thing I&  have to remind you./"
    stog.msg[4s] = "\\E0* Hee hee hee.../"
    stog.msg[5s] = "* Good luck!/%%"
0x000480:
    if !(> self.NK 0s) goto 0x00053C
0x000494:
    stog.msg[0s] = "* Remember.../"
    stog.msg[1s] = "\\E1* THIS time^1, you've&  GOT to become friends&  with everyone./"
    stog.msg[2s] = "\\E2* OK?/"
    stog.msg[3s] = "\\E5* If you DON'T^1, you'll&  be miserable FOREVER./"
    stog.msg[4s] = "\\E1* And we wouldn't want&  THAT^1, would we?/"
    stog.msg[5s] = "\\E0* No..^1.&* We just want you&  to be happy^1, right?/"
    stog.msg[6s] = "* Good luck. /%%"
0x00053C:
    self.conversation = 19s
    stog.alarm[4s] = 5s
0x00055C:
    call (ini_write_real[]:int32 (+ self.g 1s) (var "Met1") (var "Flowey"))
    call (ini_close[]:int32 )
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x0005DC
0x0005B8:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0005DC:
    goto 0x0005F8
0x0005E0:
    global.plot = 1s
    self.conversation = 23s
0x0005F8:
    exit
