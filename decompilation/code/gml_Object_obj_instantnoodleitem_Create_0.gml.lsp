0x000000:
    self.con = 1s
    stog.flag[21s] = 1s
    stog.msg[1s] = "* You put some water in&  the pot and place it on&  the heat./"
    stog.msg[2s] = "* You wait for the water&  to boil.../"
    stog.msg[3s] = "* ..^4.&* ..^4.&* .../"
    stog.msg[4s] = "* It'^2s boiling./"
    stog.msg[5s] = "* You place the noodle^1s&  into the pot./"
    stog.msg[6s] = "* 4^3 minutes lef^3t until&  the noodle^2s are finished./"
    stog.msg[7s] = "* 3^3 minutes lef^3t until&  the noodle^2s are finished./"
    stog.msg[8s] = "* 2^3 minutes lef^3t until&  the noodle^2s are finished./"
    stog.msg[9s] = "* 1^3 minute lef^3t until&  the noodle^2s are finished./"
    stog.msg[10s] = "* The noodle^3s are finished./"
    stog.msg[11s] = "* ... they don't taste very&  good./"
    stog.msg[12s] = "* You add the flavor packet./"
    stog.msg[13s] = "* That's better./"
    stog.msg[14s] = "* Not great^1, but better./"
    stog.msg[15s] = "  %%"
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You remove the Instant&  Noodles from their&  packaging./") (var 0s) (var 146s))
0x0001C0:
    exit
