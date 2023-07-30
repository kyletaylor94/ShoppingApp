//
//  CardView.swift
//  ShoppingApp
//
//  Created by Turdesán Csaba on 2023. 05. 17..
//

import SwiftUI
import Kingfisher

struct CardView: View {
    
    @EnvironmentObject var viewModel: CartManager
    var product: Product
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                KFImage(URL(string: product.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 250)
                    .cornerRadius(20)
                    .shadow(radius: 3)
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .foregroundColor(.black)
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                viewModel.addtocart(product: product)
                print(product.id)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(50)
                    .padding()
            }

        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(product: productList[0]).environmentObject(CartManager())
    }
}
