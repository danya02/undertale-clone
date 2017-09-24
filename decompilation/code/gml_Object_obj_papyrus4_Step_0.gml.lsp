0x000000:
    if !(== self.conversation 1s) goto 0x000154
0x000014:
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.5d
    stog.fadespeed* = (int32 self.fade)
    global.currentsong = (caster_load[]:int32 (var "music/papyrus.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.6d) global.currentsong)
    self.myinteract = 3s
    global.msc = 0s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    self.conversation = 2s
0x000154:
    if !(== self.conversation 2s) goto 0x000184
0x000168:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x000210
0x00018C:
    self.conversation = 3s
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    stog.alarm[0s] = 30s
    stog.alarm[4s] = 40s
0x000210:
    if !(== self.conversation 4s) goto 0x00037C
0x000224:
    global.msc = 243s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.interact = 1s
    self.conversation = 6s
    if !(== self.murder 1s) goto 0x000354
0x000280:
    [obj_mainchara].visible = 0s
    self.mc = (scr_marker[]:int32 (var 1045s) 1570.y 1570.x)
    self.conversation = 120s
    stog.alarm[4s] = -1s
    stog.alarm[0s] = -1s
    global.msc = 0s
    stog.msg[0s] = "HEY!/"
    stog.msg[1s] = "IT'S THE HUMAN!/"
    stog.msg[2s] = "\\E0YOU'RE GONNA&LOVE THIS&PUZZLE!/"
    stog.msg[3s] = "IT WAS MADE&BY THE GREAT.../%%"
0x000354:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00037C:
    if !(== self.conversation 6s) goto 0x0003AC
0x000390:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003B0
0x0003AC:
    push 0s
0x0003B0:
    if !pop goto 0x00048C
0x0003B4:
    push 1s
    stog.fun* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.conversation = 7s
    self.x = 220s
    global.interact = 0s
    self.solid = 0s
0x00048C:
    if !(== self.conversation 50s) goto 0x0004BC
0x0004A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0004C0
0x0004BC:
    push 0s
0x0004C0:
    if !pop goto 0x0005B0
0x0004C4:
    push 2s
    push 993s
    stog.alarm[] = 0s
    self.conversation = 51s
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push 1s
    stog.fun* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    stog.alarm[4s] = 60s
    call (caster_set_volume[]:int32 (var 0.3d) global.currentsong)
    call (caster_loop[]:int32 (var 0.1d) (var 0.6d) self.computersound)
0x0005B0:
    if !(== self.conversation 52s) goto 0x00076C
0x0005C4:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    if !(== 993.randofactor -1s) goto 0x00076C
0x000618:
    self.i = 0s
    if !(< self.i 4s) goto 0x000724
0x000638:
    call (instance_create[]:int32 (var 8s) (var 80s) (+ 80s (* self.i 40s)))
    call (instance_create[]:int32 (var 8s) (var 100s) (+ 80s (* self.i 40s)))
    call (instance_create[]:int32 (var 8s) (var 160s) (+ 80s (* self.i 40s)))
    call (instance_create[]:int32 (var 8s) (var 180s) (+ 80s (* self.i 40s)))
    self.i = (+ self.i 1s)
    goto 0x000624
0x000724:
    call (caster_free[]:int32 global.currentsong)
    call (caster_free[]:int32 self.computersound)
    stog.alarm[4s] = 110s
    self.conversation = 53s
0x00076C:
    if !(== self.conversation 54s) goto 0x000818
0x000780:
    push (int32 self.sans):usprite
    stog.sprite_index* = (int32 self.sans)
    push 1321s
    stog.sprite_index* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    push 1s
    stog.vspeed* = (int32 self.papyrus)
    stog.alarm[4s] = 10s
    self.conversation = 55s
0x000818:
    if !(== self.conversation 56s) goto 0x0008B4
0x00082C:
    push 1s
    stog.fun* = (int32 self.sans)
    push 0.25d
    stog.image_speed* = (int32 self.sans)
    push 2s
    stog.vspeed* = (int32 self.sans)
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.conversation = 57s
    stog.alarm[4s] = 10s
0x0008B4:
    if !(== self.conversation 58s) goto 0x000918
0x0008C8:
    push 0s
    stog.vspeed* = (int32 self.sans)
    push 0s
    stog.image_speed* = (int32 self.sans)
    stog.alarm[4s] = 20s
    self.conversation = 59s
0x000918:
    if !(== self.conversation 60s) goto 0x000A1C
0x00092C:
    push 0s
    stog.vspeed* = (int32 self.papyrus)
    push 1s
    stog.hspeed* = (int32 self.papyrus)
    if !(== (int32 self.papyrus):sprite_index (int32 self.papyrus):dsprite) goto 0x0009FC
0x00098C:
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.dddd = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.dddd)
0x0009FC:
    stog.alarm[4s] = 100s
    self.conversation = 61s
0x000A1C:
    if !(== self.conversation 62s) goto 0x000A3C
0x000A30:
    self.conversation = 63s
0x000A3C:
    if !(== self.conversation 80s) goto 0x000A6C
0x000A50:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A70
0x000A6C:
    push 0s
0x000A70:
    if !pop goto 0x000B20
0x000A74:
    call (instance_create[]:int32 (var 946s) (+ (int32 self.papyrus):y 20s) (+ (int32 self.papyrus):x 10s))
    pushenv 946s 0x000AD4
0x000AC8:
    call (scr_depth[]:int32 )
0x000AD4:
    popenv 0x000AC8
0x000AD8:
    push (int32 self.papyrus):utsprite
    stog.sprite_index* = (int32 self.papyrus)
    stog.alarm[4s] = 30s
    self.conversation = 81s
0x000B20:
    if !(== self.conversation 82s) goto 0x000BF4
0x000B34:
    push (int32 self.sans):usprite
    stog.sprite_index* = (int32 self.sans)
    push 0s
    stog.fun* = (int32 self.papyrus)
    push (int32 self.papyrus):dsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    push 1s
    stog.vspeed* = (int32 self.papyrus)
    stog.alarm[4s] = 10s
    self.conversation = 55s
0x000BF4:
    if !(== self.conversation 99s) goto 0x000C24
0x000C08:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C28
0x000C24:
    push 0s
0x000C28:
    if !pop goto 0x000C38
0x000C2C:
    self.conversation = 22s
0x000C38:
    if !(== self.conversation 22s) goto 0x000CBC
0x000C4C:
    global.interact = 1s
    global.msc = 228s
    global.faceemotion = 1s
    global.facechoice = 4s
    global.typer = 19s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 23s
0x000CBC:
    if !(== self.conversation 23s) goto 0x000CEC
0x000CD0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CF0
0x000CEC:
    push 0s
0x000CF0:
    if !pop goto 0x000DD4
0x000CF4:
    push 5s
    stog.hspeed* = (int32 self.papyrus)
    push 1s
    stog.fun* = (int32 self.papyrus)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    self.hhh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.hhh)
    stog.alarm[1s] = 30s
    self.conversation = 24s
0x000DD4:
    if !(== self.conversation 63s) goto 0x000ED0
0x000DE8:
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    global.plot = 58s
    global.interact = 0s
    call (instance_create[]:int32 (var 1022s) (int32 self.sans):y (int32 self.sans):x)
    pushenv (int32 self.sans) 0x000EA0
0x000E94:
    call (instance_destroy[]:int32 )
0x000EA0:
    popenv 0x000E94
0x000EA4:
    pushenv (int32 self.papyrus) 0x000EC0
0x000EB4:
    call (instance_destroy[]:int32 )
0x000EC0:
    popenv 0x000EB4
0x000EC4:
    call (instance_destroy[]:int32 )
0x000ED0:
    if !(== self.conversation 120s) goto 0x000F00
0x000EE4:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000F04
0x000F00:
    push 0s
0x000F04:
    if !pop goto 0x000FEC
0x000F08:
    global.facing = 1s
    if !(== 782.stringno 2s) goto 0x000F6C
0x000F28:
    [obj_mainchara].visible = 0s
    push 3s
    stog.hspeed* = (int32 self.mc)
    push 0.25d
    stog.image_speed* = (int32 self.mc)
0x000F6C:
    if !(> (int32 self.mc):x (+ (int32 self.mc):xstart 90s)) goto 0x000FEC
0x000FA4:
    push (+ (int32 self.mc):xstart 93s)
    stog.x* = (int32 self.mc)
    push 0s
    stog.image_speed* = (int32 self.mc)
0x000FEC:
    if !(== self.conversation 120s) goto 0x00101C
0x001000:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001020
0x00101C:
    push 0s
0x001020:
    if !pop goto 0x0013C0
0x001024:
    global.facing = 1s
    if !(> (int32 self.mc):x (+ (int32 self.mc):xstart 90s)) goto 0x0013C0
0x001068:
    push (+ (int32 self.mc):xstart 93s)
    stog.x* = (int32 self.mc)
    push 0s
    stog.image_speed* = (int32 self.mc)
    [obj_mainchara].x = (int32 self.mc):x
    [obj_mainchara].visible = 1s
    pushenv (int32 self.mc) 0x0010F4
0x0010E8:
    call (instance_destroy[]:int32 )
0x0010F4:
    popenv 0x0010E8
0x0010F8:
    global.msc = 0s
    stog.msg[0s] = "\\E3... ARE YOU&SERIOUS?/"
    stog.msg[1s] = "\\E1SANS!!^1!&HELP!!!/"
    stog.msg[2s] = "THEY KEEP WALKING&THROUGH MY PUZZLES!/"
    stog.msg[3s] = "\\E3THEY'RE SUPPOSED&TO LET ME&EXPLAIN THEM./"
    stog.msg[4s] = "\\E0THEN THREATEN AND&BAFFLE THEM WITH&DANGEROUS JAPES./"
    call (scr_sansface[]:int32 (var 0s) (var 5s))
    stog.msg[6s] = "* well^1, maybe they&  don't like japes./"
    call (scr_papface[]:int32 (var 4s) (var 7s))
    stog.msg[8s] = "EVERYONE LIKES&JAPES!!!/"
    call (scr_sansface[]:int32 (var 0s) (var 9s))
    stog.msg[10s] = "* what about undyne^1?&* doesn't she hate&  puzzles?/"
    call (scr_papface[]:int32 (var 0s) (var 11s))
    stog.msg[12s] = "SHE HATES PUZZLES^1.&BUT SHE LOVES&JAPES./"
    call (scr_sansface[]:int32 (var 1s) (var 13s))
    stog.msg[14s] = "* that makes sense./"
    call (scr_papface[]:int32 (var 1s) (var 15s))
    stog.msg[16s] = "HUMAN!^1!&WHAT DO YOU&THINK!?/"
    stog.msg[17s] = "PUZZLES OR JAPES?/"
    stog.msg[18s] = ".../"
    stog.msg[19s] = "\\E3.../"
    stog.msg[20s] = "OKAY^1, THIS IS&NORMALLY THE&PART./"
    stog.msg[21s] = "WHERE YOU EITHER&AGREE OR DISAGREE./"
    stog.msg[22s] = "AND DEPENDING ON&YOUR ANSWER./"
    stog.msg[23s] = "\\E0WE SAY SOMETHING&GREAT IN RESPONSE./"
    stog.msg[24s] = "\\E3.../"
    stog.msg[25s] = "\\E0HERE^1, WHY DON'T&YOU DO THIS&PUZZLE YOURSELF./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 80s
0x0013C0:
    exit
