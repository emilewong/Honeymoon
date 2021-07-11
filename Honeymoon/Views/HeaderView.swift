//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Emile Wong on 9/7/2021.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                // ACTION
                // print("Information")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
            })
            .font(.system(size: 24, weight: .regular))
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button(action: {
                // ACTION
                // print("Guide")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
            })
            .font(.system(size: 24, weight: .regular))
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
        }
        .padding()
    }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
