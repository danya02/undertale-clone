0x000000:
    self.image_speed = 0s
    push -1s
    self.xx = (int32 self.view_current):view_xview
    push -1s
    self.yy = (int32 self.view_current):view_yview
    self.image_xscale = 0.5d
    self.image_yscale = 0.5d
    self.mode = 0s
    stog.alarm[0s] = 1s
    self.clapper = 1s
    self.claps = 0s
    if !(== global.transtype 0s) goto 0x000134
0x0000C0:
    self.clapper = 0s
    self.mychoicex = (- (+ self.xx 160s) 3s)
    self.mychoicey = (+ (+ self.yy 211s) 1s)
    call (snd_play[]:int32 (var 105s))
    call (event_user[]:int32 (var 0s))
0x000134:
    if !(== global.transtype 1s) goto 0x0001C0
0x000148:
    self.sprite_index = 2258s
    self.image_index = 0s
    self.mychoicex = (+ self.xx 110s)
    self.mychoicey = (+ self.yy 100s)
    self.x = (+ self.mychoicex 30s)
    self.y = (- self.mychoicey 20s)
0x0001C0:
    if !(== global.transtype 2s) goto 0x00024C
0x0001D4:
    self.sprite_index = 2258s
    self.image_index = 1s
    self.mychoicex = (+ self.xx 210s)
    self.mychoicey = (+ self.yy 100s)
    self.x = (- self.mychoicex 30s)
    self.y = (- self.mychoicey 20s)
0x00024C:
    if !(== global.transtype 3s) goto 0x0002D0
0x000260:
    self.sprite_index = 2258s
    self.image_index = 2s
    self.mychoicex = (+ self.xx 90s)
    self.mychoicey = (+ self.yy 60s)
    self.x = (+ self.mychoicex 30s)
    self.y = self.mychoicey
0x0002D0:
    if !(== global.transtype 4s) goto 0x000354
0x0002E4:
    self.sprite_index = 2258s
    self.image_index = 3s
    self.mychoicex = (+ self.xx 230s)
    self.mychoicey = (+ self.yy 60s)
    self.x = (- self.mychoicex 30s)
    self.y = self.mychoicey
0x000354:
    if !(== global.transtype 5s) goto 0x0003E0
0x000368:
    self.sprite_index = 2258s
    self.image_index = 4s
    self.mychoicex = (+ self.xx 110s)
    self.mychoicey = (+ self.yy 20s)
    self.x = (+ self.mychoicex 30s)
    self.y = (+ self.mychoicey 20s)
0x0003E0:
    if !(== global.transtype 6s) goto 0x00046C
0x0003F4:
    self.sprite_index = 2258s
    self.image_index = 5s
    self.mychoicex = (+ self.xx 210s)
    self.mychoicey = (+ self.yy 20s)
    self.x = (- self.mychoicex 30s)
    self.y = (+ self.mychoicey 20s)
0x00046C:
    if !(== self.clapper 1s) goto 0x0004D8
0x000480:
    self.mychoicex = (- self.mychoicex 4s)
    self.xx = (- self.xx 4s)
    stog.alarm[4s] = 2s
    call (snd_play[]:int32 (var 106s))
0x0004D8:
    exit
