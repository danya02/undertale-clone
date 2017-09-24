0x000000:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x00002C
0x000018:
    push (== self.debuggo 1s)
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x0003C0
0x000034:
    self.angle = (- self.angle 8s)
    if !(bool (keyboard_check[]:int32 (var 16s))) goto 0x00007C
0x000064:
    self.angle = (- self.angle 16s)
0x00007C:
    if !(bool (keyboard_check[]:int32 (var 13s))) goto 0x0003C0
0x000094:
    self.simg = (instance_create[]:int32 (var 486s) self.y self.x)
    push self.x
    stog.originx* = (int32 self.simg)
    push self.y
    stog.originy* = (int32 self.simg)
    push (+ self.x (lengthdir_x[]:int32 (+ self.angle 8s) (var 320s)))
    stog.outx* = (int32 self.simg)
    push (+ self.y (lengthdir_y[]:int32 (+ self.angle 8s) (var 320s)))
    stog.outy* = (int32 self.simg)
    push (+ self.x (lengthdir_x[]:int32 (- self.angle 40s) (var 320s)))
    stog.outx2* = (int32 self.simg)
    push (+ self.y (lengthdir_y[]:int32 (- self.angle 40s) (var 320s)))
    stog.outy2* = (int32 self.simg)
    push self.color
    stog.color* = (int32 self.simg)
    self.simg2 = (instance_create[]:int32 (var 487s) self.y self.x)
    push (- self.angle 16s)
    stog.angle* = (int32 self.simg2)
    stog.alpha* = (- (int32 self.simg2):alpha 0.017d)
    push self.color
    stog.color* = (int32 self.simg2)
    self.simg3 = (instance_create[]:int32 (var 487s) self.y self.x)
    push (- self.angle 40s)
    stog.angle* = (int32 self.simg3)
    push self.color
    stog.color* = (int32 self.simg3)
    self.simg4 = (instance_create[]:int32 (var 487s) self.y self.x)
    push (+ self.angle 8s)
    stog.angle* = (int32 self.simg4)
    stog.alpha* = (- (int32 self.simg4):alpha 0.034d)
    push self.color
    stog.color* = (int32 self.simg4)
    self.angle = (- self.angle 40s)
0x0003C0:
    push (int32 self.simg2)
    push (int32 self.simg4)
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x0003EC
0x0003D8:
    push (== self.debuggo 1s)
    goto 0x0003F0
0x0003EC:
    push 0s
0x0003F0:
    if !pop goto 0x000780
0x0003F4:
    self.angle = (+ self.angle 8s)
    if !(bool (keyboard_check[]:int32 (var 16s))) goto 0x00043C
0x000424:
    self.angle = (+ self.angle 16s)
0x00043C:
    if !(bool (keyboard_check[]:int32 (var 13s))) goto 0x000780
0x000454:
    self.simg = (instance_create[]:int32 (var 486s) self.y self.x)
    push self.x
    stog.originx* = (int32 self.simg)
    push self.y
    stog.originy* = (int32 self.simg)
    push (+ self.x (lengthdir_x[]:int32 (- self.angle 8s) (var 320s)))
    stog.outx* = (int32 self.simg)
    push (+ self.y (lengthdir_y[]:int32 (- self.angle 8s) (var 320s)))
    stog.outy* = (int32 self.simg)
    push (+ self.x (lengthdir_x[]:int32 (+ self.angle 40s) (var 320s)))
    stog.outx2* = (int32 self.simg)
    push (+ self.y (lengthdir_y[]:int32 (+ self.angle 40s) (var 320s)))
    stog.outy2* = (int32 self.simg)
    push self.color
    stog.color* = (int32 self.simg)
    self.simg2 = (instance_create[]:int32 (var 487s) self.y self.x)
    push (+ self.angle 16s)
    stog.angle* = (int32 self.simg2)
    stog.alpha* = (- (int32 self.simg2):alpha 0.017d)
    push self.color
    stog.color* = (int32 self.simg2)
    self.simg3 = (instance_create[]:int32 (var 487s) self.y self.x)
    push (+ self.angle 40s)
    stog.angle* = (int32 self.simg3)
    push self.color
    stog.color* = (int32 self.simg3)
    self.simg4 = (instance_create[]:int32 (var 487s) self.y self.x)
    push (- self.angle 8s)
    stog.angle* = (int32 self.simg4)
    stog.alpha* = (- (int32 self.simg4):alpha 0.034d)
    push self.color
    stog.color* = (int32 self.simg4)
    self.angle = (+ self.angle 40s)
0x000780:
    push (int32 self.simg2)
    push (int32 self.simg4)
    self.siner = (+ self.siner 1s)
    self.y = (+ self.y (* (sin[]:int32 (/ self.siner (double 15s))) 0.3d))
    self.angle = (+ self.angle (* (sin[]:int32 (/ self.siner (double 15s))) 0.02d))
    self.xhand1 = (lengthdir_x[]:int32 self.angle (var 55s))
    self.yhand1 = (lengthdir_y[]:int32 self.angle (var 55s))
    self.rdistx = (+ self.x (* self.xhand1 2s))
    self.rdisty = (+ self.y (* self.yhand1 2s))
    if !(== self.armtest 1s) goto 0x000CC0
0x0008B4:
    if !(bool (instance_exists[]:int32 (var 488s))) goto 0x000CC0
0x0008CC:
    push 488s
    self.point1y = (+ (+ 5s:party 64s) 488.y)
    push 488s
    self.point1x = (+ (+ 5s:partx 14s) 488.x)
    self.armlength = (point_distance[]:int32 (- self.y self.yhand1) (- self.x self.xhand1) self.point1y self.point1x)
    self.armangle = (point_direction[]:int32 (- self.y self.yhand1) (- self.x self.xhand1) self.point1y self.point1x)
    self.armsize = (/ self.armlength (double 40s))
    if !(< self.armsize 0.35d) goto 0x0009F8
0x0009EC:
    self.armsize = 0s
0x0009F8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.armangle (var 2s) (* self.armsize 2s) self.point1y self.point1x (var 0s) (var 609s))
    push 488s
    self.point1y = (+ (+ 4s:party 64s) 488.y)
    push 488s
    self.point1x = (+ (+ 4s:partx 34s) 488.x)
    self.armlength = (point_distance[]:int32 self.rdisty self.rdistx self.point1y self.point1x)
    if !(> self.armlength 100s) goto 0x000BC0
0x000AF4:
    self.armoff = (/ (- self.armlength 100s) (double 2s))
    self.rdistx = (+ self.x (* (lengthdir_x[]:int32 self.angle (- 55s self.armoff)) 2s))
    self.rdisty = (+ self.y (* (lengthdir_y[]:int32 self.angle (- 55s self.armoff)) 2s))
    self.armlength = (point_distance[]:int32 self.rdisty self.rdistx self.point1y self.point1x)
0x000BC0:
    self.armangle = (point_direction[]:int32 self.rdisty self.rdistx self.point1y self.point1x)
    if !(> self.armangle 100s) goto 0x000C1C
0x000C04:
    self.point1y = (- self.point1y 12s)
0x000C1C:
    self.armsize = (/ self.armlength (double 40s))
    if !(< self.armsize 0.6d) goto 0x000C60
0x000C54:
    self.armsize = 0s
0x000C60:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.armangle (var 2s) (* self.armsize 2s) self.point1y self.point1x (var 0s) (var 609s))
0x000CC0:
    if !(bool (keyboard_check[]:int32 (var 49s))) goto 0x000CEC
0x000CD8:
    push (== self.debuggo 1s)
    goto 0x000CF0
0x000CEC:
    push 0s
0x000CF0:
    if !pop goto 0x000D00
0x000CF4:
    self.color = 255s
0x000D00:
    if !(bool (keyboard_check[]:int32 (var 50s))) goto 0x000D2C
0x000D18:
    push (== self.debuggo 1s)
    goto 0x000D30
0x000D2C:
    push 0s
0x000D30:
    if !pop goto 0x000D44
0x000D34:
    self.color = 4235519
0x000D44:
    if !(bool (keyboard_check[]:int32 (var 51s))) goto 0x000D70
0x000D5C:
    push (== self.debuggo 1s)
    goto 0x000D74
0x000D70:
    push 0s
0x000D74:
    if !pop goto 0x000DA0
0x000D78:
    self.color = (make_color_rgb[]:int32 (var 255s) (var 130s) (var 90s))
0x000DA0:
    call (draw_sprite_ext[]:int32 (var 1s) self.color self.angle (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.angle (var 2s) (var 2s) self.rdisty self.rdistx self.image_index (var 618s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.angle (var 2s) (var 2s) (- self.y self.yhand1) (- self.x self.xhand1) self.image_index (var 619s))
0x000EBC:
    exit
