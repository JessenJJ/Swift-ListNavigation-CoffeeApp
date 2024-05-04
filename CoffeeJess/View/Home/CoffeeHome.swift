//
//  CoffeeHome.swift
//  CoffeeJess
//
//  Created by User50 on 17/04/24.
//

import SwiftUI

struct CoffeeHome: View {
    var coffee: [Coffeeshop] = CoffeeshopProvider.allData()
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            List(coffee){coffee in
                NavigationLink{
                    CoffeeDetail(coffee: coffee)
                }label:{
                    CoffeeCard(coffee: coffee)
                }
                
            }
            .listRowSeparator(.hidden)
            .navigationBarTitle("CoffeeShop")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.bottom)
            .refreshable {
                
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    CoffeeHome()
}
