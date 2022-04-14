# つみあげったープロジェクトの始め方

## 本資料の内容

つみあげったープロジェクトを始めるに当たり、初めてアプリを実行する際の方法について記載します。

## 始め方

### ローカルへのクローン

tumiagetterフォルダを管理したいディレクトリにターミナルで移動し、

```
git clone git@github.com:flutteruniv/tumiagetter.git
```
を実行してください。

Source Treeを使っている方は、新規 → URLからクローンで、  

ソースURLに``git@github.com:flutteruniv/tumiagetter.git``を入力し、

保存場所を設定の後、ローカルのtumiagetterフォルダを作成してください。

### FVM の導入

#### Mac の方

[こちらの記事](https://zenn.dev/riscait/articles/flutter-version-management)を参考に、
FVMのインストール、パスの設定をしてください。

#### Windowsの方

[こちらの記事](https://qiita.com/idani/items/0e45d037b4c2a93840a7)を参考にFVMのインストール、パスの設定をしてください。

``dart pub global activate fvm``で行う方法は非推奨です。
中盤に直接ダウンロードする方法が書かれているので、そちらで実行してください。

#### FVMの適用

tumiagetterプロジェクトのルートディレクトリに移動し、

```
fvm install
```

を実行してください。

IDEでVScodeを使われている方は以上で設定完了です。

Android Studio を使われている方は、
Preferences > Language & Frameworks > Flutter の 「SDK」内 Flutter SDK path　に以下のパスを入力します。
``/{プロジェクトまでのパス}/.fvm/flutter_sdk``


### テスト実行

エミュレータ（Android Emulator Pixel 5 API31　推奨）にてアプリを実行してみてください。

無事実行されれば初期設定は完了です。



