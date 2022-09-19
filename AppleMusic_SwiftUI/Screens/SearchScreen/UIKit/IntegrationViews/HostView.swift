//
//  HostView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 19.09.2022.
//

import SwiftUI
import UIKit

final class HostView: UIHostingController<CategoryView> {
    init() {
        super.init(rootView: CategoryView())
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
