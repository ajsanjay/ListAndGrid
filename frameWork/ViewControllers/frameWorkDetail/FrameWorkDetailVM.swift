//
//  FrameWorkDetailVM.swift
//  frameWork
//
//  Created by jay sabeen on 02/01/24.
//

import SwiftUI

final class FrameWorkDetailVM: ObservableObject {
    
    let frameWork: frameWorkModel
    var isShowingDetail: Binding<Bool>
    @Published var isSafariOpened = false
    
    init(frameWork: frameWorkModel, isShowingDetail: Binding<Bool>) {
        self.frameWork = frameWork
        self.isShowingDetail = isShowingDetail
    }
    
}
