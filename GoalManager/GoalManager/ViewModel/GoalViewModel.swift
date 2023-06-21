//
//  GoalViewModel.swift
//  GoalManager
//
//  Created by 中島瑠斗 on 2023/06/21.
//

import Foundation
import SwiftUI

class GoalViewModel: ObservableObject{
    
    @AppStorage("goalTitle") var goalTitle = ""
    @AppStorage("goalNumber") var goalNumber = 0
}
