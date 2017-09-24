0x000000:
    [obj_screen].messed = 0s
    global.inbattle = 1s
    self.savetimer = 0s
    self.loadtimer = 0s
    self.darkmode = 0s
    self.darkvalue = 0s
    self.htest = 0s
    self.save_hp = 50s
    self.save_inv = 0s
    self.megadamage = 0s
    global.faceemotion = 0s
    self.introcon = 1s
    self.introskip = 0s
    self.turnturn = 0s
    self.drawhp = 0s
    self.intent_hit = 0s
    global.floweyhp = 9950s
    global.floweymaxhp = 9999s
    global.battlephase = 0s
    global.soul_rescue = 0s
    if !(== global.fplot 0s) goto 0x000154
0x000104:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "P") (var "FFFFF"))
    call (ini_close[]:int32 )
0x000154:
    if !(> global.fplot 1s) goto 0x0001C8
0x000168:
    global.battlephase = (- global.fplot 1s)
    global.soul_rescue = (- global.fplot 1s)
    self.introskip = 1s
    self.fadevalue = 0s
    pushenv 1587s 0x0001C4
0x0001B8:
    self.tvmode = 26s
0x0001C4:
    popenv 0x0001B8
0x0001C8:
    self.flx = 0s
    self.fly = 0s
    self.tv = (instance_create[]:int32 (var 1587s) (var -32s) (var 235s))
    self.lefteye = (instance_create[]:int32 (var 1591s) (var 132s) (var 196s))
    self.flipeye = (instance_create[]:int32 (var 1589s) (var 192s) (var 258s))
    self.mouth = (instance_create[]:int32 (var 1590s) (var 196s) (var 292s))
    self.fleshface = (instance_create[]:int32 (var 1588s) (var 126s) (var 260s))
    self.pipetest = (instance_create[]:int32 (var 1593s) (var 226s) (var 272s))
    self.pipetest2 = (instance_create[]:int32 (var 1594s) (var 132s) (var 230s))
    self.pipetest3 = (instance_create[]:int32 (var 1595s) (var 54s) (var 246s))
    self.behind = (instance_create[]:int32 (var 1592s) (var 10s) (var 140s))
    [obj_floweybodyparent].visible = 0s
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 2s) (var "external/spr_nostrils.png") (var 2157s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_fleshmound.png") (var 2158s))
    call (sprite_replace[]:int32 (var 24s) (var 40s) (var 0s) (var 1s) (var 1s) (var "external/spr_lefteye_overlay.png") (var 2159s))
    call (sprite_replace[]:int32 (var 17s) (var 31s) (var 0s) (var 1s) (var 1s) (var "external/spr_lefteye_nopupil.png") (var 2162s))
    call (sprite_replace[]:int32 (var 8s) (var 8s) (var 0s) (var 1s) (var 1s) (var "external/spr_lefteye_pupil.png") (var 2164s))
    call (sprite_replace[]:int32 (var 50s) (var 20s) (var 0s) (var 1s) (var 1s) (var "external/spr_flipeye_bg.png") (var 2166s))
    call (sprite_replace[]:int32 (var 53s) (var 31s) (var 0s) (var 1s) (var 1s) (var "external/spr_flipeye_holder.png") (var 2168s))
    call (sprite_replace[]:int32 (var 40s) (var 21s) (var 0s) (var 1s) (var 1s) (var "external/spr_flipeye_noiris.png") (var 2171s))
    call (sprite_replace[]:int32 (var 4s) (var 5s) (var 0s) (var 1s) (var 1s) (var "external/spr_flipeye_pupil.png") (var 2173s))
    call (sprite_replace[]:int32 (var 15s) (var 17s) (var 0s) (var 1s) (var 1s) (var "external/spr_flipeye_iris.png") (var 2175s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_nostrils.gif") (var 2157s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_fleshmound.gif") (var 2158s))
    call (sprite_replace[]:int32 (var 24s) (var 40s) (var 0s) (var 1s) (var 0s) (var "external/spr_lefteye_overlay.gif") (var 2159s))
    call (sprite_replace[]:int32 (var 17s) (var 31s) (var 0s) (var 1s) (var 0s) (var "external/spr_lefteye_nopupil.gif") (var 2162s))
    call (sprite_replace[]:int32 (var 8s) (var 8s) (var 0s) (var 1s) (var 0s) (var "external/spr_lefteye_pupil.gif") (var 2164s))
    call (sprite_replace[]:int32 (var 50s) (var 20s) (var 0s) (var 1s) (var 0s) (var "external/spr_flipeye_bg.gif") (var 2166s))
    call (sprite_replace[]:int32 (var 53s) (var 31s) (var 0s) (var 1s) (var 0s) (var "external/spr_flipeye_holder.gif") (var 2168s))
    call (sprite_replace[]:int32 (var 40s) (var 21s) (var 0s) (var 1s) (var 0s) (var "external/spr_flipeye_noiris.gif") (var 2171s))
    call (sprite_replace[]:int32 (var 4s) (var 5s) (var 0s) (var 1s) (var 0s) (var "external/spr_flipeye_pupil.gif") (var 2173s))
    call (sprite_replace[]:int32 (var 15s) (var 17s) (var 0s) (var 1s) (var 0s) (var "external/spr_flipeye_iris.gif") (var 2175s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_floweyx_mouthedge.png") (var 2177s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_floweyx_mouthl.png") (var 2178s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 3s) (var "external/spr_floweyx_dimple.png") (var 2178s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_floweyx_mouthbridge.png") (var 2180s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyx_mouthedge.gif") (var 2177s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyx_mouthl.gif") (var 2178s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyx_dimple.gif") (var 2178s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyx_mouthbridge.gif") (var 2180s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_floweyx_tv.png") (var 2272s))
    call (sprite_replace[]:int32 (var 19s) (var 21s) (var 0s) (var 1s) (var 1s) (var "external/spr_pipepart.png") (var 2274s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyx_tv.gif") (var 2272s))
    call (sprite_replace[]:int32 (var 19s) (var 21s) (var 0s) (var 1s) (var 0s) (var "external/spr_pipepart.gif") (var 2274s))
    call (sprite_replace[]:int32 (var 36s) (var 51s) (var 0s) (var 1s) (var 1s) (var "external/spr_halfdentata_none.png") (var 2181s))
    call (sprite_replace[]:int32 (var 36s) (var 51s) (var 0s) (var 1s) (var 1s) (var "external/spr_halfdentata_bottom.png") (var 2183s))
    call (sprite_replace[]:int32 (var 36s) (var 51s) (var 0s) (var 1s) (var 1s) (var "external/spr_halfdentata_top.png") (var 2184s))
    call (sprite_replace[]:int32 (var 36s) (var 51s) (var 0s) (var 1s) (var 1s) (var "external/spr_dentata_tophalf.png") (var 2185s))
    call (sprite_replace[]:int32 (var 36s) (var 51s) (var 0s) (var 1s) (var 1s) (var "external/spr_dentata_bottomhalf.png") (var 2186s))
    call (sprite_replace[]:int32 (var 36s) (var 51s) (var 0s) (var 1s) (var 1s) (var "external/spr_dentata_none.png") (var 2187s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_bgpipe.png") (var 2190s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_bgpipe.gif") (var 2190s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_floweyarm.png") (var 2191s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyarm.gif") (var 2191s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_sidestalk.png") (var 2192s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_sidestalk.gif") (var 2192s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_vines_flowey.png") (var 2193s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_vines_flowey_2.png") (var 2194s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 1s) (var "external/spr_vines_flowey_3.png") (var 2195s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_vines_flowey.gif") (var 2193s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_vines_flowey_2.gif") (var 2194s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_vines_flowey_3.gif") (var 2195s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s) (var "external/tv.gif") (var 2208s))
    call (sprite_replace[]:int32 (var 59s) (var 59s) (var 0s) (var 1s) (var 0s) (var "external/spr_mouthball.png") (var 2238s))
    call (sprite_replace[]:int32 (var 59s) (var 59s) (var 0s) (var 1s) (var 0s) (var "external/spr_mouthball.gif") (var 2238s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweynuke_explosion.png") (var 2240s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweynuke_explosion.gif") (var 2240s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweynuke.png") (var 2241s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweynuke.gif") (var 2241s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_mouthflash.png") (var 2244s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_mouthflash.gif") (var 2244s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_mouthbeam.png") (var 2245s))
    call (sprite_replace[]:int32 (var 0s) (var 0s) (var 0s) (var 1s) (var 0s) (var "external/spr_mouthbeam.gif") (var 2245s))
    call (sprite_replace[]:int32 (var 24s) (var 20s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyx_flame.png") (var 2249s))
    call (sprite_replace[]:int32 (var 24s) (var 20s) (var 0s) (var 1s) (var 0s) (var "external/spr_floweyx_flame.gif") (var 2249s))
    call (sprite_replace[]:int32 (var 0s) (var 80s) (var 0s) (var 1s) (var 0s) (var "external/spr_venus_placeholder.png") (var 2255s))
    call (sprite_replace[]:int32 (var 0s) (var 80s) (var 0s) (var 1s) (var 0s) (var "external/spr_venus_placeholder.gif") (var 2255s))
    call (sprite_collision_mask[]:int32 (var 0s) (var 1s) (var 100s) (var 34s) (var 44s) (var 13s) (var 2s) (var 0s) (var 2241s))
    stog.mus_soul[0s] = (caster_load[]:int32 (var "music/f_6s_1.ogg"))
    stog.mus_soul[1s] = (caster_load[]:int32 (var "music/f_6s_2.ogg"))
    stog.mus_soul[2s] = (caster_load[]:int32 (var "music/f_6s_3.ogg"))
    stog.mus_soul[3s] = (caster_load[]:int32 (var "music/f_6s_4.ogg"))
    stog.mus_soul[4s] = (caster_load[]:int32 (var "music/f_6s_5.ogg"))
    stog.mus_soul[5s] = (caster_load[]:int32 (var "music/f_6s_6.ogg"))
    stog.mus_soul[6s] = (caster_load[]:int32 (var "music/f_6s_1.ogg"))
    self.soulpitch = 1s
    self.mus_noise = (caster_load[]:int32 (var "music/f_noise.ogg"))
    self.mus_alarm = (caster_load[]:int32 (var "music/f_alarm.ogg"))
    stog.mus_phase[0s] = (caster_load[]:int32 (var "music/f_part1.ogg"))
    stog.mus_phase[1s] = (caster_load[]:int32 (var "music/f_part2.ogg"))
    self.mus_repeat1 = (caster_load[]:int32 (var "music/repeat_1.ogg"))
    self.mus_repeat2 = (caster_load[]:int32 (var "music/repeat_2.ogg"))
    self.mus_endnote = (caster_load[]:int32 (var "music/f_endnote.ogg"))
    self.mustype = 0s
    self.sfx_oh = (caster_load[]:int32 (var "music/sfx_oh.ogg"))
    self.sfx_ted = (caster_load[]:int32 (var "music/sfx_ted.ogg"))
    self.sfx_generate = (caster_load[]:int32 (var "music/sfx_generate.ogg"))
    self.sfx_laugh = (caster_load[]:int32 (var "music/f_laugh.ogg"))
    self.mus_finale1 = (caster_load[]:int32 (var "music/f_finale_1.ogg"))
    self.mus_finale1_l = (caster_load[]:int32 (var "music/f_finale_1_l.ogg"))
    self.mus_finale2 = (caster_load[]:int32 (var "music/f_finale_2.ogg"))
    self.mus_finale3 = (caster_load[]:int32 (var "music/f_finale_3.ogg"))
    self.mus_saved = (caster_load[]:int32 (var "music/f_saved.ogg"))
    self.mus_hit = (caster_load[]:int32 (var "music/f_orchhit.ogg"))
    self.pd = 0s
    self.doomtimer = 0s
    self.o_kill = 0s
    self.destroyer = 0s
    self.destroyercon = 0s
    self.dcon = 0s
    self.fileset = 2s
0x001944:
    exit
