0x000000:
    self.iniwrite = (ini_open[]:int32 (var "undertale.ini"))
    self.gs = (ini_read_real[]:int32 (var 0s) (var "Gameover") (var "General"))
    call (ini_write_real[]:int32 (+ self.gs 1s) (var "Gameover") (var "General"))
    call (ini_close[]:int32 )
    if !(== self.gs 0s) goto 0x0000F4
0x0000A0:
    global.typer = 30s
    stog.msg[0s] = "  You cannot give&  up just yet.../"
    stog.msg[1s] = (+ (+ "  " global.charname) "^1!&  Stay determined.../%%")
0x0000F4:
    if !(> self.gs 0s) goto 0x00011C
0x000108:
    push (== global.kills 0s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000448
0x000124:
    global.typer = 32s
    self.gg = (floor[]:int32 (random[]:int32 (var 8s)))
    if !(== self.gg 0s) goto 0x0001AC
0x000164:
    stog.msg[0s] = (+ (+ "  " global.charname) ", this is just&  a bad dream.../")
    stog.msg[1s] = "  Wake up^1!&  It's not over!/%%"
0x0001AC:
    if !(== self.gg 1s) goto 0x000208
0x0001C0:
    stog.msg[0s] = (+ (+ "  " global.charname) "! It's like&  he says.../")
    stog.msg[1s] = "  You have to&  stay determined.../%%"
0x000208:
    if !(== self.gg 2s) goto 0x000264
0x00021C:
    stog.msg[0s] = (+ (+ "  " global.charname) "! Please&  don't give up.../")
    stog.msg[1s] = "  Have some&  determination.../%%"
0x000264:
    if !(== self.gg 3s) goto 0x0002D8
0x000278:
    stog.msg[0s] = (+ (+ (+ (+ "  " global.charname) "! You're&  ") global.charname) "!/")
    stog.msg[1s] = "  You can't quit^1!&  Stay determined.../%%"
0x0002D8:
    if !(== self.gg 4s) goto 0x000334
0x0002EC:
    stog.msg[0s] = (+ (+ "  " global.charname) ", is this&  a kind of joke?/")
    stog.msg[1s] = "  Cut it out^1!&  Wake up!/%%"
0x000334:
    if !(== self.gg 5s) goto 0x000390
0x000348:
    stog.msg[0s] = (+ (+ "  " global.charname) ", it's not&  time to leave!/")
    stog.msg[1s] = "  Hold on!/%%"
0x000390:
    if !(== self.gg 6s) goto 0x0003EC
0x0003A4:
    stog.msg[0s] = (+ (+ "  " global.charname) ", gather&  your strength./")
    stog.msg[1s] = "  Stay determined!/%%"
0x0003EC:
    if !(== self.gg 7s) goto 0x000448
0x000400:
    stog.msg[0s] = (+ (+ "  " global.charname) ", you have&  to keep going./")
    stog.msg[1s] = "  Stay determined!/%%"
0x000448:
    if !(> self.gs 0s) goto 0x000654
0x00045C:
    global.typer = 30s
    self.gg = (floor[]:int32 (random[]:int32 (var 5s)))
    if !(== self.gg 0s) goto 0x0004E4
0x00049C:
    stog.msg[0s] = "  You cannot give&  up just yet.../"
    stog.msg[1s] = (+ (+ "  " global.charname) "^1!&  Stay determined.../%%")
0x0004E4:
    if !(== self.gg 1s) goto 0x000540
0x0004F8:
    stog.msg[0s] = "  Our fate rests &  upon you.../"
    stog.msg[1s] = (+ (+ "  " global.charname) "^1!&  Stay determined.../%%")
0x000540:
    if !(== self.gg 2s) goto 0x00059C
0x000554:
    stog.msg[0s] = "  You're going to&  be alright!/"
    stog.msg[1s] = (+ (+ "  " global.charname) "^1!&  Stay determined.../%%")
0x00059C:
    if !(== self.gg 3s) goto 0x0005F8
0x0005B0:
    stog.msg[0s] = "  Don't lose hope!/"
    stog.msg[1s] = (+ (+ "  " global.charname) "^1!&  Stay determined.../%%")
0x0005F8:
    if !(== self.gg 4s) goto 0x000654
0x00060C:
    stog.msg[0s] = "  It cannot end&  now!/"
    stog.msg[1s] = (+ (+ "  " global.charname) "^1!&  Stay determined.../%%")
0x000654:
    push -5s
    if !(== 272s:flag 1s) goto 0x0006C4
0x000670:
    global.typer = 110s
    stog.msg[0s] = "  geeettttttt&  dunked on!!!/"
    stog.msg[1s] = "  if we're really&  friends.../"
    stog.msg[2s] = "  you won't come back./%%"
0x0006C4:
    self.dingus = 1s
    call (script_execute[]:int32 global.typer (var 150s))
    global.msc = 0s
    call (instance_create[]:int32 (var 782s) (var 300s) (var 100s))
0x00071C:
    exit
