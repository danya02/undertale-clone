0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* That skeleton over there&  just told me how to dodge&  \"orange attacks.\"/"
    stog.msg[1s] = "* What did he say...?&* Something like.../"
    stog.msg[2s] = "* \"Traffic lights have three&  lights on them.\"/"
    stog.msg[3s] = "* \"The third light^1, the green&  one^1, means GO.\"/"
    stog.msg[4s] = "* \"The first light^1, the red&  one^1, means STOP.\"/"
    stog.msg[5s] = "* \"The second light^1, the yellow&  one^1, means YIELD.\"/"
    stog.msg[6s] = "* \"In order to dodge an&  orange attack^1, you must&  be moving.\"/"
    stog.msg[7s] = "* \"So^1, just think of it&  this way...\"/"
    stog.msg[8s] = "* \"Red and yellow lights together&  make orange.\"/"
    stog.msg[9s] = "* \"Then you obey the rule&  of the leftover green&  light^1, which means GO.\"/"
    stog.msg[10s] = "* \"Easy^1, huh?\"/"
    stog.msg[11s] = "* \"Just think of a red and yellow&  traffic light which is&  actually green.\"/"
    stog.msg[12s] = "* Yeah.../"
    stog.msg[13s] = "* Then he started talking about&  plaid attacks.../%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001CC:
    exit
