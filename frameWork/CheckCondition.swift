//
//  CheckCondition.swift
//  frameWork
//
//  Created by jay sabeen on 21/12/23.
//

import SwiftUI

struct CheckCondition: View {
    
    var isList = false
    
    var body: some View {
        if isList {
            ViewByList()
        } else {
            ViewByGrid()
        }
    }
}

#Preview {
    CheckCondition()
}
