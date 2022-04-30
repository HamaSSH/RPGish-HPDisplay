### 初期処理

# モブのステータス → スコアに
    data modify storage mh_rpgish:temp Init.Health set from entity @s Health
    execute store result score @s mh.hp run data get storage mh_rpgish:temp Init.Health
    execute store result score @s mh.hp_max run data get storage mh_rpgish:temp Init.Health
# 大きなダメージで死なないようHPを1024に設定(スコアでHPを管理)
    data modify entity @s Attributes append value {Name:"minecraft:generic.max_health",Base:1024.0d}
    data modify entity @s Health set value 512.0f
# Initタグ付け
    tag @s add Init
# リセット
    data remove storage mh_rpgish:temp Init