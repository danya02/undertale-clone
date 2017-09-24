0x000000:
    call (audio_stop_all[]:int32 )
    call (audio_play_sound[]:int32 (var 1s) (var 50s) (var 412s))
    self.ch = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    global.msc = 0s
    global.typer = 666s
    stog.msg[0s] = "ENTRY NUMBER&SEVENTEEN/"
    stog.msg[1s] = "DARK&DARKER&YET DARKER/"
    stog.msg[2s] = "THE DARKNES^2S&KEEPS GROWING/"
    stog.msg[3s] = "THE SHADOW^2S&CUTTING DEEPER/"
    stog.msg[4s] = "PHOTON&READING^2S&NEGATIVE/"
    stog.msg[5s] = "THIS NEX^2T&EXPERIMENT/"
    stog.msg[6s] = "SEEMS/"
    stog.msg[7s] = "VERY/"
    stog.msg[8s] = "VERY/"
    stog.msg[9s] = "INTERESTING/"
    stog.msg[10s] = ".../"
    stog.msg[11s] = "WHAT DO YOU&TWO THINK/%%"
    call (instance_create[]:int32 (var 782s) (var 20s) (var 20s))
0x0001BC:
    exit
