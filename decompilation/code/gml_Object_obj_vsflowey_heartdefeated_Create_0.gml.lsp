0x000000:
    self.remx = 1581.x
    self.remy = 1581.y
    self.bb = (sprite_create_from_screen_x[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 480s) (var 640s) (var 0s) (var 0s))
    call (caster_free[]:int32 (var -3s))
    pushenv -3s 0x0000A4
0x00008C:
    self.x = -500s
    self.y = -500s
0x0000A4:
    popenv 0x00008C
0x0000A8:
    pushenv 1598s 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    popenv 0x0000B0
0x0000C0:
    call (instance_deactivate_all[]:int32 (var 1s))
    self.x = self.remx
    self.y = self.remy
    self.drawbb = 1s
    stog.alarm[0s] = 20s
    self.image_speed = 0s
    self.gmusic = (caster_load[]:int32 (var "music/gameover.ogg"))
    self.dingus = 0s
    self.currentvol = 1s
    self.con = 0s
0x000160:
    exit
