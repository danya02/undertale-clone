0x000000:
    if !(== self.visible 1s) goto 0x00002C
0x000014:
    pushenv -2s 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    popenv 0x00001C
0x00002C:
    if !(== self.visible 1s) goto 0x0000EC
0x000040:
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x000070
0x000058:
    global.ratings = (+ global.ratings 20s)
0x000070:
    call (snd_play[]:int32 (var 128s))
    self.bp = (instance_create[]:int32 (var 425s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.bp)) goto 0x0000E0
0x0000C4:
    push self.sprite_index
    stog.sprite_index* = (int32 self.bp)
0x0000E0:
    self.visible = 0s
0x0000EC:
    exit
