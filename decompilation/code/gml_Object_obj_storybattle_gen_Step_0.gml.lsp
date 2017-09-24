0x000000:
    if !(== self.skipper 1s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000088
0x000034:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x00007C
0x00004C:
    push -1s
    if !(> 4s:alarm 10s) goto 0x00007C
0x000068:
    stog.alarm[4s] = 10s
0x00007C:
    call (scr_textskip[]:int32 )
0x000088:
    if !(< global.turntimer 2s) goto 0x0000E0
0x00009C:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 global.currentroom)
    global.invc = 0s
0x0000E0:
    if !(< global.turntimer 14s) goto 0x000110
0x0000F4:
    push (== (instance_exists[]:int32 (var 149s)) 0s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000160
0x000118:
    self.yyy = (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    push 0.08d
    stog.tspeed* = (int32 self.yyy)
0x000160:
    if !(== self.off 1s) goto 0x00018C
0x000174:
    global.turntimer = (- global.turntimer 1s)
0x00018C:
    self.activetimer = (+ self.activetimer 1s)
    if !(== self.con 5s) goto 0x0001CC
0x0001B8:
    push (== self.activetimer 15s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x00028C
0x0001D4:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "A long time ago,&a human fell&into the RUINS./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 50s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 80s))
    self.con = 6s
    stog.alarm[4s] = 110s
0x00028C:
    if !(== self.con 7s) goto 0x0002B8
0x0002A0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0002BC
0x0002B8:
    push 0s
0x0002BC:
    if !pop goto 0x00036C
0x0002C0:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x00036C
0x0002E0:
    stog.msg[0s] = "Injured by its&fall, the human&called out for&help./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 430s))
    self.con = 8s
0x00036C:
    if !(== self.con 8s) goto 0x0003D8
0x000380:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x0003D8
0x00039C:
    self.off = 1s
    pushenv 782s 0x0003BC
0x0003B0:
    call (instance_destroy[]:int32 )
0x0003BC:
    popenv 0x0003B0
0x0003C0:
    pushenv 186s 0x0003D4
0x0003C8:
    call (instance_destroy[]:int32 )
0x0003D4:
    popenv 0x0003C8
0x0003D8:
    if !(== self.con 10s) goto 0x000400
0x0003EC:
    push (== self.activetimer 15s)
    goto 0x000404
0x000400:
    push 0s
0x000404:
    if !pop goto 0x0004C0
0x000408:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "ASRIEL^1, the king's&son^1, heard the&human's call./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 50s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 80s))
    self.con = 11s
    stog.alarm[4s] = 140s
0x0004C0:
    if !(== self.con 12s) goto 0x0004EC
0x0004D4:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0004F0
0x0004EC:
    push 0s
0x0004F0:
    if !pop goto 0x0005A0
0x0004F4:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x0005A0
0x000514:
    stog.msg[0s] = "He brought the&human back to&the castle./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 430s))
    self.con = 13s
0x0005A0:
    if !(== self.con 13s) goto 0x00060C
0x0005B4:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x00060C
0x0005D0:
    self.off = 1s
    pushenv 782s 0x0005F0
0x0005E4:
    call (instance_destroy[]:int32 )
0x0005F0:
    popenv 0x0005E4
0x0005F4:
    pushenv 186s 0x000608
0x0005FC:
    call (instance_destroy[]:int32 )
0x000608:
    popenv 0x0005FC
0x00060C:
    if !(== self.con 15s) goto 0x000634
0x000620:
    push (== self.activetimer 15s)
    goto 0x000638
0x000634:
    push 0s
0x000638:
    if !pop goto 0x0006F4
0x00063C:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "Over time^1, ASRIEL&and the human&became like&siblings./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 60s))
    self.con = 16s
    stog.alarm[4s] = 140s
0x0006F4:
    if !(== self.con 17s) goto 0x0007C0
0x000708:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The King and&Queen treated the&human child as&their own./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 250s))
    self.con = 18s
    stog.alarm[4s] = 140s
0x0007C0:
    if !(== self.con 19s) goto 0x0007EC
0x0007D4:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0007F0
0x0007EC:
    push 0s
0x0007F0:
    if !pop goto 0x0008A0
0x0007F4:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x0008A0
0x000814:
    stog.msg[0s] = "The underground&was full of&hope./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 20s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 30s) (var 450s))
    self.con = 20s
0x0008A0:
    if !(== self.con 20s) goto 0x00090C
0x0008B4:
    if !(== (instance_exists[]:int32 self.blconwd3) 0s) goto 0x00090C
0x0008D0:
    self.off = 1s
    pushenv 782s 0x0008F0
0x0008E4:
    call (instance_destroy[]:int32 )
0x0008F0:
    popenv 0x0008E4
0x0008F4:
    pushenv 186s 0x000908
0x0008FC:
    call (instance_destroy[]:int32 )
0x000908:
    popenv 0x0008FC
0x00090C:
    if !(== self.con 25s) goto 0x000934
0x000920:
    push (== self.activetimer 15s)
    goto 0x000938
0x000934:
    push 0s
0x000938:
    if !pop goto 0x0009F4
0x00093C:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "Then..^1.&One day.../*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 50s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 80s))
    self.con = 26s
    stog.alarm[4s] = 70s
0x0009F4:
    if !(== self.con 27s) goto 0x000A20
0x000A08:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000A24
0x000A20:
    push 0s
0x000A24:
    if !pop goto 0x000AD4
0x000A28:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x000AD4
0x000A48:
    stog.msg[0s] = "The human became&very ill./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 430s))
    self.con = 28s
0x000AD4:
    if !(== self.con 28s) goto 0x000B40
0x000AE8:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x000B40
0x000B04:
    self.off = 1s
    pushenv 782s 0x000B24
0x000B18:
    call (instance_destroy[]:int32 )
0x000B24:
    popenv 0x000B18
0x000B28:
    pushenv 186s 0x000B3C
0x000B30:
    call (instance_destroy[]:int32 )
0x000B3C:
    popenv 0x000B30
0x000B40:
    if !(== self.con 30s) goto 0x000B68
0x000B54:
    push (== self.activetimer 15s)
    goto 0x000B6C
0x000B68:
    push 0s
0x000B6C:
    if !pop goto 0x000C28
0x000B70:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The sick human&had only one&request./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 60s))
    self.con = 31s
    stog.alarm[4s] = 80s
0x000C28:
    if !(== self.con 32s) goto 0x000CF4
0x000C3C:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "To see the&flowers from&their village./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 250s))
    self.con = 33s
    stog.alarm[4s] = 90s
0x000CF4:
    if !(== self.con 34s) goto 0x000D20
0x000D08:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000D24
0x000D20:
    push 0s
0x000D24:
    if !pop goto 0x000DD4
0x000D28:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x000DD4
0x000D48:
    stog.msg[0s] = "But there was&nothing we could&do./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 20s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 30s) (var 450s))
    self.con = 35s
0x000DD4:
    if !(== self.con 35s) goto 0x000E40
0x000DE8:
    if !(== (instance_exists[]:int32 self.blconwd3) 0s) goto 0x000E40
0x000E04:
    self.off = 1s
    pushenv 782s 0x000E24
0x000E18:
    call (instance_destroy[]:int32 )
0x000E24:
    popenv 0x000E18
0x000E28:
    pushenv 186s 0x000E3C
0x000E30:
    call (instance_destroy[]:int32 )
0x000E3C:
    popenv 0x000E30
0x000E40:
    if !(== self.con 40s) goto 0x000E68
0x000E54:
    push (== self.activetimer 15s)
    goto 0x000E6C
0x000E68:
    push 0s
0x000E6C:
    if !pop goto 0x000F28
0x000E70:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The next day./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 50s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 80s))
    self.con = 41s
    stog.alarm[4s] = 50s
0x000F28:
    if !(== self.con 42s) goto 0x000F54
0x000F3C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000F58
0x000F54:
    push 0s
0x000F58:
    if !pop goto 0x001008
0x000F5C:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x001008
0x000F7C:
    stog.msg[0s] = "The next day./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 430s))
    self.con = 43s
0x001008:
    if !(== self.con 43s) goto 0x001074
0x00101C:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x001074
0x001038:
    pushenv 782s 0x00104C
0x001040:
    call (instance_destroy[]:int32 )
0x00104C:
    popenv 0x001040
0x001050:
    pushenv 186s 0x001064
0x001058:
    call (instance_destroy[]:int32 )
0x001064:
    popenv 0x001058
0x001068:
    self.con = 44s
0x001074:
    if !(== self.con 44s) goto 0x001140
0x001088:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = ".../*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 50s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 80s))
    self.con = 45s
    stog.alarm[4s] = 50s
0x001140:
    if !(== self.con 46s) goto 0x00116C
0x001154:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001170
0x00116C:
    push 0s
0x001170:
    if !pop goto 0x001220
0x001174:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x001220
0x001194:
    stog.msg[0s] = "The human died./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 400s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 430s))
    self.con = 47s
0x001220:
    if !(== self.con 47s) goto 0x0012A4
0x001234:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x0012A4
0x001250:
    pushenv 782s 0x001264
0x001258:
    call (instance_destroy[]:int32 )
0x001264:
    popenv 0x001258
0x001268:
    pushenv 186s 0x00127C
0x001270:
    call (instance_destroy[]:int32 )
0x00127C:
    popenv 0x001270
0x001280:
    pushenv 187s 0x001294
0x001288:
    call (instance_destroy[]:int32 )
0x001294:
    popenv 0x001288
0x001298:
    self.off = 1s
0x0012A4:
    if !(== self.con 50s) goto 0x0012CC
0x0012B8:
    push (== self.activetimer 15s)
    goto 0x0012D0
0x0012CC:
    push 0s
0x0012D0:
    if !pop goto 0x001374
0x0012D4:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "ASRIEL^1, wracked&with grief^1,&absorbed the&human's SOUL./*"
    self.blcon = (instance_create[]:int32 (var 187s) (var 20s) (var 190s))
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 230s))
    self.con = 51s
    stog.alarm[4s] = 140s
0x001374:
    if !(== self.con 52s) goto 0x0013A0
0x001388:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0013A4
0x0013A0:
    push 0s
0x0013A4:
    if !pop goto 0x001454
0x0013A8:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x001454
0x0013C8:
    stog.msg[0s] = "He transformed&into a being&with incredible&power./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 130s) (var 220s))
    push 30s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 140s) (var 260s))
    self.con = 47s
0x001454:
    if !(== self.con 60s) goto 0x00147C
0x001468:
    push (== self.activetimer 15s)
    goto 0x001480
0x00147C:
    push 0s
0x001480:
    if !pop goto 0x00153C
0x001484:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "With the human&SOUL^1, ASRIEL&crossed through&the barrier./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 10s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 20s) (var 60s))
    self.con = 61s
    stog.alarm[4s] = 140s
0x00153C:
    if !(== self.con 62s) goto 0x001608
0x001550:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "He carried the&human's body&into the sunset./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 10s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 20s) (var 250s))
    self.con = 63s
    stog.alarm[4s] = 110s
0x001608:
    if !(== self.con 64s) goto 0x001634
0x00161C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001638
0x001634:
    push 0s
0x001638:
    if !pop goto 0x0016E8
0x00163C:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x0016E8
0x00165C:
    stog.msg[0s] = "Back to the&village of the&humans./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 10s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 20s) (var 450s))
    self.con = 20s
0x0016E8:
    if !(== self.con 70s) goto 0x001710
0x0016FC:
    push (== self.activetimer 15s)
    goto 0x001714
0x001710:
    push 0s
0x001714:
    if !pop goto 0x0017D0
0x001718:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "ASRIEL reached&the center of&the village./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 10s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 20s) (var 60s))
    self.con = 71s
    stog.alarm[4s] = 110s
0x0017D0:
    if !(== self.con 72s) goto 0x00189C
0x0017E4:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "There^1, he&found a bed of&golden flowers./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 10s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 20s) (var 250s))
    self.con = 73s
    stog.alarm[4s] = 110s
0x00189C:
    if !(== self.con 74s) goto 0x0018C8
0x0018B0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0018CC
0x0018C8:
    push 0s
0x0018CC:
    if !pop goto 0x00197C
0x0018D0:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x00197C
0x0018F0:
    stog.msg[0s] = "He carried&the human&onto it./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 10s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 20s) (var 450s))
    self.con = 20s
0x00197C:
    if !(== self.con 80s) goto 0x0019A4
0x001990:
    push (== self.activetimer 15s)
    goto 0x0019A8
0x0019A4:
    push 0s
0x0019A8:
    if !pop goto 0x001A64
0x0019AC:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "Suddenly^1, screams&rang out./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 10s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 20s) (var 60s))
    self.con = 81s
    stog.alarm[4s] = 90s
0x001A64:
    if !(== self.con 82s) goto 0x001B30
0x001A78:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The villagers&saw ASRIEL&holding the&human's body./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 10s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 20s) (var 250s))
    self.con = 83s
    stog.alarm[4s] = 120s
0x001B30:
    if !(== self.con 84s) goto 0x001B5C
0x001B44:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001B60
0x001B5C:
    push 0s
0x001B60:
    if !pop goto 0x001C10
0x001B64:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x001C10
0x001B84:
    stog.msg[0s] = "They thought&that he had&killed the&child./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 10s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 20s) (var 450s))
    self.con = 20s
0x001C10:
    if !(== self.con 90s) goto 0x001C38
0x001C24:
    push (== self.activetimer 15s)
    goto 0x001C3C
0x001C38:
    push 0s
0x001C3C:
    if !pop goto 0x001CF8
0x001C40:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The humans&attacked him&with everything&they had./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 10s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 20s) (var 60s))
    self.con = 91s
    stog.alarm[4s] = 120s
0x001CF8:
    if !(== self.con 92s) goto 0x001DC4
0x001D0C:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "He was struck&with blow after&blow./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 10s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 20s) (var 250s))
    self.con = 93s
    stog.alarm[4s] = 100s
0x001DC4:
    if !(== self.con 94s) goto 0x001DF0
0x001DD8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001DF4
0x001DF0:
    push 0s
0x001DF4:
    if !pop goto 0x001EA4
0x001DF8:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x001EA4
0x001E18:
    stog.msg[0s] = "ASRIEL had the&power to destroy&them all./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 10s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 20s) (var 450s))
    self.con = 20s
0x001EA4:
    if !(== self.con 100s) goto 0x001ECC
0x001EB8:
    push (== self.activetimer 15s)
    goto 0x001ED0
0x001ECC:
    push 0s
0x001ED0:
    if !pop goto 0x001F74
0x001ED4:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "But.../*"
    self.blcon = (instance_create[]:int32 (var 187s) (var 20s) (var 190s))
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 230s))
    self.con = 101s
    stog.alarm[4s] = 40s
0x001F74:
    if !(== self.con 102s) goto 0x001FA0
0x001F88:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001FA4
0x001FA0:
    push 0s
0x001FA4:
    if !pop goto 0x002054
0x001FA8:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x002054
0x001FC8:
    stog.msg[0s] = "ASRIEL did not&fight back./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 130s) (var 220s))
    push 30s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 140s) (var 260s))
    self.con = 103s
0x002054:
    if !(== self.con 103s) goto 0x0020F4
0x002068:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x0020F4
0x002084:
    pushenv (int32 self.blcon2) 0x0020A0
0x002094:
    call (instance_destroy[]:int32 )
0x0020A0:
    popenv 0x002094
0x0020A4:
    pushenv 782s 0x0020B8
0x0020AC:
    call (instance_destroy[]:int32 )
0x0020B8:
    popenv 0x0020AC
0x0020BC:
    pushenv 187s 0x0020D0
0x0020C4:
    call (instance_destroy[]:int32 )
0x0020D0:
    popenv 0x0020C4
0x0020D4:
    self.con = 104s
    stog.alarm[4s] = 20s
0x0020F4:
    if !(== self.con 105s) goto 0x0021A8
0x002108:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "Clutching the&human.../*"
    self.blcon = (instance_create[]:int32 (var 187s) (var 20s) (var 190s))
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 230s))
    self.con = 106s
    stog.alarm[4s] = 50s
0x0021A8:
    if !(== self.con 107s) goto 0x0021D4
0x0021BC:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0021D8
0x0021D4:
    push 0s
0x0021D8:
    if !pop goto 0x002288
0x0021DC:
    if !(!= (int32 self.blconwd1):halt 0s) goto 0x002288
0x0021FC:
    stog.msg[0s] = "ASRIEL smiled^1,&and walked away./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 130s) (var 220s))
    push 30s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 140s) (var 260s))
    self.con = 47s
0x002288:
    if !(== self.con 110s) goto 0x0022B0
0x00229C:
    push (== self.activetimer 15s)
    goto 0x0022B4
0x0022B0:
    push 0s
0x0022B4:
    if !pop goto 0x002370
0x0022B8:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "Wounded^1, ASRIEL&stumbled home./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 10s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 20s) (var 60s))
    self.con = 111s
    stog.alarm[4s] = 90s
0x002370:
    if !(== self.con 112s) goto 0x00243C
0x002384:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "He entered the&castle and&collapsed./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 10s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 20s) (var 250s))
    self.con = 113s
    stog.alarm[4s] = 100s
0x00243C:
    if !(== self.con 114s) goto 0x002468
0x002450:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00246C
0x002468:
    push 0s
0x00246C:
    if !pop goto 0x00251C
0x002470:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x00251C
0x002490:
    stog.msg[0s] = "His dust spread&across the&garden./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 10s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 20s) (var 450s))
    self.con = 20s
0x00251C:
    if !(== self.con 120s) goto 0x002544
0x002530:
    push (== self.activetimer 15s)
    goto 0x002548
0x002544:
    push 0s
0x002548:
    if !pop goto 0x002604
0x00254C:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The kingdom fell&into despair./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 10s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 20s) (var 60s))
    self.con = 121s
    stog.alarm[4s] = 80s
0x002604:
    if !(== self.con 122s) goto 0x0026D0
0x002618:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The king and&queen had lost&two children&in one night./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 10s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 20s) (var 250s))
    self.con = 123s
    stog.alarm[4s] = 120s
0x0026D0:
    if !(== self.con 124s) goto 0x0026FC
0x0026E4:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x002700
0x0026FC:
    push 0s
0x002700:
    if !pop goto 0x0027B0
0x002704:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x0027B0
0x002724:
    stog.msg[0s] = "The humans had&once again taken&everything&from us./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 10s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 20s) (var 450s))
    self.con = 20s
0x0027B0:
    if !(== self.con 130s) goto 0x0027D8
0x0027C4:
    push (== self.activetimer 15s)
    goto 0x0027DC
0x0027D8:
    push 0s
0x0027DC:
    if !pop goto 0x002898
0x0027E0:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "The king decided&it was time to&end our&suffering./*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 10s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 20s) (var 60s))
    self.con = 131s
    stog.alarm[4s] = 110s
0x002898:
    if !(== self.con 132s) goto 0x002964
0x0028AC:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "Every human who&falls down here&must die./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 10s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 20s) (var 250s))
    self.con = 133s
    stog.alarm[4s] = 100s
0x002964:
    if !(== self.con 134s) goto 0x002990
0x002978:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x002994
0x002990:
    push 0s
0x002994:
    if !pop goto 0x002A44
0x002998:
    if !(!= (int32 self.blconwd2):halt 0s) goto 0x002A44
0x0029B8:
    stog.msg[0s] = "With enough souls^1,&we can shatter&the barrier&forever./%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 10s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 20s) (var 450s))
    self.con = 20s
0x002A44:
    if !(== self.con 140s) goto 0x002A6C
0x002A58:
    push (== self.activetimer 15s)
    goto 0x002A70
0x002A6C:
    push 0s
0x002A70:
    if !pop goto 0x002B18
0x002A74:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "It's not long&now./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 250s))
    self.con = 141s
0x002B18:
    if !(== self.con 141s) goto 0x002D0C
0x002B2C:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x002D0C
0x002B48:
    pushenv 782s 0x002B5C
0x002B50:
    call (instance_destroy[]:int32 )
0x002B5C:
    popenv 0x002B50
0x002B60:
    pushenv (int32 self.blcon2) 0x002B7C
0x002B70:
    call (instance_destroy[]:int32 )
0x002B7C:
    popenv 0x002B70
0x002B80:
    stog.msg[0s] = "King ASGORE&will let us&go.   /*"
    self.blcon = (instance_create[]:int32 (var 186s) (var 20s) (var 30s))
    push 24s
    stog.sprite_index* = (int32 self.blcon)
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 30s) (var 60s))
    stog.msg[0s] = "King ASGORE&will give us&hope./*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 250s))
    stog.msg[0s] = "King ASGORE&will save us&all. /%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 20s) (var 420s))
    push 24s
    stog.sprite_index* = (int32 self.blcon3)
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 30s) (var 450s))
    self.con = 142s
0x002D0C:
    if !(== self.con 142s) goto 0x002D84
0x002D20:
    if !(== (instance_exists[]:int32 self.blconwd3) 0s) goto 0x002D84
0x002D3C:
    pushenv 186s 0x002D50
0x002D44:
    call (instance_destroy[]:int32 )
0x002D50:
    popenv 0x002D44
0x002D54:
    pushenv 782s 0x002D68
0x002D5C:
    call (instance_destroy[]:int32 )
0x002D68:
    popenv 0x002D5C
0x002D6C:
    self.off = 1s
    self.con = 143s
0x002D84:
    if !(== self.con 150s) goto 0x002DAC
0x002D98:
    push (== self.activetimer 15s)
    goto 0x002DB0
0x002DAC:
    push 0s
0x002DB0:
    if !pop goto 0x002E54
0x002DB4:
    global.msc = 0s
    global.typer = 55s
    stog.msg[0s] = "You should be&smiling^1, too./*"
    self.blcon = (instance_create[]:int32 (var 187s) (var 15s) (var 170s))
    self.blconwd1 = (instance_create[]:int32 (var 782s) (var 25s) (var 210s))
    self.con = 151s
    stog.alarm[4s] = 85s
0x002E54:
    if !(== self.con 152s) goto 0x002EF0
0x002E68:
    self.con = 153s
    stog.msg[0s] = "Aren't&you&excited?/*"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 120s) (var 300s))
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 130s) (var 325s))
    stog.alarm[4s] = 60s
0x002EF0:
    if !(== self.con 154s) goto 0x002F78
0x002F04:
    self.con = 155s
    stog.msg[0s] = "Aren't&you&happy?/%%"
    self.blcon3 = (instance_create[]:int32 (var 186s) (var 120s) (var 530s))
    self.blconwd3 = (instance_create[]:int32 (var 782s) (var 130s) (var 555s))
0x002F78:
    if !(== self.con 155s) goto 0x002FF0
0x002F8C:
    if !(== (instance_exists[]:int32 self.blconwd3) 0s) goto 0x002FF0
0x002FA8:
    pushenv 186s 0x002FBC
0x002FB0:
    call (instance_destroy[]:int32 )
0x002FBC:
    popenv 0x002FB0
0x002FC0:
    pushenv 782s 0x002FD4
0x002FC8:
    call (instance_destroy[]:int32 )
0x002FD4:
    popenv 0x002FC8
0x002FD8:
    self.off = 1s
    self.con = 156s
0x002FF0:
    if !(== self.con 160s) goto 0x003018
0x003004:
    push (== self.activetimer 15s)
    goto 0x00301C
0x003018:
    push 0s
0x00301C:
    if !pop goto 0x0030C4
0x003020:
    global.msc = 0s
    global.typer = 55s
    self.con = 161s
    stog.msg[0s] = "You're going&to be free./%%"
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 20s) (var 220s))
    push 24s
    stog.sprite_index* = (int32 self.blcon2)
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 30s) (var 250s))
0x0030C4:
    if !(== self.con 161s) goto 0x00317C
0x0030D8:
    if !(== (instance_exists[]:int32 self.blconwd2) 0s) goto 0x00317C
0x0030F4:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "Tale") (var "General"))
    call (ini_close[]:int32 )
    self.con = 162s
    pushenv (int32 self.blcon2) 0x00316C
0x003160:
    call (instance_destroy[]:int32 )
0x00316C:
    popenv 0x003160
0x003170:
    self.off = 1s
0x00317C:
    if !(== self.con 300s) goto 0x003288
0x003190:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = (+ (+ "\\E0Howdy^1, " global.charname) "!/")
    stog.msg[1s] = "You finally made&it home./"
    stog.msg[2s] = "\\E0Remember when we&used to play here?/"
    stog.msg[3s] = "\\E0Hee hee hee.../"
    stog.msg[4s] = "Boy!/"
    stog.msg[5s] = "\\E9Today's gonna be&just as fun./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x003288:
    if !(== self.con 301s) goto 0x0032B8
0x00329C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0032BC
0x0032B8:
    push 0s
0x0032BC:
    if !pop goto 0x0032D8
0x0032C0:
    self.off = 1s
    self.con = 302s
0x0032D8:
    if !(== self.con 305s) goto 0x0033CC
0x0032EC:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1I remember when I&first woke up here^1,&in the garden./"
    stog.msg[1s] = "I was so scared./"
    stog.msg[2s] = "\\E2I couldn't feel my&arms or my legs.../"
    stog.msg[3s] = "\\E1My entire body had&turned into a&flower!/"
    stog.msg[4s] = "\\E5\"Mom^1! Dad^1!&Somebody help me^1!\"&I called out./"
    stog.msg[5s] = "\\E9But nobody came./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x0033CC:
    if !(== self.con 310s) goto 0x003508
0x0033E0:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1Eventually^1, the king&found me^1, crying in&the garden./"
    stog.msg[1s] = "I explained what had&happened to him./"
    stog.msg[2s] = (+ (+ "Then he held me^1,&" global.charname) "./")
    stog.msg[3s] = "He held me with&tears in his eyes^1,&saying.../"
    stog.msg[4s] = "\"There^1, there^1.&Everything is going&to be alright.\"/"
    stog.msg[5s] = "He was so..^1.&Emotional./"
    stog.msg[6s] = "\\E1But..^1.&For some reason.../"
    stog.msg[7s] = "\\E1I didn't feel&anything at all./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x003508:
    if !(== self.con 315s) goto 0x0036A4
0x00351C:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1I soon realized I&didn't feel ANYTHING&about ANYONE./"
    stog.msg[1s] = "My compassion had&disappeared!/"
    stog.msg[2s] = "\\E7And believe me^1,&it's not like I&wasn't trying./"
    stog.msg[3s] = "\\E3I wasted weeks with&that stupid king^1,&vainly hoping I would&feel something./"
    stog.msg[4s] = "\\E1But it became too&much for me./"
    stog.msg[5s] = "I ran away from&home./"
    stog.msg[6s] = "Eventually^1, I reached&the RUINS./"
    stog.msg[7s] = (+ (+ "\\E0Inside I found HER^1,&" global.charname) "./")
    stog.msg[8s] = "I thought of all&people^1, SHE could&make me feel whole&again./"
    stog.msg[9s] = "\\E1.../"
    stog.msg[10s] = "\\E7She failed./"
    stog.msg[11s] = "\\E6Ha ha.../%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x0036A4:
    if !(== self.con 320s) goto 0x00384C
0x0036B8:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1I realized those two&were useless./"
    stog.msg[1s] = "I became despondent./"
    stog.msg[2s] = "I just wanted to&love someone./"
    stog.msg[3s] = "I just wanted to&care about someone./"
    stog.msg[4s] = (+ global.charname "^1, you might&not believe this.../")
    stog.msg[5s] = "\\E2But I decided..^1.&It wasn't worth&living anymore./"
    stog.msg[6s] = "\\E7Not in a world&without love./"
    stog.msg[7s] = "\\E6Not in a world&without you./"
    stog.msg[8s] = "\\E1So.../"
    stog.msg[9s] = "\\E0I decided to follow&in your footsteps./"
    stog.msg[10s] = "\\E1I would erase myself&from existence./"
    stog.msg[11s] = "\\E1And you know what?/"
    stog.msg[12s] = "\\E0I succeeded./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x00384C:
    if !(== self.con 325s) goto 0x0039A0
0x003860:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1But as I left this&mortal coil.../"
    stog.msg[1s] = "I started to feel&apprehensive./"
    stog.msg[2s] = "\\E9If you don't have&a SOUL^1, what happens&when you...?/"
    stog.msg[3s] = "\\E1Something primal&started to burn&inside me./"
    stog.msg[4s] = "\"No^1,\" I thought^1.&\"I don't want to&die!\"/"
    stog.msg[5s] = ".../"
    stog.msg[6s] = "Then I woke up./"
    stog.msg[7s] = "Like it was all&just a bad dream./"
    stog.msg[8s] = "I was back at the&garden./"
    stog.msg[9s] = "\\E0Back at my&\"save point.\"/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x0039A0:
    if !(== self.con 330s) goto 0x003AC4
0x0039B4:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "Interested^1, I decided&to experiment./"
    stog.msg[1s] = "Again and again^1, I&brought myself to&the edge of death./"
    stog.msg[2s] = "At any point^1, I&could have let this&world continue on&without me./"
    stog.msg[3s] = "But as long as I&was determined to&live.../"
    stog.msg[4s] = "\\E0I could go back./"
    stog.msg[5s] = (+ (+ "\\E6Amazing^1, isn't it^1,&" global.charname) "?/")
    stog.msg[6s] = "\\E0I was amazed^1, too./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x003AC4:
    if !(== self.con 335s) goto 0x003C18
0x003AD8:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1At first^1, I used my&powers for good./"
    stog.msg[1s] = "\\E0I became \"friends\"&with everyone./"
    stog.msg[2s] = "I solved all their&problems flawlessly./"
    stog.msg[3s] = "Their companionship&was amusing.../"
    stog.msg[4s] = "\\E1For a while. /"
    stog.msg[5s] = "\\E1As time repeated^1,&people proved&themselves&predictable./"
    stog.msg[6s] = "What would this&person say if I&gave them this?/"
    stog.msg[7s] = "What would they do&if I said this to&them?/"
    stog.msg[8s] = "Once you know the&answer^1, that's it./"
    stog.msg[9s] = "That's all they are./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x003C18:
    if !(== self.con 340s) goto 0x003D54
0x003C2C:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1It all started&because I was&curious./"
    stog.msg[1s] = "\\E0Curious what would&happen if I killed&them./"
    stog.msg[2s] = "\\E2\"I don't like this^1,\"&I told myself./"
    stog.msg[3s] = "\\E1\"I'm just doing this&because I HAVE to&know what happens./"
    stog.msg[4s] = "\\E8Ha ha ha..^1.&What an excuse!/"
    stog.msg[5s] = "\\E9You of all people&must know how&liberating it is to&act this way./"
    stog.msg[6s] = "\\E8At least we're better&than those sickos&that stand around and&WATCH it happen.../"
    stog.msg[7s] = "\\E9Those pathetic people&that want to see it^1,&but are too weak to&do it themselves./"
    stog.msg[8s] = "\\E0I bet someone like&that's watching right&now^1, aren't they...?/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x003D54:
    if !(== self.con 345s) goto 0x003EC0
0x003D68:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1Nowadays^1, even that's&grown tiring./"
    stog.msg[1s] = (+ (+ "\\E7You understand^1,&" global.charname) "./")
    stog.msg[2s] = "\\E6I've done everything&this world has to&offer./"
    stog.msg[3s] = "\\E1I've read every book^1.&I've burned every&book./"
    stog.msg[4s] = "I've won every game^1.&I've lost every game./"
    stog.msg[5s] = "I've appeased&everyone^1.&I've killed everyone./"
    stog.msg[6s] = "Sets of numbers..^1.&Lines of dialogue..^1.&I've seen them all./"
    stog.msg[7s] = "\\E1But you..^1.&YOU'RE different./"
    stog.msg[8s] = (+ (+ "\\E0I never could&predict YOU^1, " global.charname) "./%%")
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x003EC0:
    if !(== self.con 350s) goto 0x003FE4
0x003ED4:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1When I saw you in&the RUINS^1, I didn't&recognize you./"
    stog.msg[1s] = "\\E8I thought I could&frighten you^1, then&steal your SOUL./"
    stog.msg[2s] = "\\E1I failed./"
    stog.msg[3s] = "\\E0And when I tried&to load my save&file.../"
    stog.msg[4s] = "\\E1It didn't work./"
    stog.msg[5s] = (+ (+ "\\E9" global.charname) "..^1.&Your DETERMINATION!/")
    stog.msg[6s] = "\\E8Somehow^1, it's even&greater than mine!/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x003FE4:
    if !(== self.con 355s) goto 0x004138
0x003FF8:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = (+ (+ "\\E1I just have one&question for you^1,&" global.charname) "./")
    stog.msg[1s] = "How did you get&back to the RUINS&from here...?/"
    stog.msg[2s] = "\\E0... wait^1, I know./"
    stog.msg[3s] = "She must have taken&you when she left./"
    stog.msg[4s] = "\\E1And decided to give&you a proper burial^1,&rather than.../"
    stog.msg[5s] = "\\E0Hanging out in the&basement forever./"
    stog.msg[6s] = "\\E1... but^1, why then...?/"
    stog.msg[7s] = "What made you wake&up?/"
    stog.msg[8s] = "\\E6Did you hear me&calling you...?/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x004138:
    if !(== self.con 360s) goto 0x0042E0
0x00414C:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1It doesn't matter&now./"
    stog.msg[1s] = (+ (+ "\\E1I'm so tired of&this^1, " global.charname) "./")
    stog.msg[2s] = "I'm tired of all&these people./"
    stog.msg[3s] = "I'm tired of all&these places./"
    stog.msg[4s] = "I'm tired of being&a flower./"
    stog.msg[5s] = (+ global.charname "./")
    stog.msg[6s] = "\\E0There's just one&thing left I want&to do./"
    stog.msg[7s] = "Let's finish what we&started./"
    stog.msg[8s] = "Let's free everyone./"
    stog.msg[9s] = "\\E8Then..^1. let's let&them see what&humanity is&REALLY like!/"
    stog.msg[10s] = "\\E6That despite it all.../"
    stog.msg[11s] = "\\E9This world is still&\"kill or be killed!!\"/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x0042E0:
    if !(== self.con 365s) goto 0x00441C
0x0042F4:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E1Then...?/"
    stog.msg[1s] = "\\E7Well^1.&I had.../"
    stog.msg[2s] = "\\E9Been entertaining a&few ways to use&that power./"
    stog.msg[3s] = "\\E8Hee hee hee.../"
    stog.msg[4s] = "\\E1.../"
    stog.msg[5s] = "\\E1But seeing you here&changed my mind./"
    stog.msg[6s] = (+ (+ "\\E6" global.charname) "..^1.&I think if you're&around.../")
    stog.msg[7s] = "\\E7Just living in the&surface world&doesn't seem so bad./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x00441C:
    if !(== self.con 370s) goto 0x004528
0x004430:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E0We don't even need&to leave to get&them this time./"
    stog.msg[1s] = "The king has six of&them locked away./"
    stog.msg[2s] = "\\E1I've tried hundreds&of ways to get him&to show me them.../"
    stog.msg[3s] = "\\E3But he just won't./"
    stog.msg[4s] = (+ (+ "\\E1" global.charname) ".../")
    stog.msg[5s] = "\\E0I know he'll do it&for YOU./%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x004528:
    if !(== self.con 375s) goto 0x00461C
0x00453C:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E0Why am I telling&you all of this?/"
    stog.msg[1s] = (+ (+ "\\E6" global.charname) "^1, I said it&before./")
    stog.msg[2s] = "\\E1Even after all this&time.../"
    stog.msg[3s] = "\\E0You're still the&only one that&understands me./"
    stog.msg[4s] = "\\E8You won't give me&any worthless pity!/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x00461C:
    if !(== self.con 380s) goto 0x0046E0
0x004630:
    global.typer = 98s
    global.msc = 0s
    stog.msg[0s] = "\\E9Creatures like us.../"
    stog.msg[1s] = "\\E0Wouldn't hesitate to&KILL each other if&we got in each&other's way./"
    stog.msg[2s] = "\\E0So that's.../"
    stog.msg[3s] = "\\E1So..^1. that's..^1.&Why.../%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 381s
0x0046E0:
    if !(== self.con 381s) goto 0x00470C
0x0046F4:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x004710
0x00470C:
    push 0s
0x004710:
    if !pop goto 0x004758
0x004714:
    if !(== self.con 381s) goto 0x00473C
0x004728:
    push (== 782.stringno 1s)
    goto 0x004740
0x00473C:
    push 0s
0x004740:
    if !pop goto 0x004758
0x004744:
    call (caster_free[]:int32 global.currentsong)
0x004758:
    if !(== self.con 381s) goto 0x004788
0x00476C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00478C
0x004788:
    push 0s
0x00478C:
    if !pop goto 0x0047C4
0x004790:
    call (caster_free[]:int32 (var -3s))
    self.con = 382s
    stog.alarm[4s] = 45s
0x0047C4:
    if !(== self.con 383s) goto 0x004968
0x0047D8:
    global.currentsong = (caster_load[]:int32 (var "music/prebattle1.ogg"))
    call (caster_loop[]:int32 (var 0.22d) (var 0.9d) global.currentsong)
    self.shake = 1s
    global.typer = 99s
    stog.msg[0s] = "\\E2.../"
    stog.msg[1s] = "\\E2... ha..^1.&Ha.../"
    stog.msg[2s] = "\\E6... what's this..^1.&... feeling?/"
    stog.msg[3s] = "Why am I..^1.&Shaking?/"
    stog.msg[4s] = ".../"
    stog.msg[5s] = (+ (+ "Hey..^1. " global.charname) "..^1.&No hard feelings about&back then^1, right?/")
    stog.msg[6s] = ".../"
    stog.msg[7s] = "\\E4H-Hey^1, what are you&doing!?/"
    stog.msg[8s] = "B..^1. back off!!/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 384s
0x004968:
    if !(== self.con 384s) goto 0x004994
0x00497C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x004998
0x004994:
    push 0s
0x004998:
    if !pop goto 0x0049BC
0x00499C:
    if !(== 782.stringno 5s) goto 0x0049BC
0x0049B0:
    global.faceemotion = 10s
0x0049BC:
    if !(== self.con 384s) goto 0x0049EC
0x0049D0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0049F0
0x0049EC:
    push 0s
0x0049F0:
    if !pop goto 0x004A00
0x0049F4:
    self.off = 1s
0x004A00:
    if !(== self.con 390s) goto 0x004B50
0x004A14:
    self.shake = 0.75d
    global.typer = 99s
    global.msc = 0s
    stog.msg[0s] = "I..^1. I've changed&my mind about all&this./"
    stog.msg[1s] = "This isn't a good&idea anymore./"
    stog.msg[2s] = (+ (+ "Y-you should go back^1,&" global.charname) "./")
    stog.msg[3s] = "\\E0This place is fine&the way it is!/"
    stog.msg[4s] = ".../"
    stog.msg[5s] = "\\E4S-s-stop making that&creepy face!/"
    stog.msg[6s] = "This isn't funny!/"
    stog.msg[7s] = "You've got a SICK&sense of humor!/%%"
    call (scr_blcon_x[]:int32 (- self.floweyy 10s) (+ self.floweyx 90s))
    self.con = 301s
0x004B50:
    exit
