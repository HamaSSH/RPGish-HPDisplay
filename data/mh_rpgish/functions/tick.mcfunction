### 常時実行function

# 全てのモブとしての常時実行function
    execute as @e[type=#mh_rpgish:mobs] at @s run function mh_rpgish:mob/_
# ダメージ表示用のitemエンティティとしての常時実行
    execute as @e[type=item,tag=DmgDisplay] if data entity @s {PortalCooldown:0} run kill @s