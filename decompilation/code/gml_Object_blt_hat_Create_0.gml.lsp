0x000000:
    self.image_speed = 0s
    self.dmg = 0s
    self.dmg2 = self.dmg
    stog.alarm[6s] = 20s
    self.gg = (floor[]:int32 (random[]:int32 (var 2s)))
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) self.object_index self.room_height (+ self.x (/ self.sprite_width (double 2s))) (var 0s) (+ self.x (/ self.sprite_width (double 2s))))) goto 0x00014C
0x0000D4:
    if !(== self.gg 1s) goto 0x000110
0x0000E8:
    self.x = (+ self.x (/ self.sprite_width (double 2s)))
0x000110:
    if !(== self.gg 0s) goto 0x00014C
0x000124:
    self.x = (- self.x (/ self.sprite_width (double 2s)))
0x00014C:
    self.vspeed = -1.5d
    push -5s
    self.y = (+ 3s:idealborder 2s)
    push self.x
    if !(> -5s (- 1s:idealborder self.sprite_width)) goto 0x0001EC
0x0001AC:
    push self.x
    push -5s
    self.x = (- 1s:idealborder (random[]:int32 (- -5s 0s:idealborder)))
0x0001EC:
    push self.x
    if !(< -5s 0s:idealborder) goto 0x00024C
0x00020C:
    push self.x
    push -5s
    self.x = (+ 1s:idealborder (random[]:int32 (- -5s 0s:idealborder)))
0x00024C:
    if !(!= (instance_position[]:int32 self.object_index (- self.y 15s) (+ self.x (/ self.sprite_width (double 2s)))) -4s) goto 0x000310
0x000298:
    if !(== self.gg 1s) goto 0x0002D4
0x0002AC:
    self.x = (+ self.x (/ self.sprite_width (double 2s)))
0x0002D4:
    if !(== self.gg 0s) goto 0x000310
0x0002E8:
    self.x = (- self.x (/ self.sprite_width (double 2s)))
0x000310:
    if !(< (collision_line[]:int32 (var 1s) (var 0s) self.object_index self.room_height 743.x (var 0s) (+ 743.x 8s)) 0s) goto 0x0003B8
0x000364:
    push (< (collision_line[]:int32 (var 1s) (var 0s) (var 645s) self.room_height 743.x (var 0s) (+ 743.x 8s)) 0s)
    goto 0x0003BC
0x0003B8:
    push 0s
0x0003BC:
    if !pop goto 0x0003F0
0x0003C0:
    self.x = (- (+ 6s 743.x) (/ self.sprite_width (double 2s)))
0x0003F0:
    exit
