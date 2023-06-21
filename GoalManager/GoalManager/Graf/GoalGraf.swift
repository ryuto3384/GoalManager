//
//  GoalGraf.swift
//  GoalManager
//
//  Created by 中島瑠斗 on 2023/06/21.
//

import Foundation
import Charts
import SwiftUI

struct progressCharts: Identifiable {
    var title: String
    var value: Double
    var color: Color = .green
    var id: String {
        return title + String(value)
    }
    
}
