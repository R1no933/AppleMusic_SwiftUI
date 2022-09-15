//
//  Metrics.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import UIKit

enum PlayingViewMetrics {
    static let imageSize: CGFloat = 40
    static let imagePadding: CGFloat = 2
    static let imageCornerRadius: CGFloat = 5
    static let playButtonPadding: CGFloat = 5
    static let forwardButtonPadding: CGFloat = 5
    static let playingStackHeight: CGFloat = 50
}

enum TabBarMetrics {
    static let playingViewPadding: CGFloat = 48
}

enum MediaLibraryMetrics {
    enum Main {
        static let headerFontSize: CGFloat = 26
        static let descriptionWidth: CGFloat = 250
    }
    
    enum List {
        static let itemFontSize: CGFloat = 24
        static let itemLeadingPadding: CGFloat = 5
        
        static let stackHeight: CGFloat = 50
    }
}

