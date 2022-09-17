//
//  Metrics.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import UIKit

enum PlayerViewMetrics {
    enum SmallPlayer {
        static let imageSize: CGFloat = 55
        static let cornerRadius: CGFloat = 10
        static let shadowRadius: CGFloat = 7
    }
    
    enum FullscreenPlayer {
        static let imageSize: CGFloat = 250
        static let cornerRaadius: CGFloat = 10
        static let swadowRadius: CGFloat = 7
    }
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

enum InterestingMetrics {
    static let hGridSpacing: CGFloat = 10
    
    static let titleFontSize: CGFloat = 11
    static let subtitleFontSize: CGFloat = 16
    static let descriptionFontSize: CGFloat = 14
    
    static let imageWidth: CGFloat = 300
    static let imageHeight: CGFloat = 200
    static let imageCornerRadius: CGFloat = 10
    
    static let padding: CGFloat = 10
    
    static let stackWidth: CGFloat = 300
}

enum StationListMetrics {
    static let itemsPadding: CGFloat = 10
    
    static let imageSize: CGFloat = 120
    static let imageCornerRadius: CGFloat = 10
    
    static let fontSize: CGFloat = 16
    
    static let dividerPadding: CGFloat = 5
}

