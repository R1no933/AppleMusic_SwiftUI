//
//  StationListView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import SwiftUI

struct StationListView: View {
    
    @ObservedObject var data = RadioData()
    
    var stationListColumns = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: stationListColumns, alignment: .leading, spacing: 15) {
                
                Text(RadioConstants.StationList.title)
                    .font(.title).bold()
                    .padding(.leading, StationListMetrics.itemsPadding)
                
                ForEach(data.data, id: \.id) { data in
                    VStack(alignment: .leading) {
                        HStack {
                            Image(data.image)
                                .resizable()
                                .frame(width: StationListMetrics.imageSize, height: StationListMetrics.imageSize)
                                .cornerRadius(StationListMetrics.imageCornerRadius)
                            
                                .padding(.leading, StationListMetrics.itemsPadding)
                            
                            VStack(alignment: .leading) {
                                Text(data.title)
                                    .padding(.leading, StationListMetrics.itemsPadding)
                                    .font(.system(size: StationListMetrics.fontSize))
                                Text(data.subTitle)
                                    .foregroundColor(.gray)
                                    .padding(.leading, StationListMetrics.itemsPadding)
                                    .font(.system(size: StationListMetrics.fontSize))
                            }
                        }
                    }
                    Divider()
                        .padding(StationListMetrics.dividerPadding)
                }
            }
        }
    }
}

struct StationListView_Previews: PreviewProvider {
    static var previews: some View {
        StationListView()
    }
}
