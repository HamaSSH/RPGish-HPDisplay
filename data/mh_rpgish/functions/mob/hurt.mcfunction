# 攻撃を受けた際のモブのデータ取得
    data modify storage mh_rpgish:temp Data set from entity @s
# 被ダメージ
    execute store result score $Damage Temporary run data get storage mh_rpgish:temp Data.Health
    scoreboard players remove $Damage Temporary 512
# HPからダメージ分減算
    scoreboard players operation @s mh.hp += $Damage Temporary
    scoreboard players operation @s mh.PreviousHP = @s mh.hp
# 回復
    data modify entity @s Health set value 512.0f
# HP<0で死亡処理
    execute if score @s mh.hp matches ..0 run kill @s