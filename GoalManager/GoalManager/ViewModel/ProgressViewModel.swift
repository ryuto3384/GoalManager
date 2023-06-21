//
//  ProgressViewModel.swift
//  GoalManager
//
//  Created by 中島瑠斗 on 2023/06/21.
//

import Foundation
import SwiftUI

class ProgressViewModel: ObservableObject{
    
    @AppStorage("goalString") var goalString = ""
    @AppStorage("nowValue") var nowValue = 0
    @AppStorage("goalValue") var goalValue = 30
    
}
