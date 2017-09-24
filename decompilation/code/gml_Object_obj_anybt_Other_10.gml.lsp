0x000000:
    if !(== self.type 0s) goto 0x000094
0x000014:
    if !(bool (instance_exists[]:int32 (var 493s))) goto 0x000038
0x00002C:
    [obj_asgore_lastcutscene].con = 45s
0x000038:
    [obj_asgore_lastcutscene].hearts = 0s
    call (snd_play[]:int32 (var 111s))
    [obj_heart].x = -999s
    pushenv 748s 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    popenv 0x00006C
0x00007C:
    pushenv 756s 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    popenv 0x000084
0x000094:
    if !(== self.type 1s) goto 0x000128
0x0000A8:
    if !(bool (instance_exists[]:int32 (var 493s))) goto 0x0000CC
0x0000C0:
    [obj_asgore_lastcutscene].con = 15s
0x0000CC:
    [obj_asgore_lastcutscene].hearts = 1s
    call (snd_play[]:int32 (var 111s))
    [obj_heart].x = -999s
    pushenv 748s 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    popenv 0x000100
0x000110:
    pushenv 756s 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    popenv 0x000118
0x000128:
    if !(== self.type 2s) goto 0x000258
0x00013C:
    call (snd_play[]:int32 (var 111s))
    call (caster_stop[]:int32 (var -3s))
    call (snd_play[]:int32 (var 44s))
    self.strike = (scr_marker[]:int32 (var 757s) (- 522.y 20s) (+ 522.x 25s))
    push 1s
    stog.image_xscale* = (int32 self.strike)
    push 1s
    stog.image_yscale* = (int32 self.strike)
    push 0.25d
    stog.image_speed* = (int32 self.strike)
    push 22s
    push 522s
    stog.alarm[] = 8s
    push 60s
    push 522s
    stog.alarm[] = 7s
    pushenv 756s 0x00023C
0x000230:
    call (instance_destroy[]:int32 )
0x00023C:
    popenv 0x000230
0x000240:
    pushenv 748s 0x000254
0x000248:
    call (instance_destroy[]:int32 )
0x000254:
    popenv 0x000248
0x000258:
    if !(== self.type 3s) goto 0x0002D0
0x00026C:
    call (snd_play[]:int32 (var 111s))
    pushenv 522s 0x00029C
0x000288:
    call (event_user[]:int32 (var 1s))
0x00029C:
    popenv 0x000288
0x0002A0:
    pushenv 756s 0x0002B4
0x0002A8:
    call (instance_destroy[]:int32 )
0x0002B4:
    popenv 0x0002A8
0x0002B8:
    pushenv 748s 0x0002CC
0x0002C0:
    call (instance_destroy[]:int32 )
0x0002CC:
    popenv 0x0002C0
0x0002D0:
    exit
