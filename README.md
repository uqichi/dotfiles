# dotfiles

setup for mac.


ユーザー名: `tamura_yukichi`

[App Store]

最新のmacOSにアップグレード: macOS High Sierra (2017/11/28時点)

[システム環境設定]

- Dock
	- 画面上の位置: 左
	- Dockを自動的に隠す/表示: on
- セキュリティとプライバシー
	- プライバシー
		- 位置情報: off
- キーボード
	- キーボード
		- キーのリピート: 最速
		- リピート入力認識までの時間: 最短
		- ファンクションキーとして使用: on
	- 入力ソース
		- 半角カタカナ: on
- マウス
	- 軌跡の速さ: 最速
	- スクロールの速さ: 最速
	- ダブルクリックの間隔: 最速
- トラックパッド
	- 全て: on
	- 軌跡の速さ: 最速
- 日付と時刻
	- 時計
		- 秒を表示: on
		- 日付を表示: on

[その他]

- メニューバーのバッテリー状況
	- 割合（％）を表示: on

# Setup

Command Line Toolsをインストール

```
xcode-select --install
```

公開鍵を作成してgithubに登録

```
ssh-keygen
cat ~/.ssh/id_rsa.pub | pbcopy

# https://github.com/settings/keys
```

dotfilesをHOMEディレクトリにクローン

```
git clone git@github.com:chkkchy/dotfiles.git ~
```

```
make install
```


＊ ~/.config/brewfile/Brewfile



deps for setup

- Apple Command Line Tools (Xcode)
- [Homebrew](https://github.com/Homebrew/brew)
- [Homebrew-file](https://github.com/rcmdnk/homebrew-file)
- [Prezto](https://github.com/chkkchy/prezto)

