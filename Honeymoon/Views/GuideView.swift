//
//  GuideView.swift
//  Honeymoon
//
//  Created by Emile Wong on 9/7/2021.
//

import SwiftUI

struct GuideView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick the perfect destination for your romantic Honeyon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe Right",
                        description: "Do you like this destination? Touch the screen and swipe right. It will be saved to the favorites.",
                        icon: "heart.circle")
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe left",
                        description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it.",
                        icon: "xmark.circle")
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the button",
                        description: "Our selection of honeymoon",
                        icon: "checkmark.square")
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    // ACTION
                    // print("A button was tapped.")
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                })
                
                
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

// MARK: - PREVIEW
struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
