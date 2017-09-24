0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_speed = 0s
    push -5s
    self.y = (+ (- 3s:idealborder self.sprite_height) 15s)
    push -5s
    self.x = (+ (- 1s:idealborder self.sprite_width) 19s)
    if (<= 50s 0) goto 0x000120
0x000094:
    push 50s
    call (instance_create[]:int32 (var 537s) (- (+ self.y (random[]:int32 (var 20s))) (random[]:int32 (var 20s))) (- (+ self.x (random[]:int32 (var 20s))) (random[]:int32 (var 20s))))
    if (bool (- pop 1)) goto 0x000094
0x000120:
    push (- pop 1)
    pop
    stog.alarm[0s] = 20s
    self.walking = 0s
    self.shake = 2s
    self.nowy = self.y
    self.nowx = self.x
    stog.alarm[5s] = 10s
    stog.alarm[6s] = 30s
    self.factor = 15s
    self.dmg = 9s
0x0001B0:
    exit
