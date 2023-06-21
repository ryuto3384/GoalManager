//
//  ProgressAddView.swift
//  GoalManager
//
//  Created by 中島瑠斗 on 2023/06/21.
//


import SwiftUI
import Combine

struct ProgressAddView: View {
    @ObservedObject var viewModel = ProgressViewModel()
    @Environment(\.dismiss) var dismiss
    
    @State private var showingAlert = false
    
    var body: some View {
        
        //これで保存されているか確かめられる
        //Text("UserDefaultsの値:\(UserDefaults.standard.integer(forKey: "nowValue"))")
        
        VStack{
            Spacer()
            
            Text("目標名").font(.title2)
            
            HStack{
                TextField("",text: $viewModel.goalString)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                    .multilineTextAlignment(TextAlignment.center)
            }.padding(.bottom, 10.0)
            
            Text("1日の目標勉強時間").font(.title2)
            
            HStack{
                TextField("",value: $viewModel.goalValue,formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100)
                    .multilineTextAlignment(TextAlignment.center)
                    .onReceive(Just(viewModel.goalValue)) { newValue in
                        // 入力された値が1未満の場合、1に制限する
                        if newValue < 1 {
                            viewModel.goalValue = 1
                            showingAlert = true
                        }
                    }.alert("1以上の数字を入力してください", isPresented: $showingAlert) {}
                    Text("分")
                    
            }.padding(.bottom, 10.0)
            
            
            
            Text("今日の勉強時間").font(.title2)
            
            HStack{
                TextField("",value: $viewModel.nowValue,formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100)
                    .multilineTextAlignment(TextAlignment.center)
                Text("分")
            }.padding(.bottom, 10.0)
            
            
            Button("完了"){
                dismiss()
            }
            Spacer()
        }.presentationDetents([.medium])
        
    }
}

struct ProgressAddView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressAddView()
    }
}
