0x000000:
    if !(== self.conversation 3s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 862s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x0001F4
0x000034:
    if !(== 862.path_position 1s) goto 0x0001F4
0x000048:
    global.currentsong = (caster_load[]:int32 (var "music/toriel.ogg"))
    call (caster_loop[]:int32 (var 0.86d) (var 0.7d) global.currentsong)
    pushenv (int32 self.tor) 0x0000B4
0x0000A8:
    call (path_end[]:int32 )
0x0000B4:
    popenv 0x0000A8
0x0000B8:
    pushenv (int32 self.tor) 0x0000D4
0x0000C8:
    self.direction = 180s
0x0000D4:
    popenv 0x0000C8
0x0000D8:
    pushenv (int32 self.tor) 0x0000F4
0x0000E8:
    self.facing = 3s
0x0000F4:
    popenv 0x0000E8
0x0000F8:
    pushenv (int32 self.tor) 0x000114
0x000108:
    self.sprite_index = 1110s
0x000114:
    popenv 0x000108
0x000118:
    global.msc = 220s
    global.typer = 4s
    global.facechoice = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 4s
    stog.phone[0s] = 201s
    stog.phone[1s] = 203s
    stog.phone[2s] = 204s
    stog.phone[3s] = 205s
    stog.menuchoice[2s] = 1s
    call (instance_create[]:int32 (var 1339s) (var 100s) (var 160s))
0x0001F4:
    if !(== self.conversation 4s) goto 0x000224
0x000208:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x0002BC
0x00022C:
    call (instance_create[]:int32 (var 884s) (var 0s) (var 0s))
    pushenv (int32 self.tor) 0x00028C
0x000260:
    call (path_start[]:int32 (var 0s) (var 0s) (var 3s) (var 41s))
0x00028C:
    popenv 0x000260
0x000290:
    call (script_execute[]:int32 (var 59s))
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0002BC:
    exit
