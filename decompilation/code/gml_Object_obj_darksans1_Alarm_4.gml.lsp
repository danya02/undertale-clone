0x000000:
    global.faceemotion = 0s
    global.facechoice = 3s
    global.typer = 17s
    [obj_mainchara].visible = 1s
    self.sprite_index = 1363s
    self.image_index = 0s
    [obj_mainchara].facing = 3s
    global.facing = 3s
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    stog.msg[0s] = "* heheh... the old whoopee&  cushion in the hand&  trick./"
    stog.msg[1s] = "* it's ALWAYS funny./"
    stog.msg[2s] = "* anyways^1,&  you're a human, right?/"
    stog.msg[3s] = "\\E1* that's hilarious./"
    if !(> self.M1 0s) goto 0x000158
0x0000F8:
    stog.msg[0s] = "* heh^1, the old whoopee&  cushion in the hand&  trick.../"
    stog.msg[1s] = "\\E1* wait a sec..^1.&* have you heard it before&  or something?/"
    stog.msg[2s] = "\\E1* you turned around before&  i said to..^1.&* ... weird./"
    stog.msg[3s] = "* ... whatever^1.&* you're a human^1, right?/"
0x000158:
    stog.msg[4s] = "\\E0* i'm sans^1.&* sans the skeleton./"
    stog.msg[5s] = "* im actually supposed to&  be on watch for&  humans right now./"
    stog.msg[6s] = "* but..^1. y'know.../"
    stog.msg[7s] = "\\E1* i dont really care about&  capturing anybody./"
    stog.msg[8s] = "\\E0* now my brother^1,&  papyrus.../"
    stog.msg[9s] = "* he's a human-hunting&  FANATIC./"
    stog.msg[10s] = "\\E1* hey^1, actually^1, I think&  that's him over there./"
    stog.msg[11s] = "\\E0* i have an idea^1.&* go through this gate&  thingy./"
    stog.msg[12s] = "* yeah, go right through^1.&* my bro made the bars&  too wide to stop anyone./%%"
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x0003DC
0x000244:
    stog.msg[0s] = "* heheh... the old whoopee&  cushion in the hand&  trick./"
    stog.msg[1s] = "* it's ALWAYS funny./"
    stog.msg[2s] = "* .../"
    stog.msg[3s] = "\\E1* that's^1, uh^1.&* your cue to laugh./"
    stog.msg[4s] = "\\E2* or^1, uh^1, to emote&  at all...?/"
    stog.msg[5s] = "\\E0* .../"
    stog.msg[6s] = "\\E1* (gee^1, lady^1, you really&  know how to pick&  'em, huh...?)/"
    stog.msg[7s] = "\\E2* OK^1, that's fine^1.&* everyone's got their&  own sense of humor./"
    stog.msg[8s] = "\\E0* i'm sans^1.&* sans the skeleton./"
    stog.msg[9s] = "* im actually supposed to&  be on watch for&  humans right now./"
    stog.msg[10s] = "* but..^1. y'know.../"
    stog.msg[11s] = "\\E1* i dont really care about&  capturing anybody./"
    stog.msg[12s] = "\\E0* now my brother^1,&  papyrus.../"
    stog.msg[13s] = "* he's a human-hunting&  FANATIC./"
    stog.msg[14s] = "\\E1* hey^1, actually^1, I think&  that's him over there./"
    stog.msg[15s] = "\\E0* i have an idea^1.&* go through this gate&  thingy./"
    stog.msg[16s] = "* yeah, go right through^1.&* my bro made the bars&  too wide to stop anyone./%%"
0x0003DC:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
0x00040C:
    exit
