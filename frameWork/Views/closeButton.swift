//
//  closeButton.swift
//  frameWork
//
//  Created by jay sabeen on 20/12/23.
//

import SwiftUI

struct closeButton: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetail = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    closeButton(isShowingDetail: .constant(false))
}
