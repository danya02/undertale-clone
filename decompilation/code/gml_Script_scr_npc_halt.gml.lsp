0x000000:
    self.image_index = 0s
    self.image_speed = 0s
    self.hspeed = 0s
    self.vspeed = 0s
    self.npcdir = 0s
    if !(== self.argument0 "u") goto 0x000064
0x000054:
    self.sprite_index = self.usprite
0x000064:
    if !(== self.argument0 "d") goto 0x00008C
0x00007C:
    self.sprite_index = self.dsprite
0x00008C:
    if !(== self.argument0 "l") goto 0x0000B4
0x0000A4:
    self.sprite_index = self.lsprite
0x0000B4:
    if !(== self.argument0 "r") goto 0x0000DC
0x0000CC:
    self.sprite_index = self.rsprite
0x0000DC:
    exit
