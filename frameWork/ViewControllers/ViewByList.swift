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
            List(MockData.frameWorkArray) { framework in
                    frameworkTitleView(frameWork: framework, isList: true)
                .onTapGesture {
                    viewModel.selectedObject = framework
                }
                .listStyle(.plain)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .sheet(isPresented: $viewModel.isShowingDetail, content: {
                frameWorkDetailView(viewModel: FrameWorkDetailVM(frameWork: viewModel.selectedObject ?? MockData.sampleFramework, isShowingDetail: $viewModel.isShowingDetail))
            })
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    ViewByList()
}
