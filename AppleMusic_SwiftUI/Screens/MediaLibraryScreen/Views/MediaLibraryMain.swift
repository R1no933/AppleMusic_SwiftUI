//
//  MediaLibraryMain.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct MediaLibraryMain: View {
    var body: some View {
        VStack {
           
            Spacer()
            
            Text(MediaLibraryConstants.Main.header)
                .font(.system(size: MediaLibraryMetrics.Main.headerFontSize, weight: .bold, design: .default))
            Text(MediaLibraryConstants.Main.description)
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(width: MediaLibraryMetrics.Main.descriptionWidth)
                .foregroundColor(.gray)
            
            Spacer()
        }
    }
}

struct MediaLibraryMain_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibraryMain()
    }
}
