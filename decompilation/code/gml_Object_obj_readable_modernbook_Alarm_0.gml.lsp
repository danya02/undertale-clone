0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    stog.msg[0s] = "* (Here I am..^1.&* Writing this book.)/"
    stog.msg[1s] = "* (A person comes in and picks&  up the book...)/"
    stog.msg[2s] = "* (They start reading it...!)/"
    stog.msg[3s] = "* Oh^1, sorry^1.&* I'm still writing that one./%%"
    self.read = (+ self.read 1s)
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000F8
0x0000E0:
    stog.msg[0s] = "* (Some unfinished book.)/%%"
0x0000F8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000120:
    exit
