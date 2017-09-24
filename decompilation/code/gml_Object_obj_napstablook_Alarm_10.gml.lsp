0x000000:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x000038
0x000018:
    pushenv (int32 self.blcon) 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    if !(> self.image_alpha 0.1d) goto 0x00008C
0x000054:
    self.image_alpha = (- self.image_alpha 0.05d)
    stog.alarm[10s] = 1s
    goto 0x00010C
0x00008C:
    call (caster_stop[]:int32 global.batmusic)
    call (caster_free[]:int32 global.batmusic)
    global.typer = 1s
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* YOU WON!&* You lost 1 experience point./%") (var 0s) (var 146s))
    stog.alarm[11s] = 1s
0x00010C:
    exit
