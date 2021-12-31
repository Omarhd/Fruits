//
//  FruitDetailsView.swift
//  Fruits
//
//  Created by Omar Abdulrahman on 12/31/21.
//

import SwiftUI

struct FruitDetailsView: View {
    
    // MARK: - PROPERTIES
    var fruits: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitDetailsHeaderView(fruit: fruits)
                     
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruits.title)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRINUS
                        FruitsDetailsNutrinesView(fruit: fruits)
                        
                        //  SUB HEADLINE
                        Text(" learn more about \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                        
                    } // : VSTACK
                    
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // : VSTACK
                
                .navigationBarTitle(fruits.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // : SCROLL VIEW
            .edgesIgnoringSafeArea(.top)
        } // : NAVIGATION VIEW
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruits: fruitsData[1])
    }
}
