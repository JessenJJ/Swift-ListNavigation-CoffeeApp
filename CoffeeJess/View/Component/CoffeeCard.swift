//
//  CoffeeCard.swift
//  CoffeeJess
//
//  Created by User50 on 17/04/24.
//

import SwiftUI
struct CoffeeCard: View {
    var coffee: Coffeeshop
    var body: some View {
        HStack {
            Image(coffee.image)
                .resizable()
                .frame(width: 80,height: 80)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment:.leading) {
                Text(coffee.name)
                    .font(.headline)
                .foregroundStyle(Color.blue)
                Text(coffee.description)
                    .font(.caption)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                Text(coffee.location)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            
        }
        
    }
}

#Preview {
    CoffeeCard(coffee: CoffeeshopProvider.allData().first!)
        .padding()
}
