# rtm-mc-wrapper-template

rtm-mc-wrapperを使用してモデルパックを作成するためのテンプレートです。

前提ソフトウェアをなくすために各OSのシェルスクリプトのみを使用しています

# 使用方法
1. config.txtを適切に編集する
    1. `config_version`を使用するrtm-mc-wrapperのバージョンにする
    2. `importPackage` を使用してrtm-mc-wrapperのincludeを行う場合、 `config_included`を`importPackage`するバージョン名にする。
        > 例: `importPackage(Packages.rmw2)`の場合`config_included=v2`とする
2. prepare-winまたはprepare-macを実行する
3. src以下にモデルやスクリプトを追加する
4. build-winまたはbuild-macを実行する
5. build/out.zipをmodsに移動させてテストプレイし、公開する

# ライセンス

CC0 1.0 or later Universal

[![CC0](https://licensebuttons.net/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/deed)

# ファイル

- build/
> d.ts及びモデルパックが生成されるディレクトリ
> build/dtsにd.tsなどがダウンロードされます。
- buildscript/
> prepare, buildで使用するファイルが含まれる
- buildscript/make
> buildscriptの.sh, .ps1の作成ツール。
> テンプレートとして使用する際は削除していただいて問題ありません。
- src/
> モデルパック本体になるディレクトリ
- prepare-win.dat
- prepare-mac
> rtm-mc-wrapperの.d.tsをダウンロードするスクリプト。
> ダブルクリックで実行できます
- build-win.dat
- build-mac
> モデルパックのzipを作成するスクリプト。
> ダブルクリックで実行できます
> build/out.zipとして生成されます
