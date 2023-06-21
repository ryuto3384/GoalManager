//
//  ProgressGrafView.swift
//  GoalManager
//
//  Created by 中島瑠斗 on 2023/06/21.
//

import SwiftUI

struct ProgressGrafView: View {
    var body: some View {
        VStack{
            GroupBox {
                VStack{
                    Spacer()
                    HStack {
                        Text("目標グラフ").font(.title2).foregroundColor(.primary)
                        Spacer()
                    }
                    ProgressGraf().frame(height: 180).padding()
                    Spacer()
                }
            }.padding()

            
        }

    }
}

struct ProgressGrafView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressGrafView()
    }
}
