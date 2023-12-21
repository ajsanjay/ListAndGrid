//
//  ViewByList.swift
//  frameWork
//
//  Created by jay sabeen on 21/12/23.
//

import SwiftUI

struct ViewByList: View {
    
    @StateObject var viewModel = frameWorkViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameWorkArray) { framework in
                    NavigationLink(destination: frameWorkDetailView(frameWork: framework, isShowingDetail: $viewModel.isShowingDetail)) {
                        frameworkTitleView(frameWork: framework, isList: true)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationBarHidden(true)
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    ViewByList()
}
