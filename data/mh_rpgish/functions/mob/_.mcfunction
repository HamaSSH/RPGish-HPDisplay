### 常時実行function (as @e[type=#mh_rpgish:mobs])

# モブ召喚時に初期処理
  execute if entity @s[tag=!Init] run function mh_rpgish:mob/init
# HPが最大でない時では回復によるHP変化も検知したいため、最大時とそうでない場合で処理を分ける
  # HPMAXの場合(HurtTimeの検知)
    execute if score @s mh.hp = @s mh.hp_max if data entity @s {HurtTime:9s} run function mh_rpgish:mob/hurt
  # HPMAXでない場合
    execute unless score @s mh.hp = @s mh.hp_max run function mh_rpgish:mob/check_hit