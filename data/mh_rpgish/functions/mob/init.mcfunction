### 初期処理

# モブのステータス → スコアに
    data modify storage mh_rpgish:temp Data set from entity @s
    execute store result score @s mh.hp run data get storage mh_rpgish:temp Data.Health
    execute store result score @s mh.hp_max run data get storage mh_rpgish:temp Data.Health
    execute store result score @s mh.PreviousHP run data get storage mh_rpgish:temp Data.Health
# 死なないようHPを1024に設定(スコアでHPを管理)
    data modify entity @s Attributes append value {Name:generic.max_health,Base:1024}
    data modify entity @s Health set value 512.0f
# リセット
    data remove storage mh_rpgish:temp Data
# Initタグ付け
    tag @s add Init