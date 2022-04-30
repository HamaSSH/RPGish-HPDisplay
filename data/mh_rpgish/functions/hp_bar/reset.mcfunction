# HPバー表示名前のリセット
    data modify entity @s CustomName set value ""
    data modify entity @s CustomNameVisible set value 0b
# もし元々の名前があれば戻す
    # data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
    # HP表示をする前にCustomNameを保存しておく