0x000000:
    if !(== global.interact 0s) goto 0x000028
0x000014:
    push (== self.uncan 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000644
0x000030:
    if !(== (instance_exists[]:int32 (var 1526s)) 0s) goto 0x000644
0x00004C:
    if !(== global.facing 1s) goto 0x0001DC
0x000060:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y self.sprite_height) (+ (+ self.x self.sprite_width) 15s) (+ self.y 19s) (+ self.x (/ self.sprite_width (double 2s))))) goto 0x0001DC
0x0000E8:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y self.sprite_height) (+ (+ self.x self.sprite_width) 15s) (+ self.y (/ self.sprite_height (double 2s))) (+ self.x (/ self.sprite_width (double 2s))))
    if !(!= self.interactedobject -4s) goto 0x0001DC
0x000194:
    pushenv (int32 self.interactedobject) 0x0001B0
0x0001A4:
    self.facing = 3s
0x0001B0:
    popenv 0x0001A4
0x0001B4:
    pushenv (int32 self.interactedobject) 0x0001D8
0x0001C4:
    call (script_execute[]:int32 (var 111s))
0x0001D8:
    popenv 0x0001C4
0x0001DC:
    if !(== global.facing 3s) goto 0x000364
0x0001F0:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y self.sprite_height) (- self.x 15s) (+ self.y 19s) (+ self.x (/ self.sprite_width (double 2s))))) goto 0x000364
0x00026C:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ (+ self.y self.sprite_height) 3s) (- self.x 15s) (+ (+ self.y 3s) (/ self.sprite_height (double 2s))) (+ self.x (/ self.sprite_width (double 2s))))
    if !(!= self.interactedobject -4s) goto 0x000364
0x00031C:
    pushenv (int32 self.interactedobject) 0x000338
0x00032C:
    self.facing = 1s
0x000338:
    popenv 0x00032C
0x00033C:
    pushenv (int32 self.interactedobject) 0x000360
0x00034C:
    call (script_execute[]:int32 (var 111s))
0x000360:
    popenv 0x00034C
0x000364:
    if !(== global.facing 0s) goto 0x0004D4
0x000378:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ (+ self.y self.sprite_height) 15s) (- (+ self.x self.sprite_width) 4s) (+ self.y 20s) (+ self.x 4s))) goto 0x0004D4
0x0003F8:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ (+ self.y self.sprite_height) 15s) (- (+ self.x self.sprite_width) 4s) (+ self.y 20s) (+ self.x 4s))
    if !(!= self.interactedobject -4s) goto 0x0004D4
0x00048C:
    pushenv (int32 self.interactedobject) 0x0004A8
0x00049C:
    self.facing = 2s
0x0004A8:
    popenv 0x00049C
0x0004AC:
    pushenv (int32 self.interactedobject) 0x0004D0
0x0004BC:
    call (script_execute[]:int32 (var 111s))
0x0004D0:
    popenv 0x0004BC
0x0004D4:
    if !(== global.facing 2s) goto 0x000644
0x0004E8:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 5s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))) goto 0x000644
0x000568:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 8s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))
    if !(!= self.interactedobject -4s) goto 0x000644
0x0005FC:
    pushenv (int32 self.interactedobject) 0x000618
0x00060C:
    self.facing = 0s
0x000618:
    popenv 0x00060C
0x00061C:
    pushenv (int32 self.interactedobject) 0x000640
0x00062C:
    call (script_execute[]:int32 (var 111s))
0x000640:
    popenv 0x00062C
0x000644:
    exit
