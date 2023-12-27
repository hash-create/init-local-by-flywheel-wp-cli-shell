# Init Local by Flywheel wp-cli

[Local by Flywheel（Local）](https://localwp.com/) で新規作成した WordPress サイトを初期化、日本語化するスクリプトです。

このスクリプトを実行すると下記の設定が行われます。

- WordPress 日本語コアファイルをアップデート
- サイトの言語を `日本語` に設定
- タイムゾーンを `東京` に設定
- 日付フォーマットを `Y-m-d` に設定
- 時刻フォーマットを `H:i` に設定
- パーマリンクを投稿名に設定
- サンプルの投稿、固定ページを削除
- サンプルのコメントを削除
- カテゴリー名を日本語に変更
- デバッグモードをtrueにする
- テーマを全削除
- プラグインを一旦すべて削除する
- 下記プラグインをインストール
  - [WP Multibyte Patch](https://ja.wordpress.org/plugins/wp-multibyte-patch/)
  - [Query Monitor](https://ja.wordpress.org/plugins/query-monitor/)
  - [All-in-One WP Migration](https://ja.wordpress.org/plugins/all-in-one-wp-migration/)
  - [Admin Columns](https://ja.wordpress.org/plugins/codepress-admin-columns/)
  - [Admin Menu Editor](https://ja.wordpress.org/plugins/admin-menu-editor/)
  - [Advanced Custom Fields (ACF)](https://ja.wordpress.org/plugins/advanced-custom-fields/)
  - [All in One SEO](https://ja.wordpress.org/plugins/all-in-one-seo-pack/)
  - [Custom Post Type UI](https://ja.wordpress.org/plugins/custom-post-type-ui/)
  - [Yoast Duplicate Post](https://ja.wordpress.org/plugins/duplicate-post/)
  - [Easy Table of Contents](https://ja.wordpress.org/plugins/easy-table-of-contents/)
  - [Intuitive Custom Post Order](https://ja.wordpress.org/plugins/intuitive-custom-post-order/)
  - [MW WP Form](https://ja.wordpress.org/plugins/mw-wp-form/)
- リライトルールを更新

## 使い方

1. Local by Flywheel でサイトを新規作成する。
1. サイトを右クリックして `Open Site SSH` を開く。
1. コンソール上で下記コマンドを実行する。

```Shell
wp eval 'exec(file_get_contents("https://raw.githubusercontent.com/hash-create/init-local-by-flywheel-wp-cli-shell/master/init.sh")." > /dev/null", $output); printf("%s\n", implode("\n", $output));'
```

## 参考サイト、および参考のGit
https://github.com/ko31/init-local-by-flywheel

https://wp.go-sign.info/init-local-by-flywheel-to-ja/

https://ayaoriko.com/coding/wordpress/custom-wp-cli-shell/