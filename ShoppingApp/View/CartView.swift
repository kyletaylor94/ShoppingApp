//
//  CartView.swift
//  ShoppingApp
//
//  Created by Turdesán Csaba on 2023. 05. 17..
//

import SwiftUI
import Kingfisher

struct CartView: View {
    
    @EnvironmentObject var viewModel: CartManager
    
    var body: some View {
        
        VStack{
            ScrollView {
                if viewModel.paymentSuccess{
                    Text("Thanks for your purchase! you'll get cozy in our comfy sweater soon! You'll also receive an email confirmation shortly")
                        .padding()
                } else {
                    if viewModel.products.count > 0 {
                        ForEach(viewModel.products, id: \.id){ product in
                            ProductRow(product: product)
                        }
                        
                        HStack{
                            Text("Your cart total is")
                            
                            Spacer()
                            
                            Text("$\(viewModel.total).00")
                                .bold()
                        }
                        .padding(.horizontal)
                        
                        PaymentButton {
                            viewModel.pay()
                        }
                        .padding()
                     

                    } else {
                        Text("Your cart is empty!")
                           .font(.system(size: 40))
                            .padding(.top)
                    }
                }
            }
        }
        .navigationTitle("My Cart")
        .onDisappear {
            if viewModel.paymentSuccess{
                viewModel.paymentSuccess = false
            }
        }
        
        
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CartView().environmentObject(CartManager())
        }
    }
}



