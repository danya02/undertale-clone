0x000000:
    if !(== self.myinteract 1s) goto 0x000210
0x000014:
    if !(== 1414.level 0s) goto 0x000058
0x000028:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
    goto 0x000210
0x000058:
    self.x = (- self.x 400s)
    self.myinteract = 0s
    pushenv 1570s 0x0001F4
0x000084:
    if !(== global.facing 2s) goto 0x0001F4
0x000098:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 5s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))) goto 0x0001F4
0x000118:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 8s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))
    if !(!= self.interactedobject -4s) goto 0x0001F4
0x0001AC:
    pushenv (int32 self.interactedobject) 0x0001C8
0x0001BC:
    self.facing = 0s
0x0001C8:
    popenv 0x0001BC
0x0001CC:
    pushenv (int32 self.interactedobject) 0x0001F0
0x0001DC:
    call (script_execute[]:int32 (var 111s))
0x0001F0:
    popenv 0x0001DC
0x0001F4:
    popenv 0x000084
0x0001F8:
    self.x = (+ self.x 400s)
0x000210:
    if !(== self.myinteract 3s) goto 0x000258
0x000224:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x000258
0x000240:
    global.interact = 0s
    self.myinteract = 0s
0x000258:
    exit
