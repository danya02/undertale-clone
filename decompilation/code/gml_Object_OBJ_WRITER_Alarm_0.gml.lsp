0x000000:
    if !(< self.stringpos (string_length[]:int32 self.originalstring)) goto 0x000B9C
0x000020:
    self.stringpos = (+ self.stringpos 1s)
    if !(== global.typer 111s) goto 0x000064
0x00004C:
    self.stringpos = (+ self.stringpos 1s)
0x000064:
    stog.alarm[0s] = self.textspeed
    if !(== (string_char_at[]:int32 self.stringpos self.originalstring) "^") goto 0x0000D4
0x0000A4:
    push (!= (string_char_at[]:int32 (+ self.stringpos 1s) self.originalstring) "0")
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x000130
0x0000DC:
    self.n = (real[]:int32 (string_char_at[]:int32 (+ self.stringpos 1s) self.originalstring))
    stog.alarm[0s] = (* self.n 10s)
    goto 0x000B1C
0x000130:
    if (== self.txtsound 56s) goto 0x00016C
0x000144:
    if (== self.txtsound 65s) goto 0x00016C
0x000158:
    push (== self.txtsound 71s)
    goto 0x000170
0x00016C:
    push 1s
0x000170:
    if !pop goto 0x00097C
0x000174:
    if !(== self.txtsound 56s) goto 0x00048C
0x000188:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "") goto 0x000474
0x0001B0:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "^") goto 0x000474
0x0001D8:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "/") goto 0x000474
0x000200:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "%") goto 0x000474
0x000228:
    call (snd_stop[]:int32 (var 56s))
    call (snd_stop[]:int32 (var 57s))
    call (snd_stop[]:int32 (var 58s))
    call (snd_stop[]:int32 (var 59s))
    call (snd_stop[]:int32 (var 60s))
    call (snd_stop[]:int32 (var 61s))
    call (snd_stop[]:int32 (var 62s))
    call (snd_stop[]:int32 (var 63s))
    call (snd_stop[]:int32 (var 64s))
    self.rnsound = (floor[]:int32 (random[]:int32 (var 9s)))
    if (== self.rnsound 0s) goto 0x000398
0x000314:
    if (== self.rnsound 1s) goto 0x0003B0
0x000324:
    if (== self.rnsound 2s) goto 0x0003C8
0x000334:
    if (== self.rnsound 3s) goto 0x0003E0
0x000344:
    if (== self.rnsound 4s) goto 0x0003F8
0x000354:
    if (== self.rnsound 5s) goto 0x000410
0x000364:
    if (== self.rnsound 6s) goto 0x000428
0x000374:
    if (== self.rnsound 7s) goto 0x000440
0x000384:
    if (== self.rnsound 8s) goto 0x000458
0x000394:
    push self.rnsound
    goto 0x000470
0x000398:
    call (snd_play[]:int32 (var 56s))
    goto 0x000470
0x0003B0:
    call (snd_play[]:int32 (var 57s))
    goto 0x000470
0x0003C8:
    call (snd_play[]:int32 (var 58s))
    goto 0x000470
0x0003E0:
    call (snd_play[]:int32 (var 59s))
    goto 0x000470
0x0003F8:
    call (snd_play[]:int32 (var 60s))
    goto 0x000470
0x000410:
    call (snd_play[]:int32 (var 61s))
    goto 0x000470
0x000428:
    call (snd_play[]:int32 (var 62s))
    goto 0x000470
0x000440:
    call (snd_play[]:int32 (var 63s))
    goto 0x000470
0x000458:
    call (snd_play[]:int32 (var 64s))
    goto 0x000470
0x000470:
    pop
0x000474:
    self.stringpos = (+ self.stringpos 2s)
0x00048C:
    if !(== self.txtsound 71s) goto 0x000714
0x0004A0:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "") goto 0x000714
0x0004C8:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "^") goto 0x000714
0x0004F0:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "/") goto 0x000714
0x000518:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "%") goto 0x000714
0x000540:
    call (snd_stop[]:int32 (var 71s))
    call (snd_stop[]:int32 (var 72s))
    call (snd_stop[]:int32 (var 73s))
    call (snd_stop[]:int32 (var 74s))
    call (snd_stop[]:int32 (var 75s))
    call (snd_stop[]:int32 (var 76s))
    call (snd_stop[]:int32 (var 77s))
    self.rnsound = (floor[]:int32 (random[]:int32 (var 7s)))
    if (== self.rnsound 0s) goto 0x000668
0x000604:
    if (== self.rnsound 1s) goto 0x000680
0x000614:
    if (== self.rnsound 2s) goto 0x000698
0x000624:
    if (== self.rnsound 3s) goto 0x0006B0
0x000634:
    if (== self.rnsound 4s) goto 0x0006C8
0x000644:
    if (== self.rnsound 5s) goto 0x0006E0
0x000654:
    if (== self.rnsound 6s) goto 0x0006F8
0x000664:
    push self.rnsound
    goto 0x000710
0x000668:
    call (snd_play[]:int32 (var 71s))
    goto 0x000710
0x000680:
    call (snd_play[]:int32 (var 72s))
    goto 0x000710
0x000698:
    call (snd_play[]:int32 (var 73s))
    goto 0x000710
0x0006B0:
    call (snd_play[]:int32 (var 74s))
    goto 0x000710
0x0006C8:
    call (snd_play[]:int32 (var 75s))
    goto 0x000710
0x0006E0:
    call (snd_play[]:int32 (var 76s))
    goto 0x000710
0x0006F8:
    call (snd_play[]:int32 (var 77s))
    goto 0x000710
0x000710:
    pop
0x000714:
    if !(== self.txtsound 65s) goto 0x000978
0x000728:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "") goto 0x000960
0x000750:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "^") goto 0x000960
0x000778:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "/") goto 0x000960
0x0007A0:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "%") goto 0x000960
0x0007C8:
    call (snd_stop[]:int32 (var 65s))
    call (snd_stop[]:int32 (var 66s))
    call (snd_stop[]:int32 (var 67s))
    call (snd_stop[]:int32 (var 68s))
    call (snd_stop[]:int32 (var 69s))
    call (snd_stop[]:int32 (var 70s))
    self.rnsound = (floor[]:int32 (random[]:int32 (var 6s)))
    if (== self.rnsound 0s) goto 0x0008CC
0x000878:
    if (== self.rnsound 1s) goto 0x0008E4
0x000888:
    if (== self.rnsound 2s) goto 0x0008FC
0x000898:
    if (== self.rnsound 3s) goto 0x000914
0x0008A8:
    if (== self.rnsound 4s) goto 0x00092C
0x0008B8:
    if (== self.rnsound 5s) goto 0x000944
0x0008C8:
    push self.rnsound
    goto 0x00095C
0x0008CC:
    call (snd_play[]:int32 (var 65s))
    goto 0x00095C
0x0008E4:
    call (snd_play[]:int32 (var 66s))
    goto 0x00095C
0x0008FC:
    call (snd_play[]:int32 (var 67s))
    goto 0x00095C
0x000914:
    call (snd_play[]:int32 (var 68s))
    goto 0x00095C
0x00092C:
    call (snd_play[]:int32 (var 69s))
    goto 0x00095C
0x000944:
    call (snd_play[]:int32 (var 70s))
    goto 0x00095C
0x00095C:
    pop
0x000960:
    self.stringpos = (+ self.stringpos 1s)
0x000978:
    goto 0x000B1C
0x00097C:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "") goto 0x000B1C
0x0009A4:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) " ") goto 0x000B1C
0x0009CC:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "&") goto 0x000B1C
0x0009F4:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "^") goto 0x000B1C
0x000A1C:
    if !(!= (string_char_at[]:int32 (- self.stringpos 1s) self.originalstring) "^") goto 0x000B1C
0x000A4C:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "\\") goto 0x000B1C
0x000A74:
    if !(!= (string_char_at[]:int32 (- self.stringpos 1s) self.originalstring) "\\") goto 0x000B1C
0x000AA4:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "/") goto 0x000B1C
0x000ACC:
    if !(!= (string_char_at[]:int32 self.stringpos self.originalstring) "%") goto 0x000B1C
0x000AF4:
    call (snd_stop[]:int32 self.txtsound)
    call (snd_play[]:int32 self.txtsound)
0x000B1C:
    if !(== (string_char_at[]:int32 self.stringpos self.originalstring) "&") goto 0x000B5C
0x000B44:
    self.stringpos = (+ self.stringpos 1s)
0x000B5C:
    if !(== (string_char_at[]:int32 self.stringpos self.originalstring) "\\") goto 0x000B9C
0x000B84:
    self.stringpos = (+ self.stringpos 2s)
0x000B9C:
    exit
