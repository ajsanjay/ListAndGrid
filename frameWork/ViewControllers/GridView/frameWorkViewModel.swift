//
//  frameWorkViewModel.swift
//  frameWork
//
//  Created by jay sabeen on 20/12/23.
//

import SwiftUI

final class frameWorkViewModel: ObservableObject {
    
    var selectedObject: frameWorkModel? {
        didSet { isShowingDetail = true }
    }
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    @Published var isShowingDetail = false
}
