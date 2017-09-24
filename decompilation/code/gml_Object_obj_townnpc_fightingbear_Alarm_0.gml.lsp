0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hey^1, shrimp^1!&* You look like you get your&  butt kicked a lot!/"
    stog.msg[1s] = "* Why don't you check out&  my new book on fighting&  in the library?/"
    stog.msg[2s] = "* That is..^1.&* If you're tough enough to&  love reading books!/"
    stog.msg[3s] = "* GROWL!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000DC:
    exit
