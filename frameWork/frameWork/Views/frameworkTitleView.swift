//
//  frameworkTitleView.swift
//  frameWork
//
//  Created by jay sabeen on 19/12/23.
//

import SwiftUI

struct frameworkTitleView: View {
    
    let frameWork: frameWorkModel
    var isList = false
    
    var body: some View {
        if isList {
            HStack {
                Image(frameWork.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                Text(frameWork.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            .padding()
        } else {
            VStack {
                Image(frameWork.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                Text(frameWork.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            .padding()
        }
    }
}

#Preview {
    frameworkTitleView(frameWork: MockData.sampleFramework, isList: false)
}
