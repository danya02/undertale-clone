0x000000:
    self.q = (+ self.q 1s)
    self.quiztimer = 300s
    self.phase = 1s
    self.answer = -1s
    stog.alarm[4s] = 90s
    [obj_heart].movement = 99s
    if !(== self.q 99s) goto 0x0000F4
0x000070:
    stog.alarm[4s] = 60s
    self.qtext = "What's a pretzel's#favorite color?"
    self.a1 = "Black"
    self.a2 = "Yellow"
    self.a3 = "Red"
    self.a4 = "Dusk"
    self.correct = 2s
    call (event_user[]:int32 (var 1s))
0x0000F4:
    if !(== self.q 1s) goto 0x00018C
0x000108:
    stog.alarm[4s] = 80s
    self.qtext = "What's the prize#for answering#correctly?"
    self.a1 = "Money"
    self.a2 = "Mercy"
    self.a3 = "New car"
    self.a4 = "More questions"
    self.correct = 3s
    call (event_user[]:int32 (var 1s))
0x00018C:
    if !(== self.q 2s) goto 0x000224
0x0001A0:
    stog.alarm[4s] = 60s
    self.qtext = "What's the king's#full name?"
    self.a1 = "Lord Fluffybuns"
    self.a2 = "Fuzzy Pushover"
    self.a3 = "Asgore Dreemurr"
    self.a4 = "Dr. Friendship"
    self.correct = 2s
    call (event_user[]:int32 (var 1s))
0x000224:
    if !(== self.q 3s) goto 0x0002BC
0x000238:
    stog.alarm[4s] = 60s
    self.qtext = "What are robots#made of?"
    self.a1 = "Hopes&Dreams"
    self.a2 = "Metal&Magic"
    self.a3 = "Snips&Snails"
    self.a4 = "Sugar&Spice"
    self.correct = 1s
    call (event_user[]:int32 (var 1s))
0x0002BC:
    if !(== self.q 4s) goto 0x000354
0x0002D0:
    self.qtext = "Two trains, Train A and Train B,#simultaneously depart Station A#and Station B.#Station A and Station B are 252.5 miles#apart from each other.#Train A is moving at 124.7mph towards#Station B, and Train B is moving at#253.5mph towards station A.#If both trains departed at 10:00AM and it#is now 10:08, how much longer until#both trains pass each other?"
    self.a1 = "31.054 minutes"
    self.a2 = "16.232 minutes"
    self.a3 = "32.049 minutes"
    self.a4 = "32.058 minutes"
    self.correct = 3s
    stog.alarm[4s] = 90s
    call (event_user[]:int32 (var 1s))
0x000354:
    if !(== self.q 5s) goto 0x000410
0x000368:
    stog.alarm[4s] = 60s
    self.qtext = "How many flies are#in this jar?"
    self.a1 = "54"
    self.a2 = "53"
    self.a3 = "55"
    self.a4 = "52"
    self.correct = 0s
    call (event_user[]:int32 (var 1s))
    call (instance_create[]:int32 (var 305s) (var 120s) (var 280s))
0x000410:
    if !(== self.q 6s) goto 0x0004CC
0x000424:
    stog.alarm[4s] = 60s
    self.qtext = "What monster is this?"
    self.a1 = "Froggit"
    self.a2 = "Whimsun"
    self.a3 = "Moldsmal"
    self.a4 = "Mettaton"
    self.correct = 3s
    call (event_user[]:int32 (var 1s))
    call (instance_create[]:int32 (var 303s) (var 120s) (var 250s))
0x0004CC:
    if !(== self.q 7s) goto 0x000564
0x0004E0:
    self.qtext = "Would you smooch#a ghost?"
    self.a1 = "Heck Yeah"
    self.a2 = "Heck Yeah"
    self.a3 = "Heck Yeah"
    self.a4 = "Heck Yeah"
    self.correct = 5s
    stog.alarm[4s] = 30s
    call (event_user[]:int32 (var 1s))
0x000564:
    if !(== self.q 8s) goto 0x0005FC
0x000578:
    stog.alarm[4s] = 45s
    self.qtext = "How many letters in#the name Mettaton"
    self.a1 = "special1"
    self.a2 = "special1"
    self.a3 = "special1"
    self.a4 = "special1"
    self.correct = 2s
    call (event_user[]:int32 (var 1s))
0x0005FC:
    if !(== self.q 9s) goto 0x000680
0x000610:
    stog.alarm[4s] = 200s
    self.qtext = "In the dating#simulation video game#\"Mew Mew Kissy Cutie\"#what is Mew Mew's#favorite food?"
    self.a1 = "Froggit"
    self.a2 = "Whimsun"
    self.a3 = "Moldsmal"
    self.a4 = "Mettaton"
    self.correct = 5s
0x000680:
    if !(== self.q 10s) goto 0x000718
0x000694:
    stog.alarm[4s] = 70s
    self.qtext = "Who does Dr. Alphys#have a crush on?"
    self.a1 = "Undyne"
    self.a2 = "Asgore"
    self.a3 = "The human"
    self.a4 = "Don't know"
    self.correct = 6s
    call (event_user[]:int32 (var 1s))
0x000718:
    if !(== self.q 14s) goto 0x0007B0
0x00072C:
    self.qtext = "How bright is#this text?"
    self.a1 = "85% Bright"
    self.a2 = "84% Bright"
    self.a3 = "86% Bright"
    self.a4 = "83% Bright"
    self.correct = 1s
    stog.alarm[4s] = 60s
    call (event_user[]:int32 (var 1s))
0x0007B0:
    exit
