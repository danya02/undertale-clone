0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000118
0x000054:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "AH-HA^1!&INTERESTED IN&MY FOOD MUSEUM?/"
    stog.msg[2s] = "PLEASE^1.&PERUSE MY&CULINARY ARTSHOW./"
    stog.msg[3s] = "\\TS \\F0 \\T0 %"
    stog.msg[4s] = "* (Half of the fridge is&  filled with containers&  all labelled \"spaghetti.\")/"
    stog.msg[5s] = "* (The other half contains&  nothing but an empty&  bag of chips.)/%%"
    if !(> self.talkedto 0s) goto 0x000114
0x0000FC:
    stog.msg[1s] = "GREAT FRIDGE^1,&ISN'T IT?/%%"
0x000114:
    goto 0x000148
0x000118:
    stog.msg[0s] = "* (Half of the fridge is&  filled with containers&  all labelled \"spaghetti.\")/"
    stog.msg[1s] = "* (The other half contains&  nothing but an empty&  bag of chips.)/%%"
0x000148:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000188:
    exit
