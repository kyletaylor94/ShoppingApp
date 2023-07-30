//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Turdesán Csaba on 2023. 05. 17..
//

import SwiftUI
import Kingfisher


struct ContentView: View {
    var items = [GridItem(.fixed(190)), GridItem(.fixed(190))]
    
    @StateObject var viewModel = CartManager()
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: items, spacing: 20){
                    ForEach(productList, id: \.id){ product in
                        CardView(product: product).environmentObject(viewModel)
                            .padding(.top)
                    }
                }
              
            }
            .navigationTitle("Sweater Shop")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink{
                        CartView().environmentObject(viewModel)
                    } label: {
                        Image(systemName: "cart")
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      
            ContentView().environmentObject(CartManager())
        
    }
}

