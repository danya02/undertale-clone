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
    self.crumpet = 0s
    self.strumpet = self.bbox_top
    self.trumpet = self.bbox_left
    if !(== 1569.left 1s) goto 0x00021C
0x0000D0:
    if !(== self.movement 1s) goto 0x00021C
0x0000E4:
    self.turned = 1s
    if !(== self.xprevious (+ self.x 3s)) goto 0x00012C
0x000110:
    self.x = (- self.x 2s)
    goto 0x000144
0x00012C:
    self.x = (- self.x 3s)
0x000144:
    if !(!= self.moving 1s) goto 0x000164
0x000158:
    self.image_index = 1s
0x000164:
    self.moving = 1s
    self.image_speed = 0.2d
    if !(== 1569.up 1s) goto 0x0001AC
0x000198:
    push (== global.facing 2s)
    goto 0x0001B0
0x0001AC:
    push 0s
0x0001B0:
    if !pop goto 0x0001C0
0x0001B4:
    self.turned = 0s
0x0001C0:
    if !(== 1569.down 1s) goto 0x0001E8
0x0001D4:
    push (== global.facing 0s)
    goto 0x0001EC
0x0001E8:
    push 0s
0x0001EC:
    if !pop goto 0x0001FC
0x0001F0:
    self.turned = 0s
0x0001FC:
    if !(== self.turned 1s) goto 0x00021C
0x000210:
    global.facing = 3s
0x00021C:
    if !(== 1569.up 1s) goto 0x000340
0x000230:
    if !(== self.movement 1s) goto 0x000340
0x000244:
    self.turned = 1s
    self.y = (- self.y 3s)
    if !(!= self.moving 1s) goto 0x000288
0x00027C:
    self.image_index = 1s
0x000288:
    self.moving = 1s
    self.image_speed = 0.2d
    if !(== 1569.right 1s) goto 0x0002D0
0x0002BC:
    push (== global.facing 1s)
    goto 0x0002D4
0x0002D0:
    push 0s
0x0002D4:
    if !pop goto 0x0002E4
0x0002D8:
    self.turned = 0s
0x0002E4:
    if !(== 1569.left 1s) goto 0x00030C
0x0002F8:
    push (== global.facing 3s)
    goto 0x000310
0x00030C:
    push 0s
0x000310:
    if !pop goto 0x000320
0x000314:
    self.turned = 0s
0x000320:
    if !(== self.turned 1s) goto 0x000340
0x000334:
    global.facing = 2s
0x000340:
    if !(== 1569.right 1s) goto 0x0004BC
0x000354:
    if !(== self.movement 1s) goto 0x0004BC
0x000368:
    if !(== (keyboard_check[]:int32 (var 37s)) 0s) goto 0x0004BC
0x000384:
    self.turned = 1s
    if !(== self.xprevious (- self.x 3s)) goto 0x0003CC
0x0003B0:
    self.x = (+ self.x 2s)
    goto 0x0003E4
0x0003CC:
    self.x = (+ self.x 3s)
0x0003E4:
    self.moving = 1s
    self.image_speed = 0.2d
    if !(!= self.moving 1s) goto 0x000424
0x000418:
    self.image_index = 1s
0x000424:
    if !(== 1569.up 1s) goto 0x00044C
0x000438:
    push (== global.facing 2s)
    goto 0x000450
0x00044C:
    push 0s
0x000450:
    if !pop goto 0x000460
0x000454:
    self.turned = 0s
0x000460:
    if !(== 1569.down 1s) goto 0x000488
0x000474:
    push (== global.facing 0s)
    goto 0x00048C
0x000488:
    push 0s
0x00048C:
    if !pop goto 0x00049C
0x000490:
    self.turned = 0s
0x00049C:
    if !(== self.turned 1s) goto 0x0004BC
0x0004B0:
    global.facing = 1s
0x0004BC:
    if !(== 1569.down 1s) goto 0x0005FC
0x0004D0:
    if !(== self.movement 1s) goto 0x0005FC
0x0004E4:
    if !(== (keyboard_check[]:int32 (var 38s)) 0s) goto 0x0005FC
0x000500:
    self.turned = 1s
    self.y = (+ self.y 3s)
    if !(!= self.moving 1s) goto 0x000544
0x000538:
    self.image_index = 1s
0x000544:
    self.moving = 1s
    self.image_speed = 0.2d
    if !(== 1569.right 1s) goto 0x00058C
0x000578:
    push (== global.facing 1s)
    goto 0x000590
0x00058C:
    push 0s
0x000590:
    if !pop goto 0x0005A0
0x000594:
    self.turned = 0s
0x0005A0:
    if !(== 1569.left 1s) goto 0x0005C8
0x0005B4:
    push (== global.facing 3s)
    goto 0x0005CC
0x0005C8:
    push 0s
0x0005CC:
    if !pop goto 0x0005DC
0x0005D0:
    self.turned = 0s
0x0005DC:
    if !(== self.turned 1s) goto 0x0005FC
0x0005F0:
    global.facing = 0s
0x0005FC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000628
0x000614:
    call (event_user[]:int32 (var 0s))
0x000628:
    if !(< self.x 0s) goto 0x000648
0x00063C:
    self.x = 0s
0x000648:
    if !(> self.x (- self.room_width self.sprite_width)) goto 0x000688
0x00066C:
    self.x = (- self.room_width self.sprite_width)
0x000688:
    if !(< self.y 0s) goto 0x0006A8
0x00069C:
    self.y = 0s
0x0006A8:
    if !(> self.y (- self.room_height self.sprite_height)) goto 0x0006E8
0x0006CC:
    self.y = (- self.room_height self.sprite_height)
0x0006E8:
    self.depth = (- 50000 (* self.y 10s))
0x00070C:
    exit
