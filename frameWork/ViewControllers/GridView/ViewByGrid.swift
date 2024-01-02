//
//  ViewByGrid.swift
//  frameWork
//
//  Created by jay sabeen on 20/12/23.
//

import SwiftUI

struct ViewByGrid: View {
    
    @StateObject var viewModel = frameWorkViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameWorkArray) {
                        framework in
//                        NavigationLink(value: framework) {
//                            frameworkTitleView(frameWork: framework)
//                        }
                        frameworkTitleView(frameWork: framework)
                            .onTapGesture {
                                viewModel.selectedObject = framework
                            }
                    }
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
//            .navigationDestination(for: frameWorkModel.self) {
//                framework in
//                frameWorkDetailView(viewModel: FrameWorkDetailVM(frameWork: framework, isShowingDetail: $viewModel.isShowingDetail))
//            }
            .sheet(isPresented: $viewModel.isShowingDetail, content: {
                frameWorkDetailView(viewModel: FrameWorkDetailVM(frameWork: viewModel.selectedObject ?? MockData.sampleFramework, isShowingDetail: $viewModel.isShowingDetail))
            })
        }
    }
}

#Preview {
    ViewByGrid()
}
