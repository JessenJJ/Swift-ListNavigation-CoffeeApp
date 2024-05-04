//
//  CoffeeDetail.swift
//  CoffeeJess
//
//  Created by User50 on 17/04/24.
//

import SwiftUI

struct CoffeeDetail: View {
    var coffee:Coffeeshop
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment:.bottom) {
                Image(coffee.image)
                    .resizable()
                    .frame(height: 380)
                
                HStack{
                    VStack(alignment:.leading){
                        Text(coffee.name)
                            .foregroundStyle(.white)
                            .font(.title2)
                        Text(coffee.location)
                    }
                    Spacer()
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.red)
                        .background(Circle()
                            .fill(Color.orange.opacity(0.8))
                            .scaleEffect(2))
                    
                }
                .padding()
                .background(Color.green.opacity(0.7))
                
            }
            
            VStack (alignment:.leading){
                Text(coffee.overview)
                    .padding()
            }
            InfoBox()
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement:.topBarLeading){
                Button{
                    dismiss()
                    
                }label: {
                    Image(systemName: "chevron.left.circle.fill")
                        .font(.title3)
                }
                .tint(.primary)
            }
        }
        
    }
}

#Preview {
    CoffeeDetail(coffee: CoffeeshopProvider.allData().first!)
}
