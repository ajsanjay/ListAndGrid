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
//            Spacer()
            frameworkTitleView(frameWork: viewModel.frameWork)
            Text(viewModel.frameWork.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: (URL(string: viewModel.frameWork.urlString) ?? URL(string: "www.apple.com")!), label: {
                ButtonStyle(title: "Load More")
            })
           /* Button {
                viewModel.isSafariOpened = true
            } label: {
//                ButtonStyle(title: "Load More")
                Label("Load More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundColor(.green)
            .buttonBorderShape(.capsule)
            .tint(.red) */
        }
//        .fullScreenCover(isPresented: $viewModel.isSafariOpened, content: {
//            SafariVC(url: (URL(string: viewModel.frameWork.urlString) ?? URL(string: "www.apple.com")!))
//        })
//        .sheet(isPresented: $isSafariOpened, content: {
//            SafariVC(url: (URL(string: frameWork.urlString) ?? URL(string: "www.apple.com")!))
//        })
    }
}

#Preview {
    frameWorkDetailView(viewModel: FrameWorkDetailVM(frameWork: MockData.sampleFramework, isShowingDetail: .constant(false)))
}
