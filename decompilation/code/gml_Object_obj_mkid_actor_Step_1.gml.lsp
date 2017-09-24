0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    if !(== self.follow 0s) goto 0x000040
0x000034:
    call (scr_npc_anim[]:int32 )
0x000040:
    if !(== self.follow 1s) goto 0x000148
0x000054:
    self.tmp_idealy = (+ 1570.y 8s)
    if !(== self.room 106s) goto 0x000094
0x000080:
    push (>= 1570.y 142s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000B4
0x00009C:
    self.tmp_idealy = (- 1570.y 2s)
0x0000B4:
    if !(== self.room 107s) goto 0x0000DC
0x0000C8:
    push (>= 1570.y 906s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000FC
0x0000E4:
    self.tmp_idealy = (- 1570.y 2s)
0x0000FC:
    call (move_towards_point[]:int32 (var 2s) self.tmp_idealy (- 1570.x 6s))
    self.image_speed = 0.25d
    self.follow = 2s
0x000148:
    if !(== self.follow 2s) goto 0x0001BC
0x00015C:
    if !(bool (collision_point[]:int32 (var 0s) (var 0s) self.object_index (+ 1570.y 28s) (- 1570.x 6s))) goto 0x0001BC
0x0001A4:
    self.speed = 0s
    self.follow = 3s
0x0001BC:
    if !(== self.follow 2.1d) goto 0x0003C8
0x0001D8:
    self.image_speed = 0.25d
    self.x = (- self.x 4s)
    self.done = 0s
    if (== self.sprite_index self.rsprite) goto 0x000240
0x000228:
    push (== self.sprite_index self.usprite)
    goto 0x000244
0x000240:
    push 1s
0x000244:
    if !pop goto 0x00027C
0x000248:
    call (move_towards_point[]:int32 (var 4s) (+ 1570.y 8s) (- 1570.x 2s))
0x00027C:
    if !(== self.sprite_index self.lsprite) goto 0x0002C8
0x000294:
    call (move_towards_point[]:int32 (var 4s) (+ 1570.y 8s) (+ 1570.x 6s))
0x0002C8:
    if !(== self.sprite_index self.dsprite) goto 0x00030C
0x0002E0:
    call (move_towards_point[]:int32 (var 4s) (- 1570.y 12s) 1570.x)
0x00030C:
    call (move_towards_point[]:int32 (var 4s) 1570.y 1570.x)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) self.object_index (+ 1570.bbox_bottom 4s) (+ 1570.bbox_right 4s) (- 1570.bbox_top 4s) (- 1570.bbox_left 6s))) goto 0x0003B0
0x000398:
    self.speed = 0s
    self.follow = 3s
0x0003B0:
    self.x = (+ self.x 4s)
0x0003C8:
    self.alcovecheck = 0s
    if !(== self.room 106s) goto 0x0003FC
0x0003E8:
    push (< 1570.y 100s)
    goto 0x000400
0x0003FC:
    push 0s
0x000400:
    if !pop goto 0x000438
0x000404:
    self.alcovecheck = 1s
    self.image_speed = 0s
    self.image_index = 0s
    self.sprite_index = self.usprite
0x000438:
    if !(== self.room 106s) goto 0x000460
0x00044C:
    push (> self.y 156s)
    goto 0x000464
0x000460:
    push 0s
0x000464:
    if !pop goto 0x0004A8
0x000468:
    if !(> 1570.x 1518s) goto 0x0004A8
0x00047C:
    if !(< self.x 1520s) goto 0x0004A8
0x000490:
    self.x = (+ self.x 3s)
0x0004A8:
    if !(== self.follow 3s) goto 0x0004D0
0x0004BC:
    push (== self.alcovecheck 0s)
    goto 0x0004D4
0x0004D0:
    push 0s
0x0004D4:
    if !pop goto 0x0005BC
0x0004D8:
    if !(== 1570.moving 1s) goto 0x000594
0x0004EC:
    if !(> (distance_to_object[]:int32 (var 1570s)) 12s) goto 0x000528
0x000508:
    stog.alarm[3s] = 3s
    self.follow = 4s
0x000528:
    if (> (distance_to_object[]:int32 (var 1570s)) 4s) goto 0x000560
0x000544:
    push (< (distance_to_object[]:int32 (var 1570s)) 0s)
    goto 0x000564
0x000560:
    push 1s
0x000564:
    if !pop goto 0x000590
0x000568:
    if !(< (distance_to_object[]:int32 (var 1570s)) 10s) goto 0x000590
0x000584:
    self.closemove = 1s
0x000590:
    goto 0x0005AC
0x000594:
    self.image_speed = 0s
    self.image_index = 0s
0x0005AC:
    self.facing2 = global.facing
0x0005BC:
    if !(== self.follow 5s) goto 0x000604
0x0005D0:
    call (scr_npc_watch[]:int32 (var 1s))
    self.follow = 6s
    stog.alarm[3s] = 3s
0x000604:
    if !(== self.follow 7s) goto 0x00062C
0x000618:
    self.follow = 2.1d
0x00062C:
    if !(== self.follow 8s) goto 0x000650
0x000640:
    self.sprite_index = self.rtsprite
0x000650:
    if !(== self.follow 9s) goto 0x0006C0
0x000664:
    if !(== global.interact 0s) goto 0x0006C0
0x000678:
    global.interact = 1s
    call (scr_npc_watch[]:int32 (var 0s))
    stog.alarm[3s] = 3s
    self.follow = 9.1d
0x0006C0:
    if !(== self.follow 10.1d) goto 0x0007D8
0x0006DC:
    global.facechoice = 0s
    stog.msg[0s] = "* So^1, one time./"
    stog.msg[1s] = "* We had a school project where&  we had to take care of&  a flower./"
    stog.msg[2s] = "* The king ^1- we had to call him&  \"Mr. Dreemurr\" ^1- volunteered&  to donate his own flowers./"
    stog.msg[3s] = "* He ended up coming to school&  and teaching the class about&  responsibility and stuff./"
    stog.msg[4s] = "* That got me thinking.../"
    stog.msg[5s] = "* YO^1!&* How COOL would it be if&  UNDYNE came to school!?/"
    stog.msg[6s] = "* She could beat up ALL&  the teachers!!/%%"
    global.typer = 5s
    global.msc = 0s
    call (instance_create[]:int32 (var 779s) self.y self.x)
    self.follow = 10s
0x0007D8:
    if !(== self.follow 10s) goto 0x000808
0x0007EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00080C
0x000808:
    push 0s
0x00080C:
    if !pop goto 0x000840
0x000810:
    self.sprite_index = self.dsprite
    global.interact = 0s
    self.follow = 2.1d
0x000840:
    if !(== self.follow 99s) goto 0x000984
0x000854:
    if !(== 1570.moving 1s) goto 0x00096C
0x000868:
    self.x = (+ self.x (- 1570.x 1570.xprevious))
    self.y = (+ self.y (- 1570.y 1570.yprevious))
    self.facing = global.facing
    self.image_speed = 1570.image_speed
    if !(== self.facing 0s) goto 0x0008FC
0x0008EC:
    self.sprite_index = self.dsprite
0x0008FC:
    if !(== self.facing 1s) goto 0x000920
0x000910:
    self.sprite_index = self.rsprite
0x000920:
    if !(== self.facing 2s) goto 0x000944
0x000934:
    self.sprite_index = self.usprite
0x000944:
    if !(== self.facing 3s) goto 0x000968
0x000958:
    self.sprite_index = self.lsprite
0x000968:
    goto 0x000984
0x00096C:
    self.image_speed = 0s
    self.image_index = 0s
0x000984:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0009BC
0x00099C:
    self.xfer = 1570.x
    self.yfer = 1570.y
0x0009BC:
    exit
