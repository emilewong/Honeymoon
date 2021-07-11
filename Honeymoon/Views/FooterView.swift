//
//  FooterView.swift
//  Honeymoon
//
//  Created by Emile Wong on 9/7/2021.
//

import SwiftUI

struct FooterView: View {
    // MARK: - PROPERTIES
    @Binding var showBookingAlert: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                // ACTION
                // print("Success!")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()
            }, label: {
                Text("Book Destinations".uppercased())
                    .foregroundColor(Color.pink)
                    .font(.system(.subheadline, design: .rounded))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(Color.primary)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            })
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        }
        .padding()
    }
}

// MARK: - PREVIEW
struct FooterView_Previews: PreviewProvider {
    @State static var showAlert: Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
