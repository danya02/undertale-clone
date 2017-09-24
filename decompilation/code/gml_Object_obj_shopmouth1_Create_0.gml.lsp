0x000000:
    self.image_speed = 0s
    if !(== self.room 311s) goto 0x00003C
0x000020:
    self.x = (+ 1409.shx 27s)
    goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    self.y = 50s
    global.faceemotion = 0s
    self.an = 0s
    stog.facespr[0s] = 876s
    stog.facespr[1s] = 881s
    stog.facespr[2s] = 880s
    stog.facespr[3s] = 882s
    stog.facespr[4s] = 879s
    stog.facespr[5s] = 878s
    stog.facespr[6s] = 877s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000118
0x00010C:
    call (instance_destroy[]:int32 )
0x000118:
    exit
