//
//  SettingsView.swift
//  Fruits
//
//  Created by Omar Abdulrahman on 12/31/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    @Environment (\.presentationMode) var presentationMode
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false

    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .cornerRadius(8)
                            
                            Text("The apple is a deciduous tree, generally standing 2 to 4.5 m (6 to 15 ft) tall in cultivation and up to 9 m (30 ft) in the wild.")
                                .font(.footnote)
                        }
                    }
                    
                    // SECTION 2
                    GroupBox(
                        label:SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("customization your seetings and onboarding screen to show on or off by using switcher hehehe.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 80)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding) {
                            Text("Restart".uppercased())
                        }
                        
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }

                    
                    // SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Applications", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Omar Abdulrahman")
                        SettingsRowView(name: "Designer", content: "Mozamil Sirag")
                        SettingsRowView(name: "Competable", content: "iOS 13")
                        SettingsRowView(name: "Twitter", content: "@itsNightwatcher", linkLabel: "itsNightwatcher", linkDestination: "twitter.com/itsnightwatcher")
                        
                        
                    }

                    
                } // : VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            } // : SCROLL VIEW
        } // : NAVIGATION
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}



