//
//  RadioView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct RadioNavigation: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    InterestingView()
                    Spacer()
                    StationListView()
                }
                
                .navigationBarTitle(Text(RadioConstants.RadioNavigation.title))
            }
        }
    }
}

struct RadioNavigation_Previews: PreviewProvider {
    static var previews: some View {
        RadioNavigation()
    }
}
