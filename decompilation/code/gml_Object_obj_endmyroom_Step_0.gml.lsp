0x000000:
    self.timer = (+ self.timer 1s)
    if !(== self.timer 60s) goto 0x000228
0x00002C:
    call (caster_play[]:int32 (var 1s) (var 0.6d) self.dooropen)
    self.image_index = 1s
    self.tor = (instance_create[]:int32 (var 1363s) (var 86s) (var 34s))
    push 2462s
    stog.sprite_index* = (int32 self.tor)
    push 0s
    stog.image_speed* = (int32 self.tor)
    push 1s
    stog.visible* = (int32 self.tor)
    push 1000s
    stog.depth* = (int32 self.tor)
    self.bl = (merge_color[]:int32 (var 0.5d) (var 8388608) (var 8421504))
    self.bl2 = (merge_color[]:int32 (var 0.4d) (var 16777215) self.bl)
    push self.bl2
    stog.image_blend* = (int32 self.tor)
    self.pie = (instance_create[]:int32 (var 1363s) (+ (int32 self.tor):y 24s) (+ (int32 self.tor):x 18s))
    push 1162s
    stog.sprite_index* = (int32 self.pie)
    push self.bl2
    stog.image_blend* = (int32 self.pie)
    push 1s
    stog.visible* = (int32 self.pie)
    push 999s
    stog.depth* = (int32 self.pie)
0x000228:
    if !(== self.timer 150s) goto 0x00028C
0x00023C:
    push 0.1d
    stog.image_speed* = (int32 self.tor)
    push 1s
    stog.hspeed* = (int32 self.tor)
    push 1s
    stog.hspeed* = (int32 self.pie)
0x00028C:
    if !(== self.timer 240s) goto 0x000300
0x0002A0:
    push 0s
    stog.image_index* = (int32 self.tor)
    push 0s
    stog.image_speed* = (int32 self.tor)
    push 0s
    stog.hspeed* = (int32 self.tor)
    push 0s
    stog.hspeed* = (int32 self.pie)
0x000300:
    if !(== self.timer 290s) goto 0x00038C
0x000314:
    push 2463s
    stog.sprite_index* = (int32 self.tor)
    push (+ (int32 self.tor):x 28s)
    stog.x* = (int32 self.pie)
    push (+ (int32 self.tor):y 40s)
    stog.y* = (int32 self.pie)
0x00038C:
    if !(== self.timer 330s) goto 0x0003B8
0x0003A0:
    push 1107s
    stog.sprite_index* = (int32 self.tor)
0x0003B8:
    if !(== self.timer 390s) goto 0x000404
0x0003CC:
    push -1s
    stog.hspeed* = (int32 self.tor)
    push 0.1d
    stog.image_speed* = (int32 self.tor)
0x000404:
    if !(== self.timer 410s) goto 0x000460
0x000418:
    push 0s
    stog.hspeed* = (int32 self.tor)
    push 0s
    stog.image_speed* = (int32 self.tor)
    push 0s
    stog.image_index* = (int32 self.tor)
0x000460:
    if !(== self.timer 460s) goto 0x0004C4
0x000474:
    push -1s
    stog.hspeed* = (int32 self.tor)
    push 0.1d
    stog.image_speed* = (int32 self.tor)
    push 1108s
    stog.sprite_index* = (int32 self.tor)
0x0004C4:
    if !(== self.timer 530s) goto 0x000520
0x0004D8:
    push 0s
    stog.hspeed* = (int32 self.tor)
    push 0s
    stog.image_speed* = (int32 self.tor)
    push 0s
    stog.image_index* = (int32 self.tor)
0x000520:
    if !(== self.timer 560s) goto 0x00054C
0x000534:
    push 1107s
    stog.sprite_index* = (int32 self.tor)
0x00054C:
    if !(== self.timer 640s) goto 0x000574
0x000560:
    push (== self.death 0s)
    goto 0x000578
0x000574:
    push 0s
0x000578:
    if !pop goto 0x0005C8
0x00057C:
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.doorclose)
    call (caster_stop[]:int32 self.crickets)
    self.depth = -9000s
0x0005C8:
    if !(== self.timer 760s) goto 0x0005F0
0x0005DC:
    push (== self.death 0s)
    goto 0x0005F4
0x0005F0:
    push 0s
0x0005F4:
    if !pop goto 0x00060C
0x0005F8:
    call (room_goto[]:int32 (var 286s))
0x00060C:
    if !(== self.timer 640s) goto 0x000634
0x000620:
    push (== self.death 1s)
    goto 0x000638
0x000634:
    push 0s
0x000638:
    if !pop goto 0x0006A0
0x00063C:
    push 0s
    stog.visible* = (int32 self.tor)
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.doorclose)
    call (caster_stop[]:int32 self.crickets)
    self.image_index = 0s
0x0006A0:
    if !(== self.timer 760s) goto 0x0006C8
0x0006B4:
    push (== self.death 1s)
    goto 0x0006CC
0x0006C8:
    push 0s
0x0006CC:
    if !pop goto 0x000784
0x0006D0:
    self.charaface = (scr_marker[]:int32 (var 652s) (var 101s) (var 228s))
    self.eyeflash = (scr_marker[]:int32 (var 632s) (var 109s) (var 234s))
    push -2s
    stog.depth* = (int32 self.eyeflash)
    push 0.25d
    stog.image_speed* = (int32 self.eyeflash)
    call (caster_play[]:int32 (var 0.5d) (var 1s) (var 327s))
0x000784:
    if !(== self.death 1s) goto 0x0007AC
0x000798:
    push (>= self.timer 760s)
    goto 0x0007B0
0x0007AC:
    push 0s
0x0007B0:
    if !pop goto 0x00080C
0x0007B4:
    if !(bool (instance_exists[]:int32 self.eyeflash)) goto 0x00080C
0x0007CC:
    if !(>= (int32 self.eyeflash):image_index 5s) goto 0x00080C
0x0007EC:
    pushenv (int32 self.eyeflash) 0x000808
0x0007FC:
    call (instance_destroy[]:int32 )
0x000808:
    popenv 0x0007FC
0x00080C:
    if !(== self.death 1s) goto 0x000834
0x000820:
    push (== self.timer 850s)
    goto 0x000838
0x000834:
    push 0s
0x000838:
    if !pop goto 0x000874
0x00083C:
    self.depth = -9999s
    call (caster_play[]:int32 (var 0.75d) (var 1s) (var 349s))
0x000874:
    if !(== self.death 1s) goto 0x00089C
0x000888:
    push (== self.timer 1150s)
    goto 0x0008A0
0x00089C:
    push 0s
0x0008A0:
    if !pop goto 0x0008CC
0x0008A4:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 286s))
0x0008CC:
    exit
