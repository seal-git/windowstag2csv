# windowstag2csv

## about 
Tag付けされたWindowsのファイルのタグ情報をcsvに出力するスクリプトです。
タグ管理ソフト「TaggingForWindows」へのインポートに対応しています。
Windows10でのみ動作確認しています。

This repo contains a script that outputs the tag information of Windows files to csv.
It supports importing into "TaggingForWindows", the tag management software.

## how to use
1. パスを指定する

    デフォルトでは `./data` が指定されています。`windowstag2csv.ps1`を編集してパスを指定してください。
   

2. main.batを実行

    tag.csvが生成されます。
   
3. TaggingForWindowsにインポート