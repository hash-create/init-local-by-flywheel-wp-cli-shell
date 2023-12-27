#!/bin/bash

# 日本語版のインストール
wp core update --locale=ja --force

# サイトの言語を設定
wp core language install ja --activate

# タイムゾーンを設定
wp option update timezone_string 'Asia/Tokyo'

# 日付フォーマットを設定
wp option update date_format 'Y-m-d'

# 時刻フォーマットを設定
wp option update time_format 'H:i'

# パーマリンクを投稿名に設定
wp rewrite structure '/%postname%/'

# サンプルの投稿、固定ページを削除
wp post delete 1 2 3 --force

# サンプルのコメントを削除
wp comment delete 1 --force

# カテゴリー名を日本語に変更
wp term update category 1 --name='未分類'

# デバッグモードをtrueにする
wp config set WP_DEBUG true --raw

# テーマを全削除
wp theme delete --all

# プラグインを一旦すべて削除する
wp plugin delete --all

# 必要なプラグインインストール
wp plugin install wp-multibyte-patch --activate
wp plugin install query-monitor --activate
wp plugin install all-in-one-wp-migration --activate
wp plugin install codepress-admin-columns --activate
wp plugin install admin-menu-editor --activate
wp plugin install advanced-custom-fields --activate
wp plugin install all-in-one-seo-pack
wp plugin install custom-post-type-ui --activate
wp plugin install duplicate-post --activate
wp plugin install easy-table-of-contents --activate
wp plugin install intuitive-custom-post-order --activate
wp plugin install mw-wp-form --activate

# リライトルールを更新
wp rewrite flush

# Mailhog メールが文字化けしないよう WP Multibyte Patch の設定調整
# https://eastcoder.com/code/wp-multibyte-patch/
echo "<?php
\$wpmp_conf['mail_mode'] = 'UTF-8';
\$wpmp_conf['patch_wp_mail'] = false;
?>
" >> wp-content/wpmp-config.php
