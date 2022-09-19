//
//  TabBar.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct TabBar: View {
    
    @State var showedFullScreen = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                MediaLibraryNavigation()
                    .tabItem {
                        Image(systemName: SFSymbols.mediaLibraryIcon)
                        Text(TabBarConstants.mediaLibraryLabel)
                    }
                RadioNavigation()
                    .tabItem {
                        Image(systemName: SFSymbols.radioIcon)
                        Text(TabBarConstants.radioLabel)
                    }
                SearchNavigation()
                    .tabItem {
                        Image(systemName: SFSymbols.searchIcon)
                        Text(TabBarConstants.searchLabel)
                    }
                SearchNavigationUIKit()
                    .tabItem {
                        Image(systemName: SFSymbols.searchIcon)
                        Text("Поиск UIKit")
                    }
            }
            
            .accentColor(Color .red)
            
            PlayerView(showedFullScreen: $showedFullScreen)
                .padding(.bottom, TabBarMetrics.playingViewPadding)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

extension TabBar {
    private func tapOnPlayer() {
        
    }
}
