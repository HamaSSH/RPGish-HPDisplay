### 初期処理

# モブのステータス → スコアに
  data modify storage mh_rpgish:temp Data set from entity @s
  execute store result score @s mh.hp run data get storage mh_rpgish:temp Data.Health
  execute store result score @s mh.hp_max run data get storage mh_rpgish:temp Data.Health
  execute store result score @s mh.PreviousHP run data get storage mh_rpgish:temp Data.Health
# リセット
  data remove storage mh_rpgish:temp Data
# Initタグ付け
  tag @s add Init