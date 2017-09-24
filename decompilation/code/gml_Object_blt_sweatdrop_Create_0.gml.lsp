0x000000:
    self.speed = 3.5d
    self.visible = 0s
    self.gg = (% (instance_number[]:int32 self.object_index) 4s)
    if !(< self.gg 2s) goto 0x0000AC
0x000054:
    self.x = (+ 758.x (random[]:int32 (c_borderwidth[]:int32 (var 0s))))
    push -5s
    self.y = (- 2s:idealborder 40s)
    self.direction = 270s
0x0000AC:
    if !(== self.gg 2s) goto 0x000144
0x0000C0:
    push -5s
    self.x = (- 0s:idealborder 16s)
    push -5s
    self.y = (+ (- 2s:idealborder 40s) (* (random[]:int32 (var 118s)) 1.5d))
    if !(== self.gg 2s) goto 0x000144
0x000138:
    self.direction = 310s
0x000144:
    if !(== self.gg 3s) goto 0x0001DC
0x000158:
    push -5s
    self.x = (+ 1s:idealborder 16s)
    push -5s
    self.y = (+ (- 2s:idealborder 40s) (* (random[]:int32 (var 118s)) 1.5d))
    if !(== self.gg 3s) goto 0x0001DC
0x0001D0:
    self.direction = 235s
0x0001DC:
    self.image_alpha = 0s
    self.visible = 1s
    self.dmg = 8s
0x000200:
    exit
