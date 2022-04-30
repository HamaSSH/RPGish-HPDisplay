# 被ダメージ
    scoreboard players operation $Damage Temporary = $Health Temporary
    scoreboard players remove $Damage Temporary 512
# ダメージ分のスコア減算
    scoreboard players operation @s mh.hp += $Damage Temporary
# Healthを元に戻す
    data modify entity @s Health set value 512.0f
# HP表示
    function mh_rpgish:hp_bar/apply/_
# ダメージ表示
    function mh_rpgish:dmg_indicator/_
# 毒エフェクトかつmh.hp=1の時の処理...。
    
# mh.hp<0で死亡処理
    execute if score @s mh.hp matches ..0 run kill @s