# ブロックプログラミング環境

## 概要
ブロックプログラミング環境は、プログラミング言語を習得しなくてもロボット制御部プログラムを作成することができるヴィジュアルプログラミング環境です。

## ブロックプログラミング環境について
本ソフトウェアは、MITメディアラボのScratchをベースにロボットプログラミング用に改造しています。 ["Scratch 1.4ソースコード"](http://wiki.scratch.mit.edu/wiki/Scratch_1.4_Source_Code)を使用しています。Windows / Mac OS X / Raspbian(Raspberry Pi)上で動作します。Arduino互換機であるロボット制御基板Studuino上で動作するプログラムを作成することができます。Studuino基板との通信部分を内包しているので、煩わしい操作なしでロボットとの通信や作成したプログラムの転送を行うことができます。

### Scratch 1.4ソースコードからの変更

ロボット制御プログラミング環境に特化しています
 - MotionパレットにStuduinoで使用するアクチュエーター制御ブロックを用意しました
 - SensingパレットにStuduinoで使用するセンサーのレポーターブロックを用意しました
 - Arduino言語への変換ができます
 - Studuino基板との通信機能を実装しています
 - Looks, Sound, Penパレットの削除しました
 - スプライト、ステージ機能を削除しています
 - 並列実行ができません

##使い方
環境構築は、
```bash  
./install.sh  
```  
を実行してください。
起動は、
```bash
./bpe.sh
```
を実行して下さい。
ブロックプログラミング環境の詳細な使い方は、[Studuinoプログラミング環境 取扱説明書](http://www.artec-kk.co.jp/studuino/docs/jp/Studuino_manual.pdf)の5章を参照してください。

##ライセンス
ブロックプログラミング環境のユーザーインターフェース部分(/studuinoBPE)は、Scratch 1.4ソースコードを使用しています。
下記のファイルは、Scratch Source Code License(Scratch Source Code License.txt)です。
 - /studuinoBPE/studuinoBPE.image
 - /studuinoBPE/ScratchSkin/*
それ以外のファイルは、GPL v2(gpl-2.0.txt)です。

Studuinoとの通信機能(/common以下)は、GPL v2(gpl-2.0.txt)です.

javaフォルダにあるファイルは、javaフォルダ以下のTHIRDPARTYLICENSEREADME.txtを参照してください。

##コンタクト
info@artec-kk.co.jp

-----
Copyright ©2014 ArTec Co., LTD.

