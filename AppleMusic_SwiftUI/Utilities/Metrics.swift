//
//  Metrics.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import UIKit

enum SmallPlayerMetrics {
    static let imageSize: CGFloat = 55
    static let imageTopAndBottom: CGFloat = 8
    static let imageLeading: CGFloat = 10
    static let cornerRadius: CGFloat = 10
    static let buttonSize: CGFloat = 20
    static let textFontSize: CGFloat = 16
    static let forwardButtonLeading: CGFloat = 15
    static let forwardButtonTrailing: CGFloat = 20
}

enum FullScreenPlayerMetrics {
    static let imageSize: CGFloat = 330
    static let corenerRadius: CGFloat = 10
    static let textSize: CGFloat = 20
    static let buttonSize: CGFloat = 45
    static let mainStackPadding: CGFloat = 20
}

enum TabBarMetrics {
    static let playingViewPadding: CGFloat = 49
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

enum SearchScreenMetrics {
    enum PlaylistView {
        static let titleFontSize: CGFloat = 12
        static let subtitleFontSize: CGFloat = 16
        
        static let girdSpacing: CGFloat = 10
        
        static let imageWidth: CGFloat = 350
        static let imageHeight: CGFloat = 350
        static let cornerRadius: CGFloat = 10
        
        static let padding: CGFloat = 10
    }
    
    enum TracksAndStationView {
        static let titleFontSize: CGFloat = 24
        static let textFontSize: CGFloat = 14
        static let textPadding: CGFloat = 5
        static let titlePadding: CGFloat = 10
        
        static let imageWidht: CGFloat = 180
        static let imageHeight: CGFloat = 165
        static let cornerRadius: CGFloat = 10
        
        static let gridSpacing: CGFloat = 10
        
        static let leadingPadding: CGFloat = 10
        
        static let dividerTopBot: CGFloat = 20
    }
    
    enum SearchCategoriesView {
        static let imageWidth: CGFloat = 200
        static let imageHeight: CGFloat = 150
        static let cornerRadius: CGFloat = 10
    }
}

