0x000000:
    if !(== self.myinteract 1s) goto 0x00003C
0x000014:
    if !(== global.interact 0s) goto 0x00003C
0x000028:
    push (== self.con 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x0000D4
0x000044:
    if !(bool (instance_exists[]:int32 (var 1173s))) goto 0x000070
0x00005C:
    push (== global.facing 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x0000C8
0x000078:
    if !(== 1173.sugar 1s) goto 0x0000B4
0x00008C:
    if !(== 1173.eggs 1s) goto 0x0000B4
0x0000A0:
    push (== 1173.milk 1s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000C8
0x0000BC:
    self.con = 1s
0x0000C8:
    self.myinteract = 0s
0x0000D4:
    if !(== self.con 1s) goto 0x0002A8
0x0000E8:
    global.interact = 1s
    self.con = 2s
    stog.alarm[4s] = 30s
    call (snd_play[]:int32 (var 108s))
    self.newx = (- 1570.x 15s)
    self.gg = (instance_create[]:int32 (var 1363s) (var 374s) (- self.newx 7s))
    push 1s
    stog.visible* = (int32 self.gg)
    push 1704s
    stog.sprite_index* = (int32 self.gg)
    push 3020s
    stog.depth* = (int32 self.gg)
    self.gg = (instance_create[]:int32 (var 1363s) (var 370s) (- self.newx 2s))
    push 1s
    stog.visible* = (int32 self.gg)
    push 1716s
    stog.sprite_index* = (int32 self.gg)
    push 3010s
    stog.depth* = (int32 self.gg)
    self.gg = (instance_create[]:int32 (var 1363s) (var 360s) (+ self.newx 1s))
    push 1s
    stog.visible* = (int32 self.gg)
    push 1703s
    stog.sprite_index* = (int32 self.gg)
    push 3000s
    stog.depth* = (int32 self.gg)
0x0002A8:
    if !(== self.con 3s) goto 0x00039C
0x0002BC:
    [obj_mettaton_npc].image_speed = 0.25d
    global.typer = 27s
    global.msc = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* PERFECT^1!&* GREAT JOB^1, BEAUTIFUL!/"
    stog.msg[1s] = "* WE'VE GOT ALL OF THE&  INGREDIENTS WE NEED TO BAKE&  THE CAKE!/"
    stog.msg[2s] = "\\W* \\YMILK\\W... &* \\YSUGAR\\W...&* \\YEGGS\\W.../"
    stog.msg[3s] = "* ... OH MY^1!&* WAIT A MAGNIFICENT MOMENT^1!&* HOW COULD I FORGET!!!/"
    stog.msg[4s] = "\\W* WE'RE MISSING THE MOST&  \\YIMPORTANT INGREDIENT\\W!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 4s
0x00039C:
    if !(== self.con 4s) goto 0x0003CC
0x0003B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003D0
0x0003CC:
    push 0s
0x0003D0:
    if !pop goto 0x00040C
0x0003D4:
    pushenv 1195s 0x0003F0
0x0003DC:
    call (caster_stop[]:int32 self.bossa)
0x0003F0:
    popenv 0x0003DC
0x0003F4:
    [obj_cookshowevent].con = 20s
    self.con = 5s
0x00040C:
    exit
