execute if score @s Second matches ..10 run execute if score @s Minutes matches ..10 run title @s actionbar [{"text": "Total Time Played: ","color":"gold"},{"score":{"name":"@s","objective":"Hours"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"Second"},"color":"yellow"}]
execute if score @s Second matches 10.. run execute if score @s Minutes matches ..10 run title @s actionbar [{"text": "Total Time Played: ","color":"gold"},{"score":{"name":"@s","objective":"Hours"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"Second"},"color":"yellow"}]
execute if score @s Second matches 10.. run execute if score @s Minutes matches 10.. run title @s actionbar [{"text": "Total Time Played: ","color":"gold"},{"score":{"name":"@s","objective":"Hours"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"Second"},"color":"yellow"}]
execute if score @s Second matches ..10 run execute if score @s Minutes matches 10.. run title @s actionbar [{"text": "Total Time Played: ","color":"gold"},{"score":{"name":"@s","objective":"Hours"},"color":"yellow"},{"text":"0:","color":"yellow"},{"score":{"name":"@s","objective":"Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"Second"},"color":"yellow"}]
scoreboard players reset @a[scores={time_played=1}] time_played