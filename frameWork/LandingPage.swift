//
//  LandingPage.swift
//  frameWork
//
//  Created by jay sabeen on 20/12/23.
//

import SwiftUI

struct LandingPage: View {
    
    @State private var isList = false
    
    var body: some View {
        NavigationView {
            CheckCondition(isList: isList)
                .navigationBarTitle(Text(""), displayMode: .inline)
                .font(.subheadline)
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(leading:
                                        Text("🍎 Frameworks")
                    .font(.largeTitle)
                    .fontWeight(.medium), trailing: HStack {
                        Button {
                            isList.toggle()
                        } label: {
                            Image(systemName: isList ? "list.dash" : "circle.grid.3x3")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    })
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    LandingPage()
}
