0x000000:
    if !(== self.con 0s) goto 0x0000F4
0x000014:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text[]:int32 (var "Welcome to the Sound Test!#Listen to all your favorites.#Press Left or Right to select.#Press Z to play a song.#") (var 50s) (var 120s))
    self.buffer = (+ self.buffer 1s)
    if !(>= self.buffer 20s) goto 0x0000F4
0x000094:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0000F4
0x0000AC:
    self.buffer = -10s
    self.con = 1s
    self.songno = 0s
    call (audio_play_sound[]:int32 (var 1s) (var 50s) (var 143s))
0x0000F4:
    if !(== self.con 1s) goto 0x0007C8
0x000108:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "SOUND TEST") (var 50s) (var 200s))
    if !(== self.songno 0s) goto 0x000234
0x000174:
    if !(bool (audio_is_playing[]:int32 (var 143s))) goto 0x0001A8
0x00018C:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x00020C
0x0001A8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0001D4
0x0001C0:
    push (== self.gaster 0s)
    goto 0x0001D8
0x0001D4:
    push 0s
0x0001D8:
    if !pop goto 0x00020C
0x0001DC:
    call (audio_stop_all[]:int32 )
    call (audio_play_sound[]:int32 (var 1s) (var 50s) (var 143s))
0x00020C:
    call (draw_text[]:int32 (var "Happy Town") (var 200s) (var 220s))
0x000234:
    if !(== self.songno 1s) goto 0x000308
0x000248:
    if !(bool (audio_is_playing[]:int32 (var 145s))) goto 0x00027C
0x000260:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x0002E0
0x00027C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0002A8
0x000294:
    push (== self.gaster 0s)
    goto 0x0002AC
0x0002A8:
    push 0s
0x0002AC:
    if !pop goto 0x0002E0
0x0002B0:
    call (audio_stop_all[]:int32 )
    call (audio_play_sound[]:int32 (var 1s) (var 50s) (var 145s))
0x0002E0:
    call (draw_text[]:int32 (var "Meat Factory") (var 200s) (var 220s))
0x000308:
    if !(== self.songno 2s) goto 0x0003DC
0x00031C:
    if !(bool (audio_is_playing[]:int32 (var 146s))) goto 0x000350
0x000334:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x0003B4
0x000350:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00037C
0x000368:
    push (== self.gaster 0s)
    goto 0x000380
0x00037C:
    push 0s
0x000380:
    if !pop goto 0x0003B4
0x000384:
    call (audio_stop_all[]:int32 )
    call (audio_play_sound[]:int32 (var 1s) (var 50s) (var 146s))
0x0003B4:
    call (draw_text[]:int32 (var "Trouble Dingle") (var 200s) (var 220s))
0x0003DC:
    if !(== self.songno 3s) goto 0x0004BC
0x0003F0:
    if !(bool (audio_is_playing[]:int32 (var 144s))) goto 0x000424
0x000408:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x000494
0x000424:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000450
0x00043C:
    push (== self.gaster 0s)
    goto 0x000454
0x000450:
    push 0s
0x000454:
    if !pop goto 0x000494
0x000458:
    self.gaster = 1s
    call (audio_stop_all[]:int32 )
    call (audio_play_sound[]:int32 (var 1s) (var 50s) (var 144s))
0x000494:
    call (draw_text[]:int32 (var "Gaster's Theme") (var 200s) (var 220s))
0x0004BC:
    self.buffer = (+ self.buffer 1s)
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000514
0x0004EC:
    if !(> self.buffer 0s) goto 0x000514
0x000500:
    push (< self.active_l 0s)
    goto 0x000518
0x000514:
    push 0s
0x000518:
    if !pop goto 0x0005BC
0x00051C:
    if !(== self.gaster 0s) goto 0x000578
0x000530:
    self.songno = (+ self.songno 1s)
    if !(> self.songno 3s) goto 0x000568
0x00055C:
    self.songno = 0s
0x000568:
    self.active_l = 10s
    goto 0x0005BC
0x000578:
    self.active_l = 2s
    self.songno = (- self.songno 1s)
    if !(< self.songno 0s) goto 0x0005BC
0x0005B0:
    self.songno = 3s
0x0005BC:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x0005FC
0x0005D4:
    if !(> self.buffer 0s) goto 0x0005FC
0x0005E8:
    push (< self.active_r 0s)
    goto 0x000600
0x0005FC:
    push 0s
0x000600:
    if !pop goto 0x000668
0x000604:
    self.active_r = 10s
    self.songno = (+ self.songno 1s)
    if !(> self.songno 3s) goto 0x000648
0x00063C:
    self.songno = 0s
0x000648:
    if !(== self.gaster 1s) goto 0x000668
0x00065C:
    self.active_r = 2s
0x000668:
    self.active_l = (- self.active_l 1s)
    self.active_r = (- self.active_r 1s)
    call (draw_set_color[]:int32 (var 16777215))
    if !(> self.active_l 0s) goto 0x0006DC
0x0006C4:
    call (draw_set_color[]:int32 (var 65535))
0x0006DC:
    call (draw_text[]:int32 (var "<<") (var 200s) (var 50s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(> self.active_r 0s) goto 0x000748
0x000730:
    call (draw_set_color[]:int32 (var 65535))
0x000748:
    call (draw_text[]:int32 (var ">>") (var 200s) (var 580s))
    if !(== self.gaster 1s) goto 0x00079C
0x000784:
    self.g_timer = (+ self.g_timer 1s)
0x00079C:
    if !(>= self.g_timer 600s) goto 0x0007C8
0x0007B0:
    call (audio_stop_all[]:int32 )
    self.con = 3s
0x0007C8:
    if !(== self.con 3s) goto 0x000844
0x0007DC:
    call (draw_text[]:int32 (var "Thanks for your feedback!#Be seeing you soon!") (var 50s) (var 150s))
    self.seeya_timer = (+ self.seeya_timer 1s)
    if !(>= self.seeya_timer 180s) goto 0x000844
0x000830:
    call (room_goto[]:int32 (var 47s))
0x000844:
    exit
