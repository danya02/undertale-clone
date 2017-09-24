0x000000:
    global.interact = 0s
    global.facing = 0s
    self.dongs = 0s
    self.image_speed = 0s
    self.intromusic = (caster_load[]:int32 (var "music/story.ogg"))
    self.stuck = (caster_load[]:int32 (var "music/story_stuck.ogg"))
    self.vol = 1s
    call (caster_play[]:int32 (var 0.91d) (var 1s) self.intromusic)
    global.typer = 11s
    global.faceemotion = 0s
    global.facechoice = 0s
    global.msc = 0s
    self.fadercreator = 0s
    self.skip = 0s
    stog.msg[0s] = "Long ago^1, two races&ruled over Earth^1:&HUMANS and MONSTERS. \\E1 ^1 %"
    stog.msg[1s] = "One day^1, th^7ey all&disappeared without&a trace."
    stog.msg[2s] = "%%%"
    stog.msg[2s] = "After a long battle^1,&the humans were&victorious^5. \\E1 ^1 %"
    stog.msg[3s] = "They sealed the monsters&underground with a magic&spell^4. \\E0 ^1 %"
    stog.msg[4s] = "Many years later^2.^2.^4.\\E1 ^1%"
    stog.msg[5s] = "      MT. EBOTT&         201X^9 \\E0 %"
    stog.msg[6s] = "Legends say that those&who climb the mountain&never return^5.^3 \\E1 %"
    stog.msg[7s] = " \\E1 %"
    stog.msg[8s] = " ^9 ^5 \\E0 %"
    stog.msg[9s] = " ^9 ^5 ^2 \\E1 %"
    stog.msg[10s] = " ^9 ^5 ^2 \\E2 %"
    stog.msg[11s] = " ^9 ^9 ^9 ^9 ^9 ^9 \\E2 %%"
    stog.msg[12s] = " ^9 ^9 ^9 ^9 ^9  \\E0 %%"
    stog.msg[13s] = " ^9 ^9 ^9 ^9 ^9 ^9 \\E0 %"
    stog.msg[14s] = " %%"
    stog.msg[15s] = "%%%"
    self.mywriter = (instance_create[]:int32 (var 1598s) (var 140s) (var 40s))
    stog.alarm[0s] = 200s
    self.skipper = 0s
0x0002C8:
    exit
