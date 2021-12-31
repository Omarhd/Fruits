//
//  FruitDetailsHeaderView.swift
//  Fruits
//
//  Created by Omar Abdulrahman on 12/31/21.
//

import SwiftUI

struct FruitDetailsHeaderView: View {
    
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.8)


        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitDetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsHeaderView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
