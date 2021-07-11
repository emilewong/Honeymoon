//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Emile Wong on 9/7/2021.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - PROPERTIES
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                    
                } //: HSTACK
                
                Divider().padding(.bottom, 4)
                
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(
            title: "Title",
            subtitle: "SWIPE RIGHT",
            description: "This is a placeholder for the descripiton. This is a placeholder for the descripiton. This is a placeholder for the descripiton. ",
            icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
