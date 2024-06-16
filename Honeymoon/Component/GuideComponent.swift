//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by bosctech on 16/06/24.
//

import SwiftUI

struct GuideComponent: View {
    //MARK: PROPERTIES
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    Text(subtitle.uppercased())
                        .foregroundColor(.pink)
                        .fontWeight(.heavy)
                }
                Divider().padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subtitle: "Swipe right", description: "This is a place sentence. This is a placeholder sentence. This is a place holder sentence.", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
