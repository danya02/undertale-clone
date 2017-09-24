0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000B0
0x000030:
    global.interact = 1s
    push 0.1d
    stog.image_speed* = (int32 self.rman)
    global.typer = 5s
    global.msc = 770s
    global.facechoice = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.myinteract = 2s
0x0000B0:
    if !(== self.myinteract 2s) goto 0x00014C
0x0000C4:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x00014C
0x0000E0:
    push 0s
    stog.image_speed* = (int32 self.rman)
    push 0s
    stog.image_index* = (int32 self.rman)
    if !(== self.con 0s) goto 0x000140
0x000124:
    self.myinteract = 0s
    global.interact = 0s
    goto 0x00014C
0x000140:
    self.myinteract = 3s
0x00014C:
    if !(== self.reg 1s) goto 0x0001AC
0x000160:
    self.siner = (+ self.siner 1s)
    self.dogy = (+ (* (sin[]:int32 (/ self.siner (double 10s))) 1s) 1s)
0x0001AC:
    if !(== self.con 0s) goto 0x00020C
0x0001C0:
    self.siner = (+ self.siner 1s)
    self.dogy = (+ (* (sin[]:int32 (/ self.siner (double 10s))) 1s) 1s)
0x00020C:
    if !(== self.con 0.1d) goto 0x000244
0x000228:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000248
0x000244:
    push 0s
0x000248:
    if !pop goto 0x000274
0x00024C:
    [obj_mainchara].image_speed = 0.25d
    self.con = 0.2d
0x000274:
    if !(== self.con 0.2d) goto 0x000380
0x000290:
    global.phasing = 1s
    if !(< 1570.x (+ self.x 54s)) goto 0x0002E0
0x0002BC:
    global.facing = 1s
    [obj_mainchara].x = (+ 1570.x 2s)
0x0002E0:
    if !(> 1570.x (+ self.x 58s)) goto 0x000324
0x000300:
    global.facing = 3s
    [obj_mainchara].x = (- 1570.x 2s)
0x000324:
    if !(>= 1570.x (+ self.x 54s)) goto 0x000364
0x000344:
    push (<= 1570.x (+ self.x 58s))
    goto 0x000368
0x000364:
    push 0s
0x000368:
    if !pop goto 0x000380
0x00036C:
    self.con = 0.3d
0x000380:
    if !(== self.con 0.3d) goto 0x0004EC
0x00039C:
    global.phasing = 1s
    [obj_mainchara].x = (+ self.x 56s)
    self.depth = 960000
    global.facing = 0s
    if !(== self.up 0s) goto 0x000464
0x0003F0:
    global.facing = 0s
    if !(< 1570.y (+ (- (+ self.y self.dogy) 8s) self.adjust)) goto 0x000450
0x000434:
    [obj_mainchara].y = (+ 1570.y 2s)
    goto 0x000464
0x000450:
    self.con = 0.4d
0x000464:
    if !(== self.up 1s) goto 0x0004EC
0x000478:
    global.facing = 2s
    if !(> 1570.y (+ (- (+ self.y self.dogy) 8s) self.adjust)) goto 0x0004D8
0x0004BC:
    [obj_mainchara].y = (- 1570.y 2s)
    goto 0x0004EC
0x0004D8:
    self.con = 0.4d
0x0004EC:
    if !(== self.con 0.4d) goto 0x000548
0x000508:
    global.facing = 3s
    self.con = 1.1d
    stog.alarm[4s] = 10s
    self.snapper = 1570s
0x000548:
    if !(== self.con 2.1d) goto 0x0005A4
0x000564:
    self.con = 1s
    if !(== self.reg 1s) goto 0x0005A4
0x000584:
    self.con = 2s
    stog.alarm[4s] = 10s
0x0005A4:
    if !(== self.con 1s) goto 0x00061C
0x0005B8:
    if !(> self.dogy -10s) goto 0x0005F0
0x0005CC:
    self.dogy = (- self.dogy 0.5d)
    goto 0x00061C
0x0005F0:
    self.dogy = -10s
    self.con = 2s
    stog.alarm[4s] = 30s
0x00061C:
    if !(== self.con 3s) goto 0x0006A4
0x000630:
    self.hspeed = -5s
    stog.alarm[5s] = 1s
    if !(== self.reg 1s) goto 0x000684
0x000664:
    self.hspeed = -2s
    stog.alarm[5s] = -1s
0x000684:
    self.image_speed = 0.334d
    self.con = 4s
0x0006A4:
    if !(== self.con 4s) goto 0x0006CC
0x0006B8:
    push (< self.x -80s)
    goto 0x0006D0
0x0006CC:
    push 0s
0x0006D0:
    if !pop goto 0x000720
0x0006D4:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 4.1d
    stog.alarm[4s] = 10s
0x000720:
    if !(== self.con 5.1d) goto 0x00078C
0x00073C:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    self.con = 99s
    global.entrance = 24s
    call (room_goto[]:int32 (var 316s))
0x00078C:
    if !(== self.con 6s) goto 0x000884
0x0007A0:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    stog.view_xview[0s] = 0s
    self.x = 340s
    global.facing = 3s
    global.interact = 1s
    self.dogy = -10s
    stog.alarm[5s] = 1s
    if !(== self.reg 1s) goto 0x000858
0x00082C:
    self.dogy = 0s
    self.hspeed = -2s
    stog.alarm[5s] = -1s
0x000858:
    self.image_speed = 0.334d
    self.hspeed = -2s
    self.con = 7s
0x000884:
    if !(== self.con 7s) goto 0x0008D8
0x000898:
    push self.x
    if !(< -1s (+ 0s:view_xview 120s)) goto 0x0008D8
0x0008C0:
    self.con = 8s
    self.hspeed = 0s
0x0008D8:
    if !(== self.con 8s) goto 0x00090C
0x0008EC:
    self.con = 9s
    stog.alarm[4s] = 20s
0x00090C:
    if !(== self.con 9s) goto 0x00092C
0x000920:
    global.interact = 1s
0x00092C:
    if !(== self.con 10s) goto 0x001158
0x000940:
    global.msc = 0s
    global.typer = 5s
    self.rr = (floor[]:int32 (random[]:int32 (var 31s)))
    push -5s
    if !(== 460s:flag 1s) goto 0x0009A0
0x000994:
    self.rr = 17s
0x0009A0:
    stog.msg[0s] = "* Tra la la^1.&* The waters are wild today^1.&* That's good luck.../%%"
    stog.msg[1s] = "* Tra la la./%%"
    if !(== self.rr 1s) goto 0x0009FC
0x0009E4:
    stog.msg[0s] = "* Tra la la^1.&* The waters are wild today^1.&* That's bad luck.../%%"
0x0009FC:
    if !(== self.rr 2s) goto 0x000A40
0x000A10:
    stog.msg[0s] = "* Tra la la^1.&* Eat a mushroom everyday./"
    stog.msg[1s] = "* Why^1?&* Then I know you're listening&  to me.../%%"
0x000A40:
    if !(== self.rr 3s) goto 0x000A6C
0x000A54:
    stog.msg[0s] = "* Tra la la^1.&* Remember to take a break&  every-so-often.../%%"
0x000A6C:
    if !(== self.rr 4s) goto 0x000A98
0x000A80:
    stog.msg[0s] = "* Tra la la^1.&* Did you ever hear the old&  song coming from the sea?/%%"
0x000A98:
    if !(== self.rr 5s) goto 0x000AC4
0x000AAC:
    stog.msg[0s] = "* Tra la la^1.&* What's inside an acorn^1?&* It's really just a mystery./%%"
0x000AC4:
    if !(== self.rr 6s) goto 0x000AF0
0x000AD8:
    stog.msg[0s] = "* Tra la la^1.&* Dancing on a boat is danger^1.&* But good exercise.../%%"
0x000AF0:
    if !(== self.rr 7s) goto 0x000B1C
0x000B04:
    stog.msg[0s] = "* Tra la la^1.&* I heard ASGORE has a favorite&  food./%%"
0x000B1C:
    if !(== self.rr 8s) goto 0x000B60
0x000B30:
    stog.msg[0s] = "* Tra la la^1.&* I heard spiders have a&  favorite food./"
    stog.msg[1s] = "* It's spiders./%%"
0x000B60:
    if !(== self.rr 9s) goto 0x000BA4
0x000B74:
    stog.msg[0s] = "* Tra la la^1.&* The piano plays the&  tinkling song./"
    stog.msg[1s] = "* Hmm..^1. tinkling./%%"
0x000BA4:
    if !(== self.rr 10s) goto 0x000BE8
0x000BB8:
    stog.msg[0s] = "* Tra la la^1.&* You can never have too&  many hot-dogs./"
    stog.msg[1s] = "* ... sadly^1, that's not true./%%"
0x000BE8:
    if !(== self.rr 11s) goto 0x000C2C
0x000BFC:
    stog.msg[0s] = "* Tra la la^1.&* Don't snoop behind people's&  houses.../"
    stog.msg[1s] = "* You might be mistaken for&  a trash-can./%%"
0x000C2C:
    if !(== self.rr 12s) goto 0x000C58
0x000C40:
    stog.msg[0s] = "* Tra la la^1.&* The angel is coming..^1.&* Tra la la./%%"
0x000C58:
    if !(== self.rr 13s) goto 0x000C84
0x000C6C:
    stog.msg[0s] = "* Hum hum hum^1. Hum hum hum^1.&* I'm having a little concert./%%"
0x000C84:
    if !(== self.rr 14s) goto 0x000CC8
0x000C98:
    stog.msg[0s] = "* Pet pet pet..^1.&* The neck stretches infinitely&  into the cosmos./"
    stog.msg[1s] = "* ... don't worry about it./%%"
0x000CC8:
    if !(== self.rr 15s) goto 0x000CF4
0x000CDC:
    stog.msg[0s] = "* Ah,/%%"
0x000CF4:
    if !(== self.rr 16s) goto 0x000D38
0x000D08:
    stog.msg[0s] = "* Tra la la^1.&* What's a game you can play&  with a dog?/"
    stog.msg[1s] = "* Asking for a friend.../%%"
0x000D38:
    if !(== self.rr 17s) goto 0x000D7C
0x000D4C:
    stog.msg[0s] = "* Tra la la^1.&* Temmie Village.../"
    stog.msg[1s] = "* ... the room before the&  darkening lantern room./%%"
0x000D7C:
    if !(== self.rr 18s) goto 0x000DA8
0x000D90:
    stog.msg[0s] = "* Tra la la^1.&* Why don't you sing with me^1.&* Tra la la./%%"
0x000DA8:
    if !(== self.rr 19s) goto 0x000DD4
0x000DBC:
    stog.msg[0s] = "* Tra la la^1.&* Uh oh^1.&* Suddenly^1, feeling tropical.../%%"
0x000DD4:
    if !(== self.rr 20s) goto 0x000E18
0x000DE8:
    stog.msg[0s] = "* Tra la la^1.&* Hmmm.../"
    stog.msg[1s] = "* I should have worn a few&  more pairs of pants today./%%"
0x000E18:
    if !(== self.rr 21s) goto 0x000E5C
0x000E2C:
    stog.msg[0s] = "* Tra la la^1.&* Hmmm.../"
    stog.msg[1s] = "* I should have worn a few&  million more pairs of pants&  today./%%"
0x000E5C:
    if !(== self.rr 22s) goto 0x000E88
0x000E70:
    stog.msg[0s] = "* Tra la la^1.&* Tri li li^1.&* Tre le le./%%"
0x000E88:
    if !(== self.rr 23s) goto 0x00100C
0x000E9C:
    self.weekday = self.current_weekday
    self.day = "Error"
    if !(== self.weekday 0s) goto 0x000EE0
0x000ED0:
    self.day = "Sunday"
0x000EE0:
    if !(== self.weekday 1s) goto 0x000F04
0x000EF4:
    self.day = "Monday"
0x000F04:
    if !(== self.weekday 2s) goto 0x000F28
0x000F18:
    self.day = "Tuesday"
0x000F28:
    if !(== self.weekday 3s) goto 0x000F4C
0x000F3C:
    self.day = "Wednesday"
0x000F4C:
    if !(== self.weekday 4s) goto 0x000F70
0x000F60:
    self.day = "Thursday"
0x000F70:
    if !(== self.weekday 5s) goto 0x000F94
0x000F84:
    self.day = "Friday"
0x000F94:
    if !(== self.weekday 6s) goto 0x000FB8
0x000FA8:
    self.day = "Saturday"
0x000FB8:
    if !(== self.weekday 7s) goto 0x000FDC
0x000FCC:
    self.day = "Sunday"
0x000FDC:
    stog.msg[0s] = (+ (+ "* Tra la la^1.&* Somewhere^1, it's " self.day) "^1.&* So be careful./%%")
0x00100C:
    if !(== self.rr 24s) goto 0x001038
0x001020:
    stog.msg[0s] = "* Tra la la^1.&* If it's hot or cold^1, you&  can count on me./%%"
0x001038:
    if !(== self.rr 25s) goto 0x001064
0x00104C:
    stog.msg[0s] = "* Tra la la^1.&* The water is very wet today./%%"
0x001064:
    if !(== self.rr 26s) goto 0x001090
0x001078:
    stog.msg[0s] = "* Tra la la^1.&* The water is very dry today./%%"
0x001090:
    if !(== self.rr 27s) goto 0x0010BC
0x0010A4:
    stog.msg[0s] = "* Tra la la^1.&* What's my name^1?&* ... It doesn't really matter./%%"
0x0010BC:
    if !(== self.rr 28s) goto 0x0010E8
0x0010D0:
    stog.msg[0s] = "* Tra la la^1.&* Humans^1, monsters^1...&* Flowers./%%"
0x0010E8:
    if !(== self.rr 29s) goto 0x001114
0x0010FC:
    stog.msg[0s] = "* Tra la la^1.&* Beware of the man who&  speaks in hands./%%"
0x001114:
    if !(== self.rr 30s) goto 0x001140
0x001128:
    stog.msg[0s] = "* Tra la la^1.&* Beware of the man who came&  from the other world./%%"
0x001140:
    call (scr_regulartext[]:int32 )
    self.con = 11s
0x001158:
    if !(== self.con 11s) goto 0x001188
0x00116C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00118C
0x001188:
    push 0s
0x00118C:
    if !pop goto 0x0011B0
0x001190:
    self.con = 12s
    stog.alarm[4s] = 20s
0x0011B0:
    if !(== self.con 13s) goto 0x0011D0
0x0011C4:
    self.con = 15s
0x0011D0:
    if !(== self.con 15s) goto 0x0011FC
0x0011E4:
    self.hspeed = -2s
    self.con = 16s
0x0011FC:
    if !(== self.con 16s) goto 0x001224
0x001210:
    push (< self.x -80s)
    goto 0x001228
0x001224:
    push 0s
0x001228:
    if !pop goto 0x001270
0x00122C:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 17s
    stog.alarm[4s] = 10s
0x001270:
    if !(== self.con 18s) goto 0x001380
0x001284:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    self.con = 19s
    global.entrance = 24s
    push -5s
    if !(== 459s:flag 1s) goto 0x0012F0
0x0012DC:
    call (room_goto[]:int32 (var 70s))
0x0012F0:
    push -5s
    if !(== 459s:flag 2s) goto 0x001320
0x00130C:
    call (room_goto[]:int32 (var 125s))
0x001320:
    push -5s
    if !(== 459s:flag 3s) goto 0x001350
0x00133C:
    call (room_goto[]:int32 (var 140s))
0x001350:
    push -5s
    if !(== 459s:flag 0s) goto 0x001380
0x00136C:
    call (room_goto[]:int32 (var 140s))
0x001380:
    if !(== self.con 50s) goto 0x001450
0x001394:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    stog.view_xview[0s] = 0s
    self.x = 340s
    global.facing = 3s
    global.interact = 1s
    self.dogy = -10s
    if !(== self.reg 1s) goto 0x001424
0x00140C:
    self.dogy = 0s
    self.hspeed = -2s
0x001424:
    self.image_speed = 0.2d
    self.hspeed = -2s
    self.con = 51s
0x001450:
    if !(== self.con 51s) goto 0x0014D0
0x001464:
    if !(< self.x self.xstart) goto 0x0014D0
0x00147C:
    self.x = self.xstart
    self.con = 52s
    self.hspeed = 0s
    self.image_speed = 0s
    self.image_index = 0s
    stog.alarm[5s] = -1s
0x0014D0:
    if !(== self.con 52s) goto 0x001538
0x0014E4:
    global.phasing = 1s
    self.con = 54s
    stog.alarm[4s] = 20s
    if !(== self.sprite_index 1527s) goto 0x001538
0x001524:
    self.con = 52.5d
0x001538:
    if !(== self.con 53.5d) goto 0x0015AC
0x001554:
    if !(< self.dogy 1s) goto 0x00158C
0x001568:
    self.dogy = (+ self.dogy 0.5d)
    goto 0x0015AC
0x00158C:
    self.con = 54s
    stog.alarm[4s] = 10s
0x0015AC:
    if !(== self.con 55s) goto 0x0016C0
0x0015C0:
    global.facing = 2s
    self.snapper = 9999999
    if !(== self.up 0s) goto 0x001648
0x0015F0:
    [obj_mainchara].y = (- 1570.y 2s)
    [obj_mainchara].image_speed = 0.25d
    if !(< 1570.y (- self.y 25s)) goto 0x001648
0x00163C:
    self.con = 56s
0x001648:
    if !(== self.up 1s) goto 0x0016C0
0x00165C:
    global.facing = 0s
    [obj_mainchara].y = (+ 1570.y 2s)
    [obj_mainchara].image_speed = 0.25d
    if !(> 1570.y (+ self.y 25s)) goto 0x0016C0
0x0016B4:
    self.con = 56s
0x0016C0:
    if !(== self.con 56s) goto 0x001718
0x0016D4:
    global.facing = 0s
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].image_index = 0s
    self.con = 57s
    stog.alarm[4s] = 15s
0x001718:
    if !(== self.con 58s) goto 0x0017A0
0x00172C:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "* Come again some time^1.&* Tra la la./%%"
    call (scr_regulartext[]:int32 )
    self.con = 59s
    push 0.1d
    stog.image_speed* = (int32 self.rman)
0x0017A0:
    if !(== self.con 59s) goto 0x0017D0
0x0017B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0017D4
0x0017D0:
    push 0s
0x0017D4:
    if !pop goto 0x0018A4
0x0017D8:
    self.depth = (+ self.rman 1s)
    if !(== self.up 1s) goto 0x001814
0x001804:
    self.depth = 960000
0x001814:
    push -5s
    stog.flag[(+ 460s:flag 1s)] = 460s
    global.phasing = 0s
    global.msc = 0s
    push 0s
    stog.image_speed* = (int32 self.rman)
    push 0s
    stog.image_index* = (int32 self.rman)
    self.con = 0s
    global.interact = 0s
    self.myinteract = 0s
0x0018A4:
    self.adjust = 0s
    if !(== self.sprite_index 1527s) goto 0x0018D8
0x0018C4:
    push (< self.image_index 1s)
    goto 0x0018DC
0x0018D8:
    push 0s
0x0018DC:
    if !pop goto 0x0018EC
0x0018E0:
    self.adjust = 1s
0x0018EC:
    call (draw_sprite[]:int32 (+ self.y self.dogy) self.x self.image_index self.sprite_index)
    self.cc = (+ self.cc 0.1d)
    call (draw_sprite[]:int32 self.y self.x self.cc (var 1529s))
    push (+ (- (+ self.y self.dogy) 17s) self.adjust)
    stog.y* = (int32 self.rman)
    push (+ self.x 20s)
    stog.x* = (int32 self.rman)
    if !(bool (instance_exists[]:int32 self.snapper)) goto 0x001A48
0x0019E8:
    push (+ self.x 56s)
    stog.x* = (int32 self.snapper)
    push (+ (- (+ self.y self.dogy) 8s) self.adjust)
    stog.y* = (int32 self.snapper)
0x001A48:
    if !(== self.lapbg 1s) goto 0x001AF4
0x001A5C:
    self.tilex = (+ self.tilex self.bgspeed)
    if !(> self.tilex -20s) goto 0x001ACC
0x001A8C:
    call (tile_layer_shift[]:int32 (var 0s) (var -240s) (var 1000000))
    self.tilex = (- self.tilex 240s)
0x001ACC:
    call (tile_layer_shift[]:int32 (var 0s) self.bgspeed (var 1000000))
0x001AF4:
    stog.view_yview[0s] = 0s
0x001B08:
    exit
