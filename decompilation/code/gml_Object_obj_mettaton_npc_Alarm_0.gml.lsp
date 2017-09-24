0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Capital wenisberry./%%"
    if !(== self.room 154s) goto 0x000120
0x000068:
    stog.msg[0s] = "\\W* \\YMILK^1, SUGAR^1, \\WAND\\Y EGGS\\W!&* YOU SHOULD BE ABLE TO FIND&  THEM ON THE BACK COUNTER!/%%"
    if !(== self.milk 1s) goto 0x0000BC
0x000094:
    if !(== self.eggs 1s) goto 0x0000BC
0x0000A8:
    push (== self.sugar 1s)
    goto 0x0000C0
0x0000BC:
    push 0s
0x0000C0:
    if !pop goto 0x0000DC
0x0000C4:
    stog.msg[0s] = "* GREAT JOB^1!&* JUST PUT THEM IN THE MIDDLE&  OF THIS COUNTER!/%%"
0x0000DC:
    if !(== global.plot 134s) goto 0x000120
0x0000F0:
    stog.msg[0s] = "* WHAT'S THE MATTER?&* NOT A CAN FAN?&* THAT'S TOO BAD!/"
    stog.msg[1s] = "* MTT-BRAND USES ONLY THE&  FRESHEST ARTIFICIAL INGREDIENTS&  AND CHEMICALS!/%%"
0x000120:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000160:
    exit
