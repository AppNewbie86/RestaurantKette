//
//  Mitarbeiter.swift
//  RestaurantKette
//
//  Created by Marcel Zimmermann on 27.01.23.
//
import Foundation

// zusehen wie eine Data Class in Android
// Identifizierbar
// Kann in einen HashWert umgewandelt werden

struct Mitarbeiter : Identifiable,Hashable{
    var id = UUID()
    var name  : String
}
