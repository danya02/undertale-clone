0x000000:
    if !(== global.interact 0s) goto 0x0005EC
0x000014:
    if !(== global.facing 1s) goto 0x00019C
0x000028:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y self.sprite_height) (+ (+ self.x self.sprite_width) 15s) (+ self.y 19s) (+ self.x (/ self.sprite_width (double 2s))))) goto 0x00019C
0x0000B0:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y self.sprite_height) (+ (+ self.x self.sprite_width) 15s) (+ self.y (/ self.sprite_height (double 2s))) (+ self.x (/ self.sprite_width (double 2s))))
    if !(!= self.interactedobject -4s) goto 0x00019C
0x00015C:
    pushenv (int32 self.interactedobject) 0x000178
0x00016C:
    self.facing = 3s
0x000178:
    popenv 0x00016C
0x00017C:
    pushenv (int32 self.interactedobject) 0x000198
0x00018C:
    self.myinteract = 1s
0x000198:
    popenv 0x00018C
0x00019C:
    if !(== global.facing 3s) goto 0x00031C
0x0001B0:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y self.sprite_height) (- self.x 15s) (+ self.y 19s) (+ self.x (/ self.sprite_width (double 2s))))) goto 0x00031C
0x00022C:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ (+ self.y self.sprite_height) 3s) (- self.x 15s) (+ (+ self.y 3s) (/ self.sprite_height (double 2s))) (+ self.x (/ self.sprite_width (double 2s))))
    if !(!= self.interactedobject -4s) goto 0x00031C
0x0002DC:
    pushenv (int32 self.interactedobject) 0x0002F8
0x0002EC:
    self.facing = 1s
0x0002F8:
    popenv 0x0002EC
0x0002FC:
    pushenv (int32 self.interactedobject) 0x000318
0x00030C:
    self.myinteract = 1s
0x000318:
    popenv 0x00030C
0x00031C:
    if !(== global.facing 0s) goto 0x000484
0x000330:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ (+ self.y self.sprite_height) 15s) (- (+ self.x self.sprite_width) 4s) (+ self.y 20s) (+ self.x 4s))) goto 0x000484
0x0003B0:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ (+ self.y self.sprite_height) 15s) (- (+ self.x self.sprite_width) 4s) (+ self.y 20s) (+ self.x 4s))
    if !(!= self.interactedobject -4s) goto 0x000484
0x000444:
    pushenv (int32 self.interactedobject) 0x000460
0x000454:
    self.facing = 2s
0x000460:
    popenv 0x000454
0x000464:
    pushenv (int32 self.interactedobject) 0x000480
0x000474:
    self.myinteract = 1s
0x000480:
    popenv 0x000474
0x000484:
    if !(== global.facing 2s) goto 0x0005EC
0x000498:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 5s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))) goto 0x0005EC
0x000518:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 8s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))
    if !(!= self.interactedobject -4s) goto 0x0005EC
0x0005AC:
    pushenv (int32 self.interactedobject) 0x0005C8
0x0005BC:
    self.facing = 0s
0x0005C8:
    popenv 0x0005BC
0x0005CC:
    pushenv (int32 self.interactedobject) 0x0005E8
0x0005DC:
    self.myinteract = 1s
0x0005E8:
    popenv 0x0005DC
0x0005EC:
    exit
