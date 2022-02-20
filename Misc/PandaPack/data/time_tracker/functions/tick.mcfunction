scoreboard players add @a timer_ticks 1

scoreboard players add @a[scores={timer_ticks=20..}] Second 1
scoreboard players reset @a[scores={timer_ticks=20..}] timer_ticks

scoreboard players add @a[scores={Second=60..}] Minutes 1
scoreboard players reset @a[scores={Second=60..}] Second

scoreboard players add @a[scores={Minutes=60..}] Hours 1
scoreboard players reset @a[scores={Minutes=60..}] Minutes

execute as @a[scores={time_played=1..}] run function time_tracker:time_played
scoreboard players enable @a time_played

advancement grant @a[scores={Hours=1..}] only panda_pack:time1
advancement grant @a[scores={Hours=24..}] only panda_pack:time24
advancement grant @a[scores={Hours=48..}] only panda_pack:time48
advancement grant @a[scores={Hours=69..}] only panda_pack:time69
advancement grant @a[scores={Hours=100..}] only panda_pack:time100
advancement grant @a[scores={Hours=200..}] only panda_pack:time200
advancement grant @a[scores={Hours=300..}] only panda_pack:time300
advancement grant @a[scores={Hours=400..}] only panda_pack:time400
advancement grant @a[scores={Hours=420..}] only panda_pack:time420