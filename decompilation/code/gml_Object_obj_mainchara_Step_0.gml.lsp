0x000000:
    if !(== global.facing 0s) goto 0x000024
0x000014:
    self.sprite_index = self.dsprite
0x000024:
    if !(== global.facing 1s) goto 0x000048
0x000038:
    self.sprite_index = self.rsprite
0x000048:
    if !(== global.facing 2s) goto 0x00006C
0x00005C:
    self.sprite_index = self.usprite
0x00006C:
    if !(== global.facing 3s) goto 0x000090
0x000080:
    self.sprite_index = self.lsprite
0x000090:
    if !(== (collision_point[]:int32 (var 1s) (var 0s) (var 820s) (- self.bbox_top 3s) (- self.bbox_left 3s)) -4s) goto 0x0000EC
0x0000DC:
    self.crumpet = 1s
    goto 0x0000F8
0x0000EC:
    self.crumpet = 2s
0x0000F8:
    self.strumpet = self.bbox_top
    self.trumpet = self.bbox_left
    if !(== global.inbattle 1s) goto 0x00024C
0x00012C:
    push -5s
    if !(== 15s:flag 0s) goto 0x000180
0x000148:
    call (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
    call (caster_resume[]:int32 global.currentsong)
0x000180:
    self.room_persistent = 0s
    global.inbattle = 0s
    if !(== global.specialbattle 0s) goto 0x0001B8
0x0001AC:
    global.interact = 0s
0x0001B8:
    self.depth = 100s
    push -5s
    if !(!= 200s:flag 0s) goto 0x00024C
0x0001E0:
    push -5s
    if !(!= 201s:flag global.kills) goto 0x00024C
0x000200:
    push (int32 200s:flag[Altar.Decomp.Expression[]]):flag
    stog.flag[] = (+ global.kills (- -5s 201s:flag))
0x00024C:
    push (int32 200s:flag[Altar.Decomp.Expression[]])
    if !(== 1569.left 1s) goto 0x0003F0
0x000260:
    if !(== self.movement 1s) goto 0x0003F0
0x000274:
    self.turned = 1s
    if !(== self.xprevious (+ self.x 3s)) goto 0x0002BC
0x0002A0:
    self.x = (- self.x 2s)
    goto 0x0002D4
0x0002BC:
    self.x = (- self.x 3s)
0x0002D4:
    if !(!= self.moving 1s) goto 0x0002F4
0x0002E8:
    self.image_index = 1s
0x0002F4:
    self.moving = 1s
    if !(== global.debug 1s) goto 0x000344
0x000314:
    if !(bool (keyboard_check[]:int32 (var 8s))) goto 0x000344
0x00032C:
    self.x = (- self.x 5s)
0x000344:
    self.image_speed = 0.2d
    if !(== 1569.up 1s) goto 0x000380
0x00036C:
    push (== global.facing 2s)
    goto 0x000384
0x000380:
    push 0s
0x000384:
    if !pop goto 0x000394
0x000388:
    self.turned = 0s
0x000394:
    if !(== 1569.down 1s) goto 0x0003BC
0x0003A8:
    push (== global.facing 0s)
    goto 0x0003C0
0x0003BC:
    push 0s
0x0003C0:
    if !pop goto 0x0003D0
0x0003C4:
    self.turned = 0s
0x0003D0:
    if !(== self.turned 1s) goto 0x0003F0
0x0003E4:
    global.facing = 3s
0x0003F0:
    if !(== 1569.up 1s) goto 0x000558
0x000404:
    if !(== self.movement 1s) goto 0x000558
0x000418:
    self.turned = 1s
    self.y = (- self.y 3s)
    if !(== global.debug 1s) goto 0x000480
0x000450:
    if !(bool (keyboard_check[]:int32 (var 8s))) goto 0x000480
0x000468:
    self.y = (- self.y 5s)
0x000480:
    if !(!= self.moving 1s) goto 0x0004A0
0x000494:
    self.image_index = 1s
0x0004A0:
    self.moving = 1s
    self.image_speed = 0.2d
    if !(== 1569.right 1s) goto 0x0004E8
0x0004D4:
    push (== global.facing 1s)
    goto 0x0004EC
0x0004E8:
    push 0s
0x0004EC:
    if !pop goto 0x0004FC
0x0004F0:
    self.turned = 0s
0x0004FC:
    if !(== 1569.left 1s) goto 0x000524
0x000510:
    push (== global.facing 3s)
    goto 0x000528
0x000524:
    push 0s
0x000528:
    if !pop goto 0x000538
0x00052C:
    self.turned = 0s
0x000538:
    if !(== self.turned 1s) goto 0x000558
0x00054C:
    global.facing = 2s
0x000558:
    if !(== 1569.right 1s) goto 0x000718
0x00056C:
    if !(== self.movement 1s) goto 0x000718
0x000580:
    if !(== (keyboard_check[]:int32 (var 37s)) 0s) goto 0x000718
0x00059C:
    self.turned = 1s
    if !(== self.xprevious (- self.x 3s)) goto 0x0005E4
0x0005C8:
    self.x = (+ self.x 2s)
    goto 0x0005FC
0x0005E4:
    self.x = (+ self.x 3s)
0x0005FC:
    if !(== global.debug 1s) goto 0x000640
0x000610:
    if !(bool (keyboard_check[]:int32 (var 8s))) goto 0x000640
0x000628:
    self.x = (+ self.x 5s)
0x000640:
    self.moving = 1s
    self.image_speed = 0.2d
    if !(!= self.moving 1s) goto 0x000680
0x000674:
    self.image_index = 1s
0x000680:
    if !(== 1569.up 1s) goto 0x0006A8
0x000694:
    push (== global.facing 2s)
    goto 0x0006AC
0x0006A8:
    push 0s
0x0006AC:
    if !pop goto 0x0006BC
0x0006B0:
    self.turned = 0s
0x0006BC:
    if !(== 1569.down 1s) goto 0x0006E4
0x0006D0:
    push (== global.facing 0s)
    goto 0x0006E8
0x0006E4:
    push 0s
0x0006E8:
    if !pop goto 0x0006F8
0x0006EC:
    self.turned = 0s
0x0006F8:
    if !(== self.turned 1s) goto 0x000718
0x00070C:
    global.facing = 1s
0x000718:
    if !(== 1569.down 1s) goto 0x00089C
0x00072C:
    if !(== self.movement 1s) goto 0x00089C
0x000740:
    if !(== (keyboard_check[]:int32 (var 38s)) 0s) goto 0x00089C
0x00075C:
    self.turned = 1s
    self.y = (+ self.y 3s)
    if !(== global.debug 1s) goto 0x0007C4
0x000794:
    if !(bool (keyboard_check[]:int32 (var 8s))) goto 0x0007C4
0x0007AC:
    self.y = (+ self.y 5s)
0x0007C4:
    if !(!= self.moving 1s) goto 0x0007E4
0x0007D8:
    self.image_index = 1s
0x0007E4:
    self.moving = 1s
    self.image_speed = 0.2d
    if !(== 1569.right 1s) goto 0x00082C
0x000818:
    push (== global.facing 1s)
    goto 0x000830
0x00082C:
    push 0s
0x000830:
    if !pop goto 0x000840
0x000834:
    self.turned = 0s
0x000840:
    if !(== 1569.left 1s) goto 0x000868
0x000854:
    push (== global.facing 3s)
    goto 0x00086C
0x000868:
    push 0s
0x00086C:
    if !pop goto 0x00087C
0x000870:
    self.turned = 0s
0x00087C:
    if !(== self.turned 1s) goto 0x00089C
0x000890:
    global.facing = 0s
0x00089C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0008C8
0x0008B4:
    call (event_user[]:int32 (var 0s))
0x0008C8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 2s))) goto 0x0008F4
0x0008E0:
    call (event_user[]:int32 (var 2s))
0x0008F4:
    pushenv (int32 (collision_rectangle[]:int32 (var 0s) (var 0s) (var 793s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) 0x000950
0x00093C:
    call (event_user[]:int32 (var 9s))
0x000950:
    popenv 0x00093C
0x000954:
    if !(== (instance_exists[]:int32 (var 142s)) 0s) goto 0x0009E0
0x000970:
    call (scr_depth[]:int32 )
    push -5s
    if !(== 85s:flag 1s) goto 0x0009AC
0x000998:
    push (== self.dsprite 1016s)
    goto 0x0009B0
0x0009AC:
    push 0s
0x0009B0:
    if !pop goto 0x0009E0
0x0009B4:
    self.depth = (- 50000 (+ (* self.y 10s) 300s))
0x0009E0:
    exit
