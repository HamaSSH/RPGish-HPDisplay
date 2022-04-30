# 被ダメージ
    scoreboard players operation $Heal Temporary = $Health Temporary
    scoreboard players remove $Heal Temporary 512
# 回復量分のスコア加算
    scoreboard players operation @s mh.hp += $Heal Temporary
    execute if score @s mh.hp >= @s mh.hp_max run scoreboard players operation @s mh.hp = @s mh.hp_max
# Healthを元に戻す
    data modify entity @s Health set value 512.0f
# HP表示
    function mh_rpgish:hp_bar/apply/_