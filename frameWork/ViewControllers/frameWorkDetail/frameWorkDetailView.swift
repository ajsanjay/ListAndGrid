//
//  frameWorkDetailView.swift
//  frameWork
//
//  Created by jay sabeen on 19/12/23.
//

import SwiftUI

struct frameWorkDetailView: View {
    
    @ObservedObject var viewModel: FrameWorkDetailVM
    
    var body: some View {
        VStack {
            closeButton(isShowingDetail: $viewModel.isShowingDetail.wrappedValue)
            frameworkTitleView(frameWork: viewModel.frameWork)
            Text(viewModel.frameWork.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: (URL(string: viewModel.frameWork.urlString) ?? URL(string: "www.apple.com")!), label: {
                ButtonStyle(title: "Load More")
            })
        }
    }
}

#Preview {
    frameWorkDetailView(viewModel: FrameWorkDetailVM(frameWork: MockData.sampleFramework, isShowingDetail: .constant(false)))
}
