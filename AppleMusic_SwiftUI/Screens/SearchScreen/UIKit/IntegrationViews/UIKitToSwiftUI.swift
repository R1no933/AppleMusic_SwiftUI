//
//  UIKitToSwiftUI.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 19.09.2022.
//

import SwiftUI
import UIKit

struct UIKitToSwiftUI: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        return SearchViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}

struct SearchKit_Previews: PreviewProvider {
    static var previews: some View {
        UIKitToSwiftUI()
    }
}
