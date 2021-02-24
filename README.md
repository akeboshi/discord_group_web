# README

続くかは不明だが、 discord oauth を使ってちょっとした bot を作る

discord の role は権限に紐づきがちなので、groupメンション用に使えない。

## 構想

web app 側
1. ログインする
2. グループを作る
3. グループに join する (discord のユーザidで保存される)

discord chat 側
1. 適当なチャット欄で web app 側で作ったグループ名をpostする
2. グループに登録されているメンバー全員に `@` をつけてメンションする
  1. online 状態以外の人には送らないみたいなのも出来ると良い