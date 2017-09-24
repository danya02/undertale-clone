0x000000:
    if !(== self.side 0s) goto 0x0002C0
0x000014:
    if !(== self.active 1s) goto 0x000100
0x000028:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000100
0x000040:
    if !(< (distance_to_object[]:int32 (var 1570s)) 40s) goto 0x0000A0
0x00005C:
    if !(== self.open 0s) goto 0x000094
0x000070:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 121s))
0x000094:
    self.open = 1s
0x0000A0:
    if !(> (distance_to_object[]:int32 (var 1570s)) 50s) goto 0x000100
0x0000BC:
    if !(== self.open 1s) goto 0x0000F4
0x0000D0:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 120s))
0x0000F4:
    self.open = 0s
0x000100:
    if !(== self.open -1s) goto 0x000120
0x000114:
    self.open = 0s
0x000120:
    if !(< self.doorx 7s) goto 0x000190
0x000134:
    call (draw_sprite_part[]:int32 (+ self.y 4s) self.x (var 61s) (- 8s self.doorx) (var 0s) (var 0s) (var 0s) (var 1873s))
0x000190:
    if !(< self.doorx 7s) goto 0x000214
0x0001A4:
    call (draw_sprite_part[]:int32 (+ self.y 10s) (+ (+ self.x 6s) self.doorx) (var 61s) (- 8s self.doorx) (var 0s) self.doorx (var 0s) (var 1873s))
0x000214:
    if !(== self.open 1s) goto 0x000254
0x000228:
    if !(< self.doorx 8s) goto 0x000254
0x00023C:
    self.doorx = (+ self.doorx 1s)
0x000254:
    if !(== self.open 0s) goto 0x000294
0x000268:
    if !(> self.doorx 0s) goto 0x000294
0x00027C:
    self.doorx = (- self.doorx 1s)
0x000294:
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1874s))
0x0002C0:
    if !(== self.side 1s) goto 0x000588
0x0002D4:
    if !(== self.active 1s) goto 0x0003C0
0x0002E8:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0003C0
0x000300:
    if !(< (distance_to_object[]:int32 (var 1570s)) 30s) goto 0x000360
0x00031C:
    if !(== self.open 0s) goto 0x000354
0x000330:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 121s))
0x000354:
    self.open = 1s
0x000360:
    if !(> (distance_to_object[]:int32 (var 1570s)) 50s) goto 0x0003C0
0x00037C:
    if !(== self.open 1s) goto 0x0003B4
0x000390:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 120s))
0x0003B4:
    self.open = 0s
0x0003C0:
    if !(== self.open -1s) goto 0x0003E0
0x0003D4:
    self.open = 0s
0x0003E0:
    if !(< self.doorx 7s) goto 0x000458
0x0003F4:
    call (draw_sprite_part[]:int32 (+ self.y 10s) (+ self.x 19s) (var 61s) (- 8s self.doorx) (var 0s) (var 0s) (var 0s) (var 1870s))
0x000458:
    if !(< self.doorx 7s) goto 0x0004DC
0x00046C:
    call (draw_sprite_part[]:int32 (+ self.y 4s) (+ (+ self.x 25s) self.doorx) (var 61s) (- 8s self.doorx) (var 0s) self.doorx (var 0s) (var 1870s))
0x0004DC:
    if !(== self.open 1s) goto 0x00051C
0x0004F0:
    if !(< self.doorx 8s) goto 0x00051C
0x000504:
    self.doorx = (+ self.doorx 1s)
0x00051C:
    if !(== self.open 0s) goto 0x00055C
0x000530:
    if !(> self.doorx 0s) goto 0x00055C
0x000544:
    self.doorx = (- self.doorx 1s)
0x00055C:
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1875s))
0x000588:
    exit
