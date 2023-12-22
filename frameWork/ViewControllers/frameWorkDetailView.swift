//
//  frameWorkDetailView.swift
//  frameWork
//
//  Created by jay sabeen on 19/12/23.
//

import SwiftUI

struct frameWorkDetailView: View {
    
    let frameWork: frameWorkModel
//    @Binding var isShowingDetail: Bool
    @State private var isSafariOpened = false
    
    var body: some View {
        VStack {
//            closeButton(isShowingDetail: $isShowingDetail)
//            Spacer()
            frameworkTitleView(frameWork: frameWork)
            Text(frameWork.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isSafariOpened = true
            } label: {
//                ButtonStyle(title: "Load More")
                Label("Load More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundColor(.green)
            .buttonBorderShape(.capsule)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isSafariOpened, content: {
            SafariVC(url: (URL(string: frameWork.urlString) ?? URL(string: "www.apple.com")!))
        })
//        .sheet(isPresented: $isSafariOpened, content: {
//            SafariVC(url: (URL(string: frameWork.urlString) ?? URL(string: "www.apple.com")!))
//        })
    }
}

#Preview {
    frameWorkDetailView(frameWork: MockData.sampleFramework)
    //, isShowingDetail: .constant(false)
}
