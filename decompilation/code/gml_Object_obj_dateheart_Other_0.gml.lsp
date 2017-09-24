0x000000:
    if !(bool (instance_exists[]:int32 (var 169s))) goto 0x00002C
0x000018:
    push (== self.deleteafter 0s)
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x0000BC
0x000034:
    stog.msg[0s] = "\\E0I UNDERSTAND&WHY YOU'RE&RUNNING AWAY./"
    stog.msg[1s] = "\\E2YOU'RE OVERWHELMED&BY THE SIGHT OF&MY COOL VIBES./"
    stog.msg[2s] = "\\E0BUT YOU CAN'T&BACK DOWN NOW!!!/%%"
    self.deleteafter = 1s
    self.x = self.xstart
    self.y = self.ystart
    call (event_user[]:int32 (var 1s))
0x0000BC:
    exit
