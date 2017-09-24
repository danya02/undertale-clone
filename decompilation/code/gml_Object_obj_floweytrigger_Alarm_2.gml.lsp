0x000000:
    call (instance_create[]:int32 (var 860s) (var 260s) (var 146s))
    global.msc = 201s
    global.typer = 4s
    global.interact = 1s
    global.facechoice = 1s
    self.conversation = 3s
    if !(== self.faketor 1s) goto 0x000160
0x000074:
    global.msc = 0s
    stog.msg[0s] = "\\E1* Hello..^1.&* Are you all right?/"
    stog.msg[1s] = "* You must be so lost&  and confused.../"
    stog.msg[2s] = "\\E2* Ah, do not be&  afraid^1, my child./"
    stog.msg[3s] = "\\W* I am \\BTORIEL\\W,&  caretaker of the&  \\RRUINS\\W./"
    stog.msg[4s] = "* I pass through here&  every day to see if&  anyone has fallen down./"
    stog.msg[5s] = "* You are the first&  human to come here&  in a long time./"
    stog.msg[6s] = "* I will do my best&  to protect you during&  your time here./"
    stog.msg[7s] = "* Come^1!&* I shall guide you&  through the catacombs./%%"
    pushenv (int32 self.temptor) 0x00015C
0x000150:
    call (instance_destroy[]:int32 )
0x00015C:
    popenv 0x000150
0x000160:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000184:
    exit
