//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Omar Abdulrahman on 12/31/21.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "wikipedia.org")!)
                
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
