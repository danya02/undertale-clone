0x000000:
    self.deg = (degtorad[]:int32 self.rot)
    self.x1 = (+ self.x (* self.r (cos[]:int32 self.deg)))
    self.y1 = (- self.y (* self.r (sin[]:int32 self.deg)))
    self.x2 = self.x
    self.y2 = self.y
    if !(< self.image_alpha 1s) goto 0x0000CC
0x0000AC:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x0000CC:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.rot (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(bool (instance_exists[]:int32 (var 1117s))) goto 0x00014C
0x00013C:
    self.move = 1117.hspeed
0x00014C:
    self.x = (+ self.x (/ self.move (double 3s)))
    if !(== self.active 1s) goto 0x000230
0x000188:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) self.y2 self.x2 self.y1 self.x1)) goto 0x0001EC
0x0001D0:
    self.col = (+ self.col 1s)
    goto 0x0001F8
0x0001EC:
    self.col = 0s
0x0001F8:
    if !(== self.col 2s) goto 0x000220
0x00020C:
    call (event_user[]:int32 (var 2s))
0x000220:
    self.rot = self.direction
0x000230:
    if !(== self.active 4s) goto 0x00049C
0x000244:
    self.rspeed = self.speed
    self.rdir = self.direction
    self.rot = (+ self.rot self.ramt)
    if !(> self.ramt 0s) goto 0x0002B0
0x000294:
    self.ramt = (- self.ramt 2s)
    goto 0x00047C
0x0002B0:
    self.ramt = 0s
    call (move_towards_point[]:int32 (var 0.1d) (+ 1570.y 15s) (+ (+ 1570.x 7s) self.gax))
    self.idealrot = self.direction
    self.rot = (% self.rot 360s)
    if !(> (- self.rot self.idealrot) 12s) goto 0x000364
0x00034C:
    self.rot = (- self.rot 4s)
0x000364:
    if !(> (- self.rot self.idealrot) 6s) goto 0x00039C
0x000384:
    self.rot = (- self.rot 2s)
0x00039C:
    if !(> (- self.rot self.idealrot) 3s) goto 0x0003D4
0x0003BC:
    self.rot = (- self.rot 1s)
0x0003D4:
    if !(< (- self.rot self.idealrot) -3s) goto 0x00040C
0x0003F4:
    self.rot = (+ self.rot 1s)
0x00040C:
    if !(< (- self.rot self.idealrot) -6s) goto 0x000444
0x00042C:
    self.rot = (+ self.rot 2s)
0x000444:
    if !(< (- self.rot self.idealrot) -12s) goto 0x00047C
0x000464:
    self.rot = (+ self.rot 4s)
0x00047C:
    self.speed = self.rspeed
    self.direction = self.rdir
0x00049C:
    if !(== self.active 0s) goto 0x0004F8
0x0004B0:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(< self.image_alpha 0.1d) goto 0x0004F8
0x0004EC:
    self.active = 2s
0x0004F8:
    if !(> self.y self.room_height) goto 0x00051C
0x000510:
    self.active = 0s
0x00051C:
    if !(== self.active 2s) goto 0x00053C
0x000530:
    call (instance_destroy[]:int32 )
0x00053C:
    exit
