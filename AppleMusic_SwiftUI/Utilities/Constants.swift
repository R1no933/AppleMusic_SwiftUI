//
//  Constants.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import Foundation
import UIKit

enum PlayingViewConstants {
    static let image: String = "playing_image"
    static let playingText: String = "Eminem - Spend Some Time"
}

enum TabBarConstants {
    static let mediaLibraryLabel: String = "Медиатека"
    static let radioLabel: String = "Радио"
    static let searchLabel: String = "Поиск"
}

enum MediaLibraryConstants {
    enum Navigation {
        static let title: String = "Медиатека"
        static let editButton: String = "Править"
        static let doneButton: String = "Готово"
    }
    
    enum Main {
        static let header: String = "Ищете свою музыку?"
        static let description: String = "Здесь появится купленная Вами в iTunes Store музыка."
    }
}

enum SFSymbols {
    //Playing View
    static let playButton: String = "play.fill"
    static let forwardButton: String = "forward.fill"
    
    //Tab bar
    static let mediaLibraryIcon: String = "music.note.list"
    static let radioIcon: String = "dot.radiowaves.left.and.right"
    static let searchIcon: String = "magnifyingglass"
}
