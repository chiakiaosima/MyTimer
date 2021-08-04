//
//  ContentView.swift
//  MyTimer
//
//  Created by 青島智明 on 2021/08/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            // 奥から手前方向にレイアウト
            ZStack {
                // 背景画像
                Image("backgroundTimer")
                    //リサイズする
                    .resizable()
                    //セーフエリアを超えて画面全体に配置します
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    // アスペクト比（縦横比）を維持して短辺基準に収まる様にする
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                // 垂直にレイアウト（縦方向にレイアウト）
                // View（部品）間の間隔を30にする
                VStack(spacing: 30.0) {
                    //　テキストを表示する
                    Text("残り10秒")
                        //　文字サイズを指定
                        .font(.largeTitle)
                    
                    // 水平にレイアウト（横方向にレイアウト）
                    HStack {
                        // スタートボタン
                        Button(action: {
                            //ボタンをタップした時のアクション
                        }) {
                            // テキストを表示させる
                            Text("スタート")
                                //　文字サイズを指定
                                .font(.title)
                                // 文字色を白色に指定
                                .foregroundColor(Color.white)
                                //幅高さを140に指定
                                .frame(width: 140, height: 140)
                                // 背景を設定
                                .background(Color("startColor"))
                                // 円形に切り抜く
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        } //　スタートボタンここまで
                        // ストップボタン
                        Button(action: {
                            // ボタンをタップした時のアクション
                        }) {
                            //テキストを表示させる
                            Text("ストップ")
                                // 文字サイスを指定
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                // 文字色を白色に指定
                                .foregroundColor(Color.white)
                                //幅高さを140に指定
                                .frame(width: 140, height: 140)
                                // 背景を設定
                                .background(Color("stopColor"))
                                // 円形に切り抜く
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        } // ストップボタンここまで
                    } // HStackここまで
                }// VStackここまで
            } // ZStackここまで
            // ナビゲーションバーにボタンを追加
            .navigationBarItems(trailing:
                // ナビゲーション遷移
                NavigationLink(destination: SettingView()) {
                    // テキストを表示
                    Text("秒数設定")
                }// NavigetionLink ここまで
            ) // .navigetionBarItems ここまで
        }// NavigationView ここまで
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
