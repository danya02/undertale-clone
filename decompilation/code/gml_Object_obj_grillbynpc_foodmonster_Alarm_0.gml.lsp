0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hmmm..^1.&* Isn't human food different&  from monster food?/"
    stog.msg[1s] = "* It does things like \"spoil.\"/"
    stog.msg[2s] = "* And when you eat it^1, it&  passes all the way through&  your whole body./"
    stog.msg[3s] = "* Disgusting./"
    stog.msg[4s] = "* I'd love to try it sometime./%%"
    if !(> self.talkedto 0s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "* And I've heard they have&  things called bathrooms./%%"
0x0000E0:
    if !(>= global.plot 122s) goto 0x000198
0x0000F4:
    stog.msg[0s] = "* To a human^1, monster food&  would be very interesting./"
    stog.msg[1s] = "* As soon as you eat it^1, it&  converts perfectly into&  energy./"
    stog.msg[2s] = "* ... that makes me wonder^1.&* How do humans do it?/"
    stog.msg[3s] = "* Eat during battle...?/%%"
    if !(> self.talkedto 0s) goto 0x000198
0x000168:
    stog.msg[0s] = "* Ice cream in one hand^1,&  sword in the other./"
    stog.msg[1s] = "* That's the way of the&  monster warrior.../%%"
0x000198:
    push -5s
    if !(== 67s:flag 1s) goto 0x000270
0x0001B4:
    stog.msg[0s] = "* Hmmm^1, this is around the&  time that Sans comes in./"
    stog.msg[1s] = "* Then^1, a little bit later^1,&  his brother comes in^1,&  irritated./"
    stog.msg[2s] = "* Yes^1, his brother^1.&* Papyrus./"
    stog.msg[3s] = "* He's an interesting fellow./"
    stog.msg[4s] = "* He always orders a glass of&  milk.../"
    stog.msg[5s] = "* He says it's \"full of&  strong bones.\"/%%"
    if !(> self.talkedto 0s) goto 0x000270
0x000258:
    stog.msg[0s] = "* Hope he shows up today./%%"
0x000270:
    push -5s
    if !(== 7s:flag 1s) goto 0x0002BC
0x00028C:
    stog.msg[0s] = "* Soon^1, I'll be able to try&  some human food.../"
    stog.msg[1s] = "* And then I guess I'll try&  a human bathroom^1, too./%%"
0x0002BC:
    if !(== self.sansmode 1s) goto 0x000300
0x0002D0:
    stog.msg[0s] = "* Sans is interesting^1.&* He has told me about all&  kinds of incredible foods./"
    stog.msg[1s] = "* But^1, despite his knowledge^1,&  he always orders the worst&  burger off the menu./%%"
0x000300:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000340:
    exit
