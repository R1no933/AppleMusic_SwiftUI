//
//  StationsView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import SwiftUI

struct StationsView: View {
    
    @ObservedObject var data = StationData()
    
    var stationRow = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.init(top: SearchScreenMetrics.TracksAndStationView.dividerTopBot, leading: 0, bottom: SearchScreenMetrics.TracksAndStationView.dividerTopBot, trailing: 0))
            
            Text("Станции")
                .font(.system(size: SearchScreenMetrics.TracksAndStationView.titleFontSize, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, SearchScreenMetrics.TracksAndStationView.titlePadding)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: stationRow, spacing: SearchScreenMetrics.TracksAndStationView.gridSpacing) {
                    ForEach(data.data, id: \.id) { data in
                        VStack(alignment: .leading) {
                            Image(data.image)
                                .resizable()
                                .frame(width: SearchScreenMetrics.TracksAndStationView.imageWidht, height: SearchScreenMetrics.TracksAndStationView.imageHeight)
                                .cornerRadius(SearchScreenMetrics.TracksAndStationView.cornerRadius)
                            Text(data.title)
                                .font(.system(size: SearchScreenMetrics.TracksAndStationView.textFontSize))
                                .lineLimit(1)
                                .padding(.leading, SearchScreenMetrics.TracksAndStationView.textPadding)
                            Text(data.genre)
                                .foregroundColor(.gray)
                                .font(.system(size: SearchScreenMetrics.TracksAndStationView.textFontSize))
                                .lineLimit(1)
                                .padding(.leading, SearchScreenMetrics.TracksAndStationView.textPadding)
                        }
                    }
                }
                .padding(.leading, SearchScreenMetrics.TracksAndStationView.leadingPadding)
            }
        }
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
