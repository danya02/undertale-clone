0x000000:
    self.siner = 0s
    self.image_alpha = 0.5d
    self.image_xscale = 0s
    self.image_yscale = 0s
    self.aa = (choose[]:int32 (var -2s) (var 2s))
    self.direction = (- 300s (random[]:int32 (var 60s)))
    stog.alarm[8s] = 20s
    self.breaking = 0s
    self.talpha = 0s
    self.tab = 0s
    self.phrase = (choose[]:int32 (var "SICK") (var "SWEET") (var "SPICEY") (var "NICEY") (var "RAD") (var "VIBIN") (var "COOL"))
    self.dmg = 9s
    if !(bool (instance_exists[]:int32 (var 228s))) goto 0x000158
0x000138:
    push -5s
    self.dmg = (int32 228.myself):monsteratk
0x000158:
    exit
