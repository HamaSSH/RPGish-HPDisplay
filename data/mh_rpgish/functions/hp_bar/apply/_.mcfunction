# HPの割合計算
    scoreboard players operation @s mh.hp_ratio = @s mh.hp
    scoreboard players operation @s mh.hp_ratio *= #40 Constant
    scoreboard players operation @s mh.hp_ratio /= @s mh.hp_max
# HPの割合に応じてCustomNameをHPBarに変換、分岐
    execute if score @s mh.hp_ratio matches ..16 run function mh_rpgish:hp_bar/apply/lv3/0
    execute if score @s mh.hp_ratio matches 17..32 run function mh_rpgish:hp_bar/apply/lv3/1
    execute if score @s mh.hp_ratio matches 33.. run function mh_rpgish:hp_bar/apply/lv2/4
# 名前表示タグ
    data modify entity @s CustomNameVisible set value 1b
# 表示時間
    data modify entity @s PortalCooldown set value 100