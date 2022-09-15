//
//  MediaLibraryNavigation.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct MediaLibraryNavigation: View {
    
    @State private var isEditingType = true
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            NavigationView {
                VStack {
                    if isEditingType {
                        MediaLibraryMain()
                    } else {
                        MediaLibraryList()
                    }
                }
                
                .navigationBarTitle(MediaLibraryConstants.Navigation.title)
                .navigationBarItems(trailing: Button(action: {
                    isEditingType.toggle()
                }, label: {
                    if isEditingType {
                        Text(MediaLibraryConstants.Navigation.editButton)
                            .foregroundColor(Color.red)
                    } else {
                        Text(MediaLibraryConstants.Navigation.doneButton)
                            .foregroundColor(Color.red)
                    }
                }))
            }
        }
    }
}
    struct MediaLibraryNavigation_Previews: PreviewProvider {
        static var previews: some View {
            MediaLibraryNavigation()
        }
    }
