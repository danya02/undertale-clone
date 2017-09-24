0x000000:
    self.x = self.xstart
    if !(!= self.sprite_index 734s) goto 0x00004C
0x000024:
    if !(!= self.sprite_index 736s) goto 0x00004C
0x000038:
    push (!= self.sprite_index 742s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x0001C8
0x000054:
    if (== self.shudder 16s) goto 0x00007C
0x000068:
    push (== self.shudder 32s)
    goto 0x000080
0x00007C:
    push 1s
0x000080:
    if !pop goto 0x000108
0x000084:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 20s) self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000E4
0x0000D4:
    self.dmg = global.damage
0x0000E4:
    popenv 0x0000D4
0x0000E8:
    if !(< self.conversation 4s) goto 0x000108
0x0000FC:
    self.conversation = 0s
0x000108:
    self.sprite_index = 734s
    if !(> global.damage 100s) goto 0x000150
0x000128:
    self.sprite_index = 736s
    call (caster_set_volume[]:int32 (var 0s) global.batmusic)
0x000150:
    if !(> global.damage 100s) goto 0x000178
0x000164:
    push (> self.conversation 13s)
    goto 0x00017C
0x000178:
    push 0s
0x00017C:
    if !pop goto 0x00018C
0x000180:
    self.sprite_index = 742s
0x00018C:
    push -5s
    if !(>= 202s:flag 20s) goto 0x0001B4
0x0001A8:
    self.sprite_index = 742s
0x0001B4:
    call (snd_play[]:int32 self.hurtsound)
0x0001C8:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000218
0x0001F8:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x00022C
0x000218:
    self.shudder = (- self.shudder)
0x00022C:
    self.shudder = (- self.shudder 2s)
    if !(== self.shudder 0s) goto 0x000278
0x000258:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000278:
    stog.alarm[3s] = 2s
    if !(> global.damage 100s) goto 0x0002B4
0x0002A0:
    stog.alarm[3s] = 3s
0x0002B4:
    exit
