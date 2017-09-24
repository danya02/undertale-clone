0x000000:
    self.dingus = (+ self.dingus 1s)
    if !(== global.plot 21s) goto 0x000040
0x00002C:
    push (== self.dingus 2s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x00006C
0x000048:
    call (instance_create[]:int32 (var 861s) (var 90s) (var 370s))
0x00006C:
    if !(== self.conversation 2s) goto 0x00009C
0x000080:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x000100
0x0000A4:
    pushenv 861s 0x0000D8
0x0000AC:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 41s))
0x0000D8:
    popenv 0x0000AC
0x0000DC:
    global.plot = 22s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000100:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000238
0x000118:
    if !(== self.conversation 1s) goto 0x000238
0x00012C:
    global.interact = 1s
    self.myinteract = 3s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 2s
    global.msc = 0s
    stog.msg[0s] = "* You wish to know how&  to return \"home,\"&  do you not?/"
    stog.msg[1s] = "* Ahead of us lies the&  end of the RUINS./"
    stog.msg[2s] = "* A one-way exit to the&  rest of the underground./"
    stog.msg[3s] = "* I am going to destroy&  it./"
    stog.msg[4s] = "* No one will ever&  be able to leave&  again./"
    stog.msg[5s] = "* Now be a good child&  and go upstairs./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x000238:
    exit
