0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 568s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 42s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 10s
    self.sha = 0s
    self.shb = 0s
    global.faceemotion = 0s
    self.songcon = 0s
    push -5s
    if !(> 501s:flag 0s) goto 0x000130
0x000118:
    [obj_talkbt].spec = 1s
    [obj_talkbt].sprite_index = 4s
0x000130:
    pushenv 185s 0x000144
0x000138:
    call (instance_destroy[]:int32 )
0x000144:
    popenv 0x000138
0x000148:
    self.nextbattle = 0s
    self.gocon = 0s
    self.gotimer = 0s
    push -5s
    push 505s:flag
    push (+ -5s 506s:flag)
    push (+ -5s 507s:flag)
    self.total = (+ -5s 508s:flag)
    if !(== self.total 1s) goto 0x0001EC
0x0001D4:
    stog.msg[0s] = "* You feel something faintly&  resonating within ASRIEL."
0x0001EC:
    if !(== self.total 2s) goto 0x000218
0x000200:
    stog.msg[0s] = "* You feel something&  resonating within ASRIEL."
0x000218:
    if !(== self.total 3s) goto 0x000244
0x00022C:
    stog.msg[0s] = "* You feel something strongly&  resonating within ASRIEL."
0x000244:
    if !(== self.total 4s) goto 0x000270
0x000258:
    stog.msg[0s] = "* You feel your friends' SOULs&  resonating within ASRIEL!"
0x000270:
    if !(== self.total 4s) goto 0x0002B4
0x000284:
    push -5s
    if !(< 501s:flag 2s) goto 0x0002B4
0x0002A0:
    stog.flag[501s] = 2s
0x0002B4:
    self.savecon_a = 0s
    self.savecon_a_x = 0s
    push -5s
    if !(== 501s:flag 3s) goto 0x0002F4
0x0002E8:
    global.faceemotion = 3s
0x0002F4:
    self.turns = 0s
    self.endcon = 0s
    self.ht = 240s
    self.wd = 10s
    push -5s
    if !(== 501s:flag 0s) goto 0x000360
0x000340:
    stog.bmenucoord[0s] = 1s
    global.mercy = 3s
0x000360:
    exit
