//
//  ProductRow.swift
//  ShoppingApp
//
//  Created by Turdesán Csaba on 2023. 05. 17..
//

import SwiftUI
import Kingfisher

struct ProductRow: View {
    @EnvironmentObject var viewModel: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            KFImage(URL(string: product.imageUrl))
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading,spacing: 10){
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    viewModel.removeFromCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[0]).environmentObject(CartManager())
    }
}
