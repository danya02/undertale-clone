0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (cough, cough)/"
    stog.msg[1s] = "* When I was younger^1, my teachers&  gave me word searches when&  they ran out of assignments./"
    stog.msg[2s] = "* I thought they were a waste&  of time./"
    stog.msg[3s] = "* But look at me now.../"
    stog.msg[4s] = "* I'm the number-one word-search&  creator in the entire&  underground!/%%"
    if !(>= global.plot 122s) goto 0x000110
0x0000C8:
    stog.msg[0s] = "* (cough^1, cough)/"
    stog.msg[1s] = "* There's a day I just don't&  want to work./"
    stog.msg[2s] = "* It's called \"Today.\"/%%"
0x000110:
    push -5s
    if !(== 7s:flag 1s) goto 0x00015C
0x00012C:
    stog.msg[0s] = "* This will be our newspaper's&  last issue.../"
    stog.msg[1s] = "* Why don't we just put a&  big \"THE END\" on the front&  and call it a day?/%%"
0x00015C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00019C:
    exit
