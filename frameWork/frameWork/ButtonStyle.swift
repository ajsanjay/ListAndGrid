//
//  ButtonStyle.swift
//  frameWork
//
//  Created by jay sabeen on 19/12/23.
//

import SwiftUI

struct ButtonStyle: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    ButtonStyle(title: "Load More")
}
