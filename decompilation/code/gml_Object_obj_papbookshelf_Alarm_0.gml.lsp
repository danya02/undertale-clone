0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000118
0x000054:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "THAT BOOK'S ONE&OF MY&FAVORITES./"
    stog.msg[2s] = "\"ADVANCED PUZZLE&CONSTRUCTION FOR&CRITICAL MINDS.\"/"
    stog.msg[3s] = "THAT NEXT BOOK'S&ANOTHER ONE OF&MY FAVORITES./"
    stog.msg[4s] = "\"PEEK-A-BOO WITH&FLUFFY BUNNY.\"/"
    stog.msg[5s] = "\\E3THE ENDING&ALWAYS GETS ME./%%"
    if !(> self.read 0s) goto 0x000114
0x0000FC:
    stog.msg[0s] = "* (Complex manuals and&  children's books.)/%%"
0x000114:
    goto 0x000148
0x000118:
    stog.msg[0s] = "* (The bookshelf is filled&  with complex tomes&  about puzzle creation.)/"
    stog.msg[1s] = "* (And children's books.)/%%"
0x000148:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000188:
    exit
