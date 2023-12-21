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
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(MockData.frameWorkArray) {
                    framework in
                    frameworkTitleView(frameWork: framework, isList: false)
                        .onTapGesture {
                            viewModel.selectedObject = framework
                        }
                }
            }
        }
        .sheet(isPresented: $viewModel.isShowingDetail) {
            frameWorkDetailView(frameWork: viewModel.selectedObject ?? MockData.sampleFramework, isShowingDetail: $viewModel.isShowingDetail)
        }
    }
}

#Preview {
    ViewByGrid()
}
