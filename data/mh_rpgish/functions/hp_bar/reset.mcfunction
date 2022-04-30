# 名前の適用
    # data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
# リセット
    # say reset
    data modify entity @s CustomNameVisible set value 0b
    tag @s remove InCombat