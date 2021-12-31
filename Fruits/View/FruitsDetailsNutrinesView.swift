//
//  FruitsDetailsNutrinesView.swift
//  Fruits
//
//  Created by Omar Abdulrahman on 12/31/21.
//

import SwiftUI

struct FruitsDetailsNutrinesView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    var nutrines: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrines value per 100g") {
                ForEach (0..<nutrines.count, id: \.self) { item in
                    Divider().padding(.vertical, 3)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrines[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}
// MARK: - PREVIEW
struct FruitsDetailsNutrinesView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailsNutrinesView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
