//
//  PlayingView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct PlayingView: View {
    
    @State private var playButton = true
    
    var body: some View {
        VStack {
            Divider()
            
            HStack{
                Image("playing_image")
                    .frame(width: 40, height: 40)
                    .cornerRadius(5)
                    .scaledToFill()
                    .clipped()
                    .padding([.leading, .trailing, .top, .bottom], 5)
               
                Text("Eminem - Spend Some Time")
                
                Spacer()
                
                Button(action: {
                    print("Play buttom pressed")
                }) {
                    Image(systemName: "play.fill")
                }
                .foregroundColor(Color.black)
                .padding(.horizontal, 10)
                
                Button(action: {
                    print("Next track buttom pressed")
                }) {
                    Image(systemName: "forward.fill")
                }
                .foregroundColor(Color.black)
                .padding(.horizontal, 15)

            }
            
            Divider()
        }
    }
}

struct PlayingView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingView()
    }
}
