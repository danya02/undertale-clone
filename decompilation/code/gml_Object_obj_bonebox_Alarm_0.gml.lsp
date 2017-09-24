0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x0001DC
0x000054:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "HEY^1, THOSE ARE ALL&THE ATTACKS I USED&ON YOU./"
    stog.msg[2s] = "GREAT MEMORIES^1,&HUH?/"
    stog.msg[3s] = "SEEMS LIKE IT&WAS ONLY&YESTERDAY.../"
    stog.msg[4s] = "\\E3EVEN THOUGH&IT BASICALLY&JUST HAPPENED./%%"
    push -5s
    if !(== 290s:flag 1s) goto 0x0001AC
0x0000EC:
    stog.msg[1s] = "HEY^1, THOSE ARE ALL&THE ATTACKS I&DIDN'T USE./"
    stog.msg[2s] = "\\WHOW LUCKY OF YOU^1!&HAD I ONLY USED&MY \\YSPECIAL ATTACK\\W,/"
    stog.msg[3s] = "\\E2YOU SURELY WOULD&HAVE BEEN BLASTED&TO.../"
    stog.msg[4s] = "\\WH\\E3EY.^1 WAIT^1.&WHERE'S MY \\YSPECIAL&ATTACK\\W?/"
    stog.msg[5s] = "\\E1NO^1! I'VE BEEN&DOGBURGLED BY THAT&PERNICIOUS PUP!/"
    stog.msg[6s] = "\\E3THAT LOATHESOME&SCOUNDREL LOVES TO&SNEAK INTO MY ROOM./"
    stog.msg[7s] = "\\E5SOMETIMES IT EVEN&CRAWLS INTO MY BED&WHILE I'M RESTING./"
    stog.msg[8s] = "\\E3IF THAT WASN'T&BAD ENOUGH^1, IT HAS&VERY COLD FEET./%%"
0x0001AC:
    if !(> self.read 0s) goto 0x0001D8
0x0001C0:
    stog.msg[0s] = "* (It's a box of bones.)/%%"
0x0001D8:
    goto 0x0001F4
0x0001DC:
    stog.msg[0s] = "* (It's a box of bones.)/%%"
0x0001F4:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000234:
    exit
