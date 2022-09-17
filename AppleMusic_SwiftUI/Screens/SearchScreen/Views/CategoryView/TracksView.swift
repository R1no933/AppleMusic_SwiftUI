//
//  TracksView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import SwiftUI

struct TracksView: View {
    
    @ObservedObject var data = TracksData()
    
    var tracksRow = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.init(top: 20, leading: 0, bottom: 20, trailing: 0))
            
            Text("Звучание 90-х")
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: tracksRow, spacing: 10) {
                    ForEach(data.data, id: \.id) { data in
                        VStack(alignment: .leading) {
                            Image(data.image)
                                .resizable()
                                .frame(width: 180, height: 165)
                                .cornerRadius(10)
                            Text(data.title)
                                .font(.system(size: 14))
                                .lineLimit(1)
                                .padding(.leading, 5)
                            Text(data.genre)
                                .foregroundColor(.gray)
                                .font(.system(size: 14))
                                .lineLimit(1)
                                .padding(.leading, 5)
                        }
                    }
                }
                .padding(.leading, 10)
            }
        }
    }
}

struct TracksView_Previews: PreviewProvider {
    static var previews: some View {
        TracksView()
    }
}
