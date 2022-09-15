//
//  InterestingView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import SwiftUI

struct InterestingView: View {
    
    @ObservedObject var data = InterestingData()
    
    var interestingRow = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: interestingRow, spacing: InterestingMetrics.hGridSpacing) {
                ForEach(data.data, id: \.id) { data in
                    VStack(alignment: .leading) {
                        Divider()
                        
                        Text(data.title)
                            .foregroundColor(.gray)
                            .font(.system(size: InterestingMetrics.titleFontSize))
                        Text(data.subtitle)
                            .font(.system(size: InterestingMetrics.subtitleFontSize))
                        Text(data.description)
                            .foregroundColor(.gray)
                            .font(.system(size: InterestingMetrics.descriptionFontSize))
                            .lineLimit(1)
                        Image(data.image)
                            .resizable()
                            .frame(width: InterestingMetrics.imageWidth, height: InterestingMetrics.imageHeight)
                            .cornerRadius(InterestingMetrics.imageCornerRadius)
                        
                        Divider()
                            .padding(InterestingMetrics.padding)
                    }
                    .frame(width: InterestingMetrics.stackWidth)
                }
            }
        }
        .padding(InterestingMetrics.padding)
    }
}

struct InterestingView_Previews: PreviewProvider {
    static var previews: some View {
        InterestingView()
    }
}
