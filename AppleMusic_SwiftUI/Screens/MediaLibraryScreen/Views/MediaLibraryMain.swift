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
            
            Text("Ищете свою музыку?")
                .font(.system(size: 26, weight: .bold, design: .default))
            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(width: 250)
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
