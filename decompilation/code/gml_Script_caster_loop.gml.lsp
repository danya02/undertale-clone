0x000000:
    self.this_song_i = (audio_play_sound[]:int32 (var 1s) (var 120s) self.argument0)
    call (audio_sound_pitch[]:int32 self.argument2 self.argument0)
    call (audio_sound_gain[]:int32 (var 0s) self.argument1 self.argument0)
    ret var self.this_song_i
0x000074:
    exit
