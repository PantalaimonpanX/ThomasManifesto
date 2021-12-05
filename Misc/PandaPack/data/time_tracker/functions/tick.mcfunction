scoreboard players add @a timer_ticks 1

scoreboard players add @a[scores={timer_ticks=20..}] Second 1
scoreboard players reset @a[scores={timer_ticks=20..}] timer_ticks

scoreboard players add @a[scores={Second=60..}] Minutes 1
scoreboard players reset @a[scores={Second=60..}] Second

scoreboard players add @a[scores={Minutes=60..}] Hours 1
scoreboard players reset @a[scores={Minutes=60..}] Minutes