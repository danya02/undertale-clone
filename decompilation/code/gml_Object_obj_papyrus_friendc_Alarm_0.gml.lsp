0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 18s
    global.facechoice = 4s
    global.faceemotion = 3s
    push -5s
    if !(== 195s:flag 0s) goto 0x000168
0x000058:
    stog.msg[0s] = "\\E3SO^1, ASGORE.../"
    stog.msg[1s] = "\\E0HOW ABOUT MAKING&ME A MEMBER OF&THE ROYAL GUARD?/"
    call (scr_asgface[]:int32 (var 2s) (var 2s))
    stog.msg[3s] = "\\E2* Well^1, Papyrus^1, now&  that the war is&  over.../"
    stog.msg[4s] = "\\E0* We might not need&  the Royal Guard&  anymore./"
    call (scr_papface[]:int32 (var 7s) (var 5s))
    stog.msg[6s] = "\\E7WHAT!?/"
    stog.msg[7s] = "\\E1THEN WHAT WAS&THE POINT OF THE&HUMAN'S QUEST!?/"
    stog.msg[8s] = "\\E3THEY JOURNEYED&ALL THAT WAY.../"
    stog.msg[9s] = "\\E4AND I'M STILL&NOT A MEMBER OF&THE ROYAL GUARD!?/"
    stog.msg[10s] = "\\E0TRULY^1, THIS IS&THE WORST&POSSIBLE ENDING./%%"
0x000168:
    push -5s
    if !(== 195s:flag 1s) goto 0x00024C
0x000184:
    stog.msg[0s] = "\\E3IT SEEMS LIKE YOU&REALLY BOTCHED&YOUR QUEST^1, FRISK./"
    stog.msg[1s] = "\\E0BUT^1, I^1, THE&GREAT PAPYRUS.../"
    stog.msg[2s] = "WILL ALWAYS BE&YOUR FRIEND!!!/"
    call (scr_sansface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "\\E1* no matter how hard&  you try to get&  rid of him./"
    call (scr_papface[]:int32 (var 1s) (var 5s))
    stog.msg[6s] = "\\E1HEY!/"
    stog.msg[7s] = "\\E0THAT'S TRUE./%%"
0x00024C:
    push -5s
    if !(== 195s:flag 2s) goto 0x000384
0x000268:
    stog.msg[0s] = "\\E3FRISK^1, WHY DON'T&YOU TAKE A WALK&AROUND?/"
    call (scr_sansface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "\\E1* frisk^1, why don't you&  fly^1?&* it's faster./"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "\\E0YEAH^1, FRISK^1, WHY&DON'T YOU FLY?/"
    call (scr_torface[]:int32 (var 1s) (var 5s))
    stog.msg[6s] = "\\E1* Hmmm..^1. Flying sounds&  a little dangerous./"
    call (scr_alface[]:int32 (var 3s) (var 7s))
    stog.msg[8s] = "\\E3* But they CAN'T fly./"
    call (scr_undface[]:int32 (var 2s) (var 9s))
    stog.msg[10s] = "\\E2* Not with THAT&  attitude!/%%"
0x000384:
    push -5s
    if !(>= 195s:flag 3s) goto 0x0003D0
0x0003A0:
    stog.msg[0s] = "\\E3FRISK..^1.&TAKE A HIKE./"
    stog.msg[1s] = "\\E0HIKING IS GOOD&FOR YOUR BONES./%%"
0x0003D0:
    push -5s
    stog.flag[(+ 195s:flag 1s)] = 195s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000434:
    exit
