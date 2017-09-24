0x000000:
    self.myinteract = 3s
    global.msc = 556s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    stog.msg[0s] = "* (There's an empty pie tin&  inside the stove.)/%%"
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x00010C
0x000078:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "\\E0MY BROTHER ALWAYS&GOES OUT TO EAT^1.&BUT.../"
    stog.msg[2s] = "\\E3RECENTLY^1, HE TRIED&'BAKING' SOMETHING./"
    stog.msg[3s] = "IT WAS LIKE..^1.&A QUICHE./"
    stog.msg[4s] = "BUT FILLED WITH A&SUGARY^1, NON-EGG&SUBSTANCE./"
    stog.msg[5s] = "\\E0HOW ABSURD!/%%"
0x00010C:
    if !(> self.talkedto 0s) goto 0x000138
0x000120:
    stog.msg[0s] = "* (There's an empty pie tin&  inside the stove.)/%%"
0x000138:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000178:
    exit
