0x000000:
    self.movetype = 1s
    self.lightning_timer = 400s
    self.visible = 0s
    self.mtb = (instance_create[]:int32 (var 449s) self.y self.x)
    push self.xstart
    stog.homex* = (int32 self.mtb)
    push self.ystart
    stog.homey* = (int32 self.mtb)
    pushenv 408s 0x0000B4
0x00008C:
    if !(== self.noarm 0s) goto 0x0000B4
0x0000A0:
    call (event_user[]:int32 (var 2s))
0x0000B4:
    popenv 0x00008C
0x0000B8:
    exit
