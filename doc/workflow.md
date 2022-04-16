# ワークフロー

## 本資料の目的
つみあげったープロジェクトを実行するにあたっての、ワークフローを記載します。

## Issue対応ワークフロー

1. アサインされたIssueを見つけます。もしくは、自分をアサインしたIssueを立ち上げます。

2. [Projects](https://github.com/flutteruniv/tumiagetter/projects/1)にて、そのIssueをIn Progressに移動します。


3. **developブランチ**から``feature/[issue番号]_[issue名]``の名前でブランチを作成します。  
    - 注:issue名は英語で記載。
    - gitコマンドの例:
```zsh
# developブランチに移動
git checkout develop
# developブランチの最新のデータを取得
git pull origin develop
# featureブランチを作成、移動
git checkout -b feature/1_initial_setting_and_practice_pull_request
```

4. コード修正、追加等の作業をします。

5. 作業後、developブランチの最新と比較の上、add,commit（コメント付き）をし、``origin feature/[issue番号]_[issue名]``にPushします。  
    - **注： 絶対にdevelop,mainに直接Pushしないこと！**
    - gitコマンドの例:
```zsh
# developブランチに移動
git checkout develop
# developブランチの最新のデータを取得
git pull origin develop
# featureブランチに移動
git checkout feature/1_initial_setting_and_practice_pull_request
# ローカルのdevelopブランチの最新データをローカルのfeatureブランチに反映
git pull develop

# 反映データのチェック後問題ないことを確認(問題があれば修正し一番最初に戻る。)
# 変更したファイルをインデックスに追加（ファイル全てをインデックスに追加する場合）
git add .
# コミットメッセージを入力し、コミット
git commit -m 'メッセージ'
# featureブランチにPush
git push origin feature/1_initial_setting_and_practice_pull_request
```

6. 作業完了後、[GitHub](https://github.com/flutteruniv/tumiagetter)にて、プルリクエストを作成するか問われるので、作成します。

7. プルリクエストのコメントに作業内容がわかるように内容を記載し、送信します。  
    - レビュワーの登録(@Umigishi-Aoi)を忘れずに行うこと！
    - CI(自動チェック)の結果を確認すること。failedの場合は修正し、5に戻る。
    - コンフリクトが発生した場合は修正すること。

8. レビューが承認されたら、速やかにマージを行います。  
    - マージされたブランチは削除すること。

9. マージ後、issueをクローズします。

## リリース前　ワークフロー

1. developブランチにてバージョン名等が正しいか、正しく動作するか（リリースビルド等ができるか）を確認します。

2. GitHubにて、developからmainブランチへプルリクエストを作成します。

3. 承認なしでマージを行います。  
    - **developブランチは削除しないこと!**

4. mainブランチに移動し、リリースビルドを行います。  
    - **作業後developブランチに戻ることを忘れずに！**
