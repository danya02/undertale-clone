0x000000:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000038
0x000018:
    pushenv (int32 self.blcon) 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    if !(> self.image_alpha 0.1d) goto 0x0001C4
0x000054:
    self.sprite_index = 739s
    self.y = (+ self.y 56s)
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.killed = 1s
    self.room_speed = 20s
    call (instance_create[]:int32 (var 745s) (+ (/ self.sprite_height (double 2s)) self.y) 743.x)
    stog.flag[45s] = 4s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.TK = (ini_read_real[]:int32 (var 0s) (var "TK") (var "Toriel"))
    call (ini_write_real[]:int32 (+ self.TK 1s) (var "TK") (var "Toriel"))
    call (ini_close[]:int32 )
    call (instance_destroy[]:int32 )
    self.image_alpha = (- self.image_alpha 0.05d)
    stog.alarm[10s] = 1s
    goto 0x000244
0x0001C4:
    call (caster_stop[]:int32 global.batmusic)
    call (caster_free[]:int32 global.batmusic)
    global.typer = 1s
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* YOU WON!&* You lost 1 experience point./%") (var 0s) (var 146s))
    stog.alarm[11s] = 1s
0x000244:
    exit
