0x000000:
    if !(== self.con 1s) goto 0x0000E4
0x000014:
    stog.flag[17s] = 1s
    global.msc = 0s
    global.typer = 27s
    global.facechoice = 0s
    stog.msg[0s] = "* OH^1?&* THAT HUMAN.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "O") (var "Mett"))
    call (ini_close[]:int32 )
0x0000E4:
    if !(== self.con 2s) goto 0x000114
0x0000F8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x0001B0
0x00011C:
    push -1s
    stog.view_yview[(- 0s:view_yview 3s)] = 0s
    if !(< 1570.y 238s) goto 0x000174
0x000154:
    [obj_mainchara].y = (+ 1570.y 0.5d)
0x000174:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x0001B0
0x000190:
    self.con = 9s
    stog.alarm[4s] = 30s
0x0001B0:
    if !(> self.con 10s) goto 0x000254
0x0001C4:
    if (!= 1570.x 1570.xprevious) goto 0x0001F4
0x0001DC:
    push (!= 1570.y 1570.yprevious)
    goto 0x0001F8
0x0001F4:
    push 1s
0x0001F8:
    if !pop goto 0x000214
0x0001FC:
    self.mainmove = (+ self.mainmove 1s)
0x000214:
    if !(!= global.facing self.face2) goto 0x000244
0x00022C:
    self.frantic = (+ self.frantic 1s)
0x000244:
    self.face2 = global.facing
0x000254:
    if !(== self.mainmove 100s) goto 0x0002DC
0x000268:
    self.gm = (instance_create[]:int32 (var 1205s) (var 335s) (var 70s))
    push "(Hmmm? Getting creative?)"
    stog.sting* = (int32 self.gm)
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x0002DC:
    if !(== self.mainmove 300s) goto 0x000364
0x0002F0:
    self.gm = (instance_create[]:int32 (var 1205s) (var 335s) (var 70s))
    push "(Dance with me, darling.)"
    stog.sting* = (int32 self.gm)
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x000364:
    if !(== self.mainmove 500s) goto 0x0004AC
0x000378:
    self.gm = (instance_create[]:int32 (var 1205s) (var 335s) (var 70s))
    push "(Oh! The audience can feel#your passion!)"
    stog.sting* = (int32 self.gm)
    if !(> self.unfrantic 15s) goto 0x0003EC
0x0003D0:
    push "(Show the audience#your passion!)"
    stog.sting* = (int32 self.gm)
0x0003EC:
    if !(> self.touch 300s) goto 0x00041C
0x000400:
    push "(So close... How passionate...)"
    stog.sting* = (int32 self.gm)
0x00041C:
    if !(> self.frantic 100s) goto 0x00044C
0x000430:
    push "(... do you need some help?)"
    stog.sting* = (int32 self.gm)
0x00044C:
    if !(> self.frantic 200s) goto 0x00047C
0x000460:
    push "(... what ARE you doing?)"
    stog.sting* = (int32 self.gm)
0x00047C:
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x0004AC:
    if !(== self.mainmove 700s) goto 0x0005F4
0x0004C0:
    self.gm = (instance_create[]:int32 (var 1205s) (var 335s) (var 70s))
    push "(Don't stop now!)"
    stog.sting* = (int32 self.gm)
    if !(> self.unfrantic 20s) goto 0x000534
0x000518:
    push "(Look at you, leaping around#the stage...)"
    stog.sting* = (int32 self.gm)
0x000534:
    if !(> self.touch 400s) goto 0x000564
0x000548:
    push "(Can't keep your hands off, huh?)"
    stog.sting* = (int32 self.gm)
0x000564:
    if !(> self.frantic 120s) goto 0x000594
0x000578:
    push "(Is that how humans dance?)"
    stog.sting* = (int32 self.gm)
0x000594:
    if !(> self.frantic 300s) goto 0x0005C4
0x0005A8:
    push "(Humans are stranger#than I thought.)"
    stog.sting* = (int32 self.gm)
0x0005C4:
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x0005F4:
    if !(== self.mainmove 900s) goto 0x00073C
0x000608:
    self.gm = (instance_create[]:int32 (var 1205s) (var 335s) (var 70s))
    push "(Oh! They're really#getting into it.)"
    stog.sting* = (int32 self.gm)
    if !(> self.unfrantic 25s) goto 0x00067C
0x000660:
    push "(Moving so far...)"
    stog.sting* = (int32 self.gm)
0x00067C:
    if !(> self.touch 500s) goto 0x0006AC
0x000690:
    push "(Who can blame you?)"
    stog.sting* = (int32 self.gm)
0x0006AC:
    if !(> self.frantic 140s) goto 0x0006DC
0x0006C0:
    push "(Hmmm, I'll have to get used#to it...)"
    stog.sting* = (int32 self.gm)
0x0006DC:
    if !(> self.frantic 400s) goto 0x00070C
0x0006F0:
    push "(Even better than#I thought...)"
    stog.sting* = (int32 self.gm)
0x00070C:
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x00073C:
    if !(== self.mainmove 1100s) goto 0x0007C4
0x000750:
    self.gm = (instance_create[]:int32 (var 1205s) (var 340s) (var 100s))
    push "(So that's wha #it's like.)"
    stog.sting* = (int32 self.gm)
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x0007C4:
    if !(== self.mainmove 1300s) goto 0x00084C
0x0007D8:
    self.gm = (instance_create[]:int32 (var 1205s) (var 335s) (var 70s))
    push "(Dancing with... A human.)"
    stog.sting* = (int32 self.gm)
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x00084C:
    if !(== self.mainmove 1500s) goto 0x0008D4
0x000860:
    self.gm = (instance_create[]:int32 (var 1205s) (var 335s) (var 70s))
    push "(What a shame...)"
    stog.sting* = (int32 self.gm)
    push 2s
    stog.myfont* = (int32 self.gm)
    self.mainmove = (+ self.mainmove 1s)
0x0008D4:
    if !(== self.con 10s) goto 0x0009E4
0x0008E8:
    [obj_mainchara].y = 280s
    self.opera1 = (caster_load[]:int32 (var "music/mettmusical1.ogg"))
    self.opera2 = (caster_load[]:int32 (var "music/mettmusical2.ogg"))
    self.opera3 = (caster_load[]:int32 (var "music/mettmusical3.ogg"))
    self.opera4 = (caster_load[]:int32 (var "music/mettmusical4.ogg"))
    self.mett = (instance_create[]:int32 (var 1207s) (var 112s) (var 144s))
    push -45s
    stog.image_angle* = (int32 self.mett)
    push 1.5d
    stog.hspeed* = (int32 self.mett)
    stog.alarm[4s] = 14s
    self.con = 11s
0x0009E4:
    if !(== self.con 12s) goto 0x000A30
0x0009F8:
    push 0s
    stog.hspeed* = (int32 self.mett)
    self.con = 13s
    stog.alarm[4s] = 30s
0x000A30:
    if !(== self.con 14s) goto 0x000B58
0x000A44:
    self.wall1 = (instance_create[]:int32 (var 1183s) (var 220s) (var 0s))
    push 1s
    stog.canttalk* = (int32 self.wall1)
    push 7s
    stog.image_yscale* = (int32 self.wall1)
    self.wall2 = (instance_create[]:int32 (var 1183s) (var 220s) (var 300s))
    push 1s
    stog.canttalk* = (int32 self.wall2)
    push 7s
    stog.image_yscale* = (int32 self.wall2)
    stog.msg[0s] = "* COULD IT BE...?/%%"
    self.di = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.di)
    self.con = 17s
0x000B58:
    if !(== self.con 17s) goto 0x000B88
0x000B6C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B8C
0x000B88:
    push 0s
0x000B8C:
    if !pop goto 0x000BD0
0x000B90:
    self.con = 18s
    push 2.5d
    stog.hspeed* = (int32 self.mett)
    stog.alarm[4s] = 15s
0x000BD0:
    if !(== self.con 18s) goto 0x000C2C
0x000BE4:
    if !(< (int32 self.mett):image_angle 0s) goto 0x000C2C
0x000C04:
    stog.image_angle* = (+ (int32 self.mett):image_angle 3s)
0x000C2C:
    push (int32 self.mett)
    if !(== self.con 19s) goto 0x000C78
0x000C40:
    push 0s
    stog.hspeed* = (int32 self.mett)
    self.con = 20s
    stog.alarm[4s] = 30s
0x000C78:
    if !(== self.con 21s) goto 0x000D10
0x000C8C:
    stog.msg[0s] = "* ... MY ONE TRUE LOVE?/%%"
    if !(== self.already 1s) goto 0x000CC4
0x000CB8:
    global.msc = 870s
0x000CC4:
    self.di = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.di)
    self.con = 26s
0x000D10:
    if !(== self.con 26s) goto 0x000D40
0x000D24:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D44
0x000D40:
    push 0s
0x000D44:
    if !pop goto 0x000DE8
0x000D48:
    global.msc = 0s
    call (caster_play[]:int32 (var 1s) (var 1s) self.opera1)
    push 1739s
    stog.sprite_index* = (int32 self.mett)
    push 0.25d
    stog.image_speed* = (int32 self.mett)
    push 1s
    stog.hspeed* = (int32 self.mett)
    stog.alarm[4s] = 80s
    self.con = 27s
0x000DE8:
    if !(== self.con 28s) goto 0x000E4C
0x000DFC:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 1s
    stog.vspeed* = (int32 self.mett)
    stog.alarm[4s] = 130s
    self.con = 29s
0x000E4C:
    if !(== self.con 29s) goto 0x000E84
0x000E60:
    push -1s
    stog.view_yview[(+ 0s:view_yview 1s)] = 0s
0x000E84:
    if !(== self.con 30s) goto 0x000F00
0x000E98:
    push 0s
    stog.vspeed* = (int32 self.mett)
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.image_speed* = (int32 self.mett)
    self.con = 31s
    stog.alarm[4s] = 30s
0x000F00:
    if !(== self.con 32s) goto 0x000F94
0x000F14:
    push 0.1d
    stog.image_speed* = (int32 self.mett)
    push 0.2d
    stog.vspeed* = (int32 self.mett)
    push -0.5d
    stog.hspeed* = (int32 self.mett)
    stog.alarm[4s] = 180s
    self.con = 33s
0x000F94:
    if !(== self.con 34s) goto 0x001050
0x000FA8:
    self.mett2 = (instance_create[]:int32 (var 1208s) (int32 self.mett):y (int32 self.mett):x)
    pushenv (int32 self.mett) 0x001004
0x000FF8:
    call (instance_destroy[]:int32 )
0x001004:
    popenv 0x000FF8
0x001008:
    self.mett = self.mett2
    push 8s
    stog.arm* = (int32 self.mett)
    stog.alarm[4s] = 60s
    self.con = 35s
0x001050:
    if !(== self.con 36s) goto 0x001118
0x001064:
    global.interact = 0s
    call (caster_play[]:int32 (var 1s) (var 1s) self.opera2)
    push 0s
    stog.arm* = (int32 self.mett)
    push 0.5d
    stog.hspeed* = (int32 self.mett)
    push 0.4d
    stog.vspeed* = (int32 self.mett)
    self.con = 38s
    stog.alarm[4s] = 60s
    self.drawtext = 1s
0x001118:
    if !(== self.con 39s) goto 0x00117C
0x00112C:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 40s
    stog.alarm[4s] = 50s
0x00117C:
    if !(== self.con 41s) goto 0x001218
0x001190:
    self.drawtext = 0s
    self.drawtext2 = 1s
    push 1s
    stog.arm* = (int32 self.mett)
    push -0.25d
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 42s
    stog.alarm[4s] = 60s
0x001218:
    if !(== self.con 43s) goto 0x00127C
0x00122C:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 44s
    stog.alarm[4s] = 70s
0x00127C:
    if !(== self.con 45s) goto 0x001340
0x001290:
    self.drawtext = 1s
    self.drawtext2 = 0s
    self.string1 = "Monster King       "
    self.string2 = "Forbids your stay  "
    push 0s
    stog.arm* = (int32 self.mett)
    push -0.5d
    stog.vspeed* = (int32 self.mett)
    push -1.5d
    stog.hspeed* = (int32 self.mett)
    self.con = 46s
    stog.alarm[4s] = 60s
0x001340:
    if !(== self.con 47s) goto 0x0013A4
0x001354:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 48s
    stog.alarm[4s] = 45s
0x0013A4:
    if !(== self.con 49s) goto 0x001448
0x0013B8:
    self.drawtext2 = 1s
    self.drawtext = 0s
    push 0.5d
    stog.vspeed* = (int32 self.mett)
    push -0.5d
    stog.hspeed* = (int32 self.mett)
    push 2s
    stog.arm* = (int32 self.mett)
    self.con = 50s
    stog.alarm[4s] = 60s
0x001448:
    if !(== self.con 51s) goto 0x0014AC
0x00145C:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 52s
    stog.alarm[4s] = 75s
0x0014AC:
    if !(== self.con 53s) goto 0x001574
0x0014C0:
    call (caster_play[]:int32 (var 1s) (var 1s) self.opera2)
    self.drawtext = 1s
    self.drawtext2 = 0s
    self.string1 = "Humans must       "
    self.string2 = "Live far apart    "
    push 0s
    stog.arm* = (int32 self.mett)
    push -0.5d
    stog.hspeed* = (int32 self.mett)
    self.con = 54s
    stog.alarm[4s] = 60s
0x001574:
    if !(== self.con 55s) goto 0x0015D8
0x001588:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 56s
    stog.alarm[4s] = 45s
0x0015D8:
    if !(== self.con 57s) goto 0x001654
0x0015EC:
    push 1s
    stog.hspeed* = (int32 self.mett)
    push 1s
    stog.arm* = (int32 self.mett)
    self.drawtext2 = 1s
    self.drawtext = 0s
    self.con = 58s
    stog.alarm[4s] = 60s
0x001654:
    if !(== self.con 59s) goto 0x0016B8
0x001668:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 60s
    stog.alarm[4s] = 75s
0x0016B8:
    if !(== self.con 61s) goto 0x00175C
0x0016CC:
    self.drawtext = 1s
    self.drawtext2 = 0s
    self.string1 = "Even if             "
    self.string2 = "It breaks my heart  "
    push 0s
    stog.arm* = (int32 self.mett)
    push -0.25d
    stog.hspeed* = (int32 self.mett)
    self.con = 62s
    stog.alarm[4s] = 60s
0x00175C:
    if !(== self.con 63s) goto 0x0017C0
0x001770:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 64s
    stog.alarm[4s] = 45s
0x0017C0:
    if !(== self.con 65s) goto 0x001844
0x0017D4:
    push -0.5d
    stog.hspeed* = (int32 self.mett)
    push 3s
    stog.arm* = (int32 self.mett)
    self.drawtext2 = 1s
    self.drawtext = 0s
    self.con = 66s
    stog.alarm[4s] = 60s
0x001844:
    if !(== self.con 67s) goto 0x0018D0
0x001858:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 68s
    self.cher = (instance_create[]:int32 (var 1201s) (var 0s) (var 0s))
    stog.alarm[4s] = 75s
0x0018D0:
    if !(== self.con 69s) goto 0x001998
0x0018E4:
    self.drawtext = 1s
    self.drawtext2 = 0s
    self.string1 = "They'll put you    "
    self.string2 = "In the dungeon     "
    push 0s
    stog.arm* = (int32 self.mett)
    call (caster_play[]:int32 (var 1s) (var 1s) self.opera3)
    push 0.25d
    stog.hspeed* = (int32 self.mett)
    self.con = 70s
    stog.alarm[4s] = 60s
0x001998:
    if !(== self.con 71s) goto 0x0019FC
0x0019AC:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 72s
    stog.alarm[4s] = 45s
0x0019FC:
    if !(== self.con 73s) goto 0x001A80
0x001A10:
    push 0.25d
    stog.hspeed* = (int32 self.mett)
    push 1s
    stog.arm* = (int32 self.mett)
    self.drawtext2 = 1s
    self.drawtext = 0s
    self.con = 74s
    stog.alarm[4s] = 60s
0x001A80:
    if !(== self.con 75s) goto 0x001AEC
0x001A94:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 75.5d
    stog.alarm[4s] = 75s
0x001AEC:
    if !(== self.con 76.5d) goto 0x001B98
0x001B08:
    self.drawtext = 1s
    self.drawtext2 = 0s
    self.string1 = "It'll suck         "
    self.string2 = "And then you'll#die a lot  "
    push 4s
    stog.arm* = (int32 self.mett)
    push 0.25d
    stog.hspeed* = (int32 self.mett)
    self.con = 77s
    stog.alarm[4s] = 60s
0x001B98:
    if !(== self.con 78s) goto 0x001BFC
0x001BAC:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 79s
    stog.alarm[4s] = 30s
0x001BFC:
    if !(== self.con 80s) goto 0x001C98
0x001C10:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push -0.5d
    stog.vspeed* = (int32 self.mett)
    push 5s
    stog.arm* = (int32 self.mett)
    self.drawtext2 = 1s
    self.drawtext = 0s
    self.con = 81s
    stog.alarm[4s] = 60s
0x001C98:
    if !(== self.con 82s) goto 0x001CFC
0x001CAC:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 83s
    stog.alarm[4s] = 90s
0x001CFC:
    if !(== self.con 84s) goto 0x001DC4
0x001D10:
    self.drawtext = 1s
    self.drawtext2 = 0s
    self.string1 = "Really sad         "
    self.string2 = "You're gonna die     "
    push 6s
    stog.arm* = (int32 self.mett)
    call (caster_play[]:int32 (var 1s) (var 1s) self.opera4)
    push 0.75d
    stog.hspeed* = (int32 self.mett)
    self.con = 85s
    stog.alarm[4s] = 100s
0x001DC4:
    if !(== self.con 86s) goto 0x001E28
0x001DD8:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 87s
    stog.alarm[4s] = 5s
0x001E28:
    if !(== self.con 88s) goto 0x001ECC
0x001E3C:
    push 0.4d
    stog.hspeed* = (int32 self.mett)
    push 0.6d
    stog.vspeed* = (int32 self.mett)
    push 7s
    stog.arm* = (int32 self.mett)
    self.drawtext2 = 1s
    self.drawtext = 0s
    self.con = 89s
    stog.alarm[4s] = 60s
0x001ECC:
    if !(== self.con 90s) goto 0x001F30
0x001EE0:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 91s
    stog.alarm[4s] = 75s
0x001F30:
    if !(== self.con 92s) goto 0x001FD4
0x001F44:
    self.drawtext = 1s
    self.drawtext2 = 0s
    self.string1 = "Cry cry cry      "
    self.string2 = "So sad it's#happening.       "
    push 8s
    stog.arm* = (int32 self.mett)
    push -0.5d
    stog.hspeed* = (int32 self.mett)
    self.con = 93s
    stog.alarm[4s] = 60s
0x001FD4:
    if !(== self.con 94s) goto 0x002058
0x001FE8:
    pushenv (int32 self.cher) 0x002004
0x001FF8:
    call (instance_destroy[]:int32 )
0x002004:
    popenv 0x001FF8
0x002008:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 95s
    stog.alarm[4s] = 30s
0x002058:
    if !(== self.con 96s) goto 0x0020EC
0x00206C:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    push 9s
    stog.arm* = (int32 self.mett)
    self.drawtext2 = 1s
    self.drawtext = 0s
    self.con = 97s
    stog.alarm[4s] = 60s
0x0020EC:
    if !(== self.con 98s) goto 0x002150
0x002100:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 99s
    stog.alarm[4s] = 120s
0x002150:
    if !(== self.con 100s) goto 0x002208
0x002164:
    self.comet = (instance_create[]:int32 (var 1363s) (var 150s) (var 90s))
    push 1736s
    stog.sprite_index* = (int32 self.comet)
    push 0.25d
    stog.image_speed* = (int32 self.comet)
    push 1s
    stog.visible* = (int32 self.comet)
    self.drawtext2 = 0s
    self.con = 105s
    stog.alarm[4s] = 60s
0x002208:
    if !(== self.con 105s) goto 0x002274
0x00221C:
    if !(bool (instance_exists[]:int32 self.comet)) goto 0x002274
0x002234:
    if !(> (int32 self.comet):image_index 8s) goto 0x002274
0x002254:
    pushenv (int32 self.comet) 0x002270
0x002264:
    call (instance_destroy[]:int32 )
0x002270:
    popenv 0x002264
0x002274:
    if !(== self.con 106s) goto 0x0023AC
0x002288:
    call (caster_stop[]:int32 self.opera1)
    push 0s
    stog.speed* = (int32 self.mett)
    push 0s
    stog.image_speed* = (int32 self.mett)
    global.interact = 1s
    stog.msg[0s] = "* SO SAD./"
    stog.msg[1s] = "* SO SAD THAT YOU ARE&  GOING TO THE DUNGEON./%%"
    if !(== self.skip 1s) goto 0x00237C
0x00231C:
    stog.msg[0s] = "* OOMPH!&* I AM SO OVERWHELMED WITH&  TRAGEDIES./"
    stog.msg[1s] = "* THE KING HAS ORDERED YOU&  TO WASTE AWAY IN THE CASTLE&  BASEMENT./"
    stog.msg[2s] = "* AND BEFORE WE EVEN HAD&  TIME TO SING A SWEET&  SONG ABOUT IT./"
    stog.msg[3s] = "* MY DEAR HEART^1!&* I CAN BARELY LOOK UPON YOU^1,&  KNOWING WHAT COMES NEXT.../%%"
0x00237C:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 120s
0x0023AC:
    if !(== self.con 120s) goto 0x0023DC
0x0023C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0023E0
0x0023DC:
    push 0s
0x0023E0:
    if !pop goto 0x0024B8
0x0023E4:
    push 1s
    stog.hspeed* = (int32 self.mett)
    if !(< (int32 self.mett):x (+ 1570.x 19s)) goto 0x002440
0x002428:
    push -1s
    stog.hspeed* = (int32 self.mett)
0x002440:
    if !(== self.skip 1s) goto 0x00246C
0x002454:
    push -3s
    stog.hspeed* = (int32 self.mett)
0x00246C:
    call (caster_free[]:int32 (var -3s))
    push 10s
    stog.arm* = (int32 self.mett)
    self.con = 121s
    stog.alarm[4s] = 30s
0x0024B8:
    if !(== self.con 122s) goto 0x002544
0x0024CC:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 11s
    stog.arm* = (int32 self.mett)
    self.con = 123s
    stog.msg[0s] = "* WELL^1, TOODLES!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x002544:
    if !(== self.con 123s) goto 0x002574
0x002558:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x002578
0x002574:
    push 0s
0x002578:
    if !pop goto 0x002694
0x00257C:
    push 12s
    stog.arm* = (int32 self.mett)
    self.blackbox = (instance_create[]:int32 (var 1363s) (+ 1570.y 10s) (- 1570.x 4s))
    push 996s
    stog.sprite_index* = (int32 self.blackbox)
    push 0s
    stog.image_speed* = (int32 self.blackbox)
    push 12s
    stog.image_xscale* = (int32 self.blackbox)
    push 14s
    stog.image_yscale* = (int32 self.blackbox)
    push 1000000
    stog.depth* = (int32 self.blackbox)
    push 1s
    stog.visible* = (int32 self.blackbox)
    call (snd_play[]:int32 (var 106s))
    stog.alarm[4s] = 20s
    self.con = 124s
0x002694:
    if !(== self.con 125s) goto 0x0026E8
0x0026A8:
    global.phasing = 1s
    stog.alarm[5s] = 2s
    self.con = 126s
    stog.alarm[4s] = 30s
0x0026E8:
    if !(== self.con 126s) goto 0x002734
0x0026FC:
    [obj_mainchara].y = (+ 1570.y 3s)
    [obj_mainchara].image_alpha = (- 1570.image_alpha 0.05d)
0x002734:
    if !(== self.con 127s) goto 0x002798
0x002748:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    stog.alarm[6s] = 12s
    self.con = 128s
    global.plot = 167s
0x002798:
    if !(== self.con 240s) goto 0x0027C8
0x0027AC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0027CC
0x0027C8:
    push 0s
0x0027CC:
    if !pop goto 0x0027E8
0x0027D0:
    self.skip = 1s
    self.con = 241s
0x0027E8:
    if !(== self.con 241s) goto 0x002818
0x0027FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00281C
0x002818:
    push 0s
0x00281C:
    if !pop goto 0x0028C8
0x002820:
    global.msc = 0s
    call (caster_play[]:int32 (var 3s) (var 0.5d) self.opera1)
    push 1739s
    stog.sprite_index* = (int32 self.mett)
    push 0.5d
    stog.image_speed* = (int32 self.mett)
    push 4s
    stog.hspeed* = (int32 self.mett)
    stog.alarm[4s] = 20s
    self.con = 242s
0x0028C8:
    if !(== self.con 243s) goto 0x00292C
0x0028DC:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 5s
    stog.vspeed* = (int32 self.mett)
    stog.alarm[4s] = 32s
    self.con = 244s
0x00292C:
    if !(== self.con 244s) goto 0x002964
0x002940:
    push -1s
    stog.view_yview[(+ 0s:view_yview 4s)] = 0s
0x002964:
    if !(== self.con 245s) goto 0x002A0C
0x002978:
    self.mett2 = (instance_create[]:int32 (var 1208s) (int32 self.mett):y (int32 self.mett):x)
    pushenv (int32 self.mett) 0x0029D4
0x0029C8:
    call (instance_destroy[]:int32 )
0x0029D4:
    popenv 0x0029C8
0x0029D8:
    self.mett = self.mett2
    push 8s
    stog.arm* = (int32 self.mett)
    self.con = 106s
0x002A0C:
    exit
