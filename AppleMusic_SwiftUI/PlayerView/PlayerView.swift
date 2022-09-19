//
//  PlayerView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 18.09.2022.
//

import SwiftUI

struct PlayerView: View {
    
    @State var offset: CGFloat = 0
    
    @Binding var showedFullScreen: Bool
    
    var widthFrame = UIScreen.main.bounds.width
    
    var body: some View {
        if showedFullScreen != true {
            SmallPlayerView()
                .onTapGesture {
                    withAnimation(.spring()) { showedFullScreen = true }
                }
        }
        
        if showedFullScreen {
            FullScreenPlayerView()
                .frame(maxHeight: .infinity)
                .background(
                    VStack(spacing: 0) {
                        BlurEffect(style: .systemChromeMaterial)
                    })
                .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
        }
    }
}

extension PlayerView {
    struct BlurEffect: UIViewRepresentable {
        var style: UIBlurEffect.Style = .systemMaterial
        
        func makeUIView(context: Context) -> UIVisualEffectView {
            return UIVisualEffectView(effect: UIBlurEffect(style: style))
        }
        
        func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
            uiView.effect = UIBlurEffect(style: style)
        }
    }
    
    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 && showedFullScreen{
            offset = value.translation.height
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.3)) {
            if value.translation.height > widthFrame {
                showedFullScreen = false
            }
            offset = 0
        }
    }
}

