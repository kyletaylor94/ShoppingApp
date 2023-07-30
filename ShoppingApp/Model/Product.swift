//
//  Product.swift
//  ShoppingApp
//
//  Created by Turdesán Csaba on 2023. 05. 17..
//

import Foundation

struct Product: Identifiable{
    let id = UUID()
    let name: String
    let imageUrl: String
    let price: Int
}


var productList = [
    Product(name: "Orange Sweater", imageUrl: "https://images.unsplash.com/photo-1540331547168-8b63109225b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=719&q=80", price: 22),
    
    Product(name: "Red wine sweater", imageUrl: "https://images.unsplash.com/photo-1540331547168-8b63109225b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=719&q=80", price: 30),
    
    Product(name: "Sand sweater", imageUrl: "https://images.unsplash.com/photo-1622925492162-98c3760a7080?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", price: 44),
    
    Product(name: "Sea sweater", imageUrl: "https://images.unsplash.com/photo-1573954100751-11b1cfa9060b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", price: 10),
    
    Product(name: "Cream sweater", imageUrl: "https://images.unsplash.com/photo-1510032518699-36e55fe15658?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80", price: 23),
    
    Product(name: "Ice sweater", imageUrl: "https://plus.unsplash.com/premium_photo-1673356302095-7b20d460fb63?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", price: 30),
    
    Product(name: "Fire sweater", imageUrl: "https://images.unsplash.com/photo-1601379327928-bedfaf9da2d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", price: 102),
    
    Product(name: "Grey sweater", imageUrl: "https://images.unsplash.com/photo-1581497396202-5645e76a3a8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80", price: 305),
    
    Product(name: "Mink sweater", imageUrl: "   https://images.unsplash.com/photo-1611911813383-67769b37a149?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80", price: 120),
    
    Product(name: "Beige sweater", imageUrl: "https://images.unsplash.com/photo-1574201635302-388dd92a4c3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80", price: 111)

]


