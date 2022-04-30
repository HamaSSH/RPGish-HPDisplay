## RPGish-HPDisplay (RPG風HP表示、ダメージ表示データパック)

マイクラにRPGの戦闘の風味を足します。<制作途中>

![2021-02-11_12 25 35](https://user-images.githubusercontent.com/78842898/166111524-b363d19f-2ffd-4beb-a8f7-b730401f0fd0.png)

将来未完成な部分を実装して完全なものになるかは不明ですが、現時点までの実装は悪くはないと思います。

## 完成:
  
  - ボスモブ(エンダードラゴン、ウィザー)以外のモブがダメージを受けた際、頭上にダメージ値を表示
  - ボスモブ以外のモブがダメージを受けた/HPを回復した際、5秒間HPバーを表示

## 未完成:

  - 飼いならしたオオカミに対する処理 (参考: https://bugs.mojang.com/browse/MC-193202)
  - 毒エフェクトを受けた状態でHPスコアが1になった際の処理 (現時点では毒で死に至る)
  - もともと名前が付けていた場合(名札使用等)、HPバー表示後にもともとの名前に戻す処理
  - 512.0f以上のダメージを与えた場合の処理
