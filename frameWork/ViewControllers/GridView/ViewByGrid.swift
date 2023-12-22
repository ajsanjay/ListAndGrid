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
                        NavigationLink(value: framework) {
                            frameworkTitleView(frameWork: framework)
                        }
                    }
                }
            }
            .navigationTitle("")
            .navigationDestination(for: frameWorkModel.self) {
                framework in
                frameWorkDetailView(frameWork: framework)
            }
        }
    }
}

#Preview {
    ViewByGrid()
}
