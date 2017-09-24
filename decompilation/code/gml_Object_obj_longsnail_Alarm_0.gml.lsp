0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Snail snail..^1.&* (A long journey extends&  in front of you...)/"
    stog.msg[1s] = "* Snail snail..^1.&* (Reach far and stretch&  beyond the horizons.)/"
    stog.msg[2s] = "* Snail snail^1.&* (So snaileth Sam Byool.)/%%"
    if !(> self.talkedto 0s) goto 0x0000C8
0x000098:
    stog.msg[0s] = "* Snail snail./"
    stog.msg[1s] = "* (Good gosh^1, don't I look&  like a perfectly normal&  snail?)/%%"
0x0000C8:
    push -5s
    if !(== 7s:flag 1s) goto 0x000114
0x0000E4:
    stog.msg[0s] = "* Snail snail^1.&* (You reached the end of&  your extensive journey.)/"
    stog.msg[1s] = "* Snail snail^1.&* (What a long trip^1! Remember&  to stretch your muscles.)/%%"
0x000114:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000154:
    exit
