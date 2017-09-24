0x000000:
    self.movetype = 1s
    self.lightning_timer = 400s
    self.visible = 0s
    self.mtb = (instance_create[]:int32 (var 449s) self.y self.x)
    push self.xstart
    stog.homex* = (int32 self.mtb)
    push self.ystart
    stog.homey* = (int32 self.mtb)
0x000084:
    exit
