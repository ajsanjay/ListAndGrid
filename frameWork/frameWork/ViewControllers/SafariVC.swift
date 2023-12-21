//
//  SafariVC.swift
//  frameWork
//
//  Created by jay sabeen on 20/12/23.
//

import SwiftUI
import SafariServices

struct SafariVC: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariVC>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariVC>) { }
    
}
