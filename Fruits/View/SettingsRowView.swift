//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Omar Abdulrahman on 12/31/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack(alignment: .center, spacing: 10) {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil ) {
                    Link(linkLabel!, destination: URL(string: "https:\\\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(Color.pink)                                                
                }
            }
        }
    }
}


struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "developer", content: "Omar Abdulrahman")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "developer", content: "Omar Abdulrahman")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
        
    }
}
