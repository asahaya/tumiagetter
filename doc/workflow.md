# ワークフロー

## 本資料の目的
つみあげったープロジェクトを実行するにあたっての、ワークフローを記載します。

## ワークフロー

1. アサインされたIssueを見つけます。もしくは、自分をアサインしたIssueを立ち上げます。

2. [Projects](https://github.com/flutteruniv/tumiagetter/projects/1)にて、そのIssueをIn Progressに移動します。

3. 　**developブランチ**から``feature/[issue番号]_[issue名]``の名前でブランチを作成します。  
（例：　feature/1_initial_setting_and_practice_pull_request）

4. コード修正、追加等の作業をします。

5. 作業後、add , commit （コメント付き）をし、``origin feature/[issue番号]_[issue名]``にPushします。  
**注　：　絶対にdevelop,mainに直接Pushしないこと！**

6. 作業完了後、[GitHub](https://github.com/flutteruniv/tumiagetter)にて、プルリクエストを作成するか、問われるので、作成します。

7. プルリクエストのコメントに作業内容がわかるように内容を記載し、送信します。  
**レビュワーへのメンション ( @Umigishi-Aoi )を忘れずに行うこと！**

8. レビューが承認されたら、速やかにマージを行います。  
**マージされたブランチは削除すること**

9. マージ後、issueをクローズします。

## リリース前　ワークフロー

1. developブランチにてバージョン名等が正しいか、正しく動作するか（リリースビルド等ができるか）を確認します。

2. develop から　mainブランチへプルリクエストを作成します。

3. 承認なしでマージを行います。  
**developブランチは削除しないこと**

4. mainブランチに移動し、リリースビルドを行います。  
**作業後developブランチに戻ることを忘れずに！**
