//
//  TabBar.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView {
                MediaLibraryNavigation()
                    .tabItem {
                        Image(systemName: "music.note.list")
                        Text("Медиатека")
                    }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            
            .accentColor(Color .red)
            
            PlayingView()
                .padding(.bottom, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
