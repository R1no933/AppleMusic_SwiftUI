//
//  MediaLibraryList.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct MediaLibraryList: View {
    
    @State private var isEditind = EditMode.active
    @State private var selection = Set<String>()
    
    var body: some View {
        VStack {
            List(selection: $selection) {
                ForEach(ListModel.data, id: \.self) { (item) in
                    HStack {
                        Image(systemName: "\(item.icon)")
                            .foregroundColor(Color.red)
                        Text(item.listItem)
                            .font(.system(size: MediaLibraryMetrics.List.itemFontSize, weight: .regular, design: .default))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, MediaLibraryMetrics.List.itemLeadingPadding)
                    }
                    .frame(height: MediaLibraryMetrics.List.stackHeight)
                }
                
                .onMove { (IndexSet, Index) in
                    ListModel.data.move(fromOffsets: IndexSet, toOffset: Index)
                }
            }
            
            .environment(\.editMode, $isEditind)
            .listStyle(.plain)
            .accentColor(.red)
        }
    }
}

struct MediaLibraryList_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibraryList()
    }
}
