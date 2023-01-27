//
//  RestaurantViewModel.swift
//  RestaurantKette
//
//  Created by Marcel Zimmermann on 27.01.23.
//
import SwiftUI
import Foundation

// legen ViewModel als Hauptakteur fest und machen es Überwachbar
@MainActor class RestaurantViewModel : ObservableObject {
    
    // Wir haben eine Variable restaurantList vom Typ Restaurant mit einem leeren Array
    
    @Published var restaurantsList : [Restaurant] = []
    @Published var mitarbeiterList : [Mitarbeiter] = []

    // VeröffentlichungsVariable / Anschluss des NavPath / das wir später  navigieren können
    @Published var navPath = NavigationPath()

    // Hier werden FakeDaten erstellt
    init(){
        
        // Erstellen der Mitarbeiter für Restaurant 1
        var m1 : Mitarbeiter = Mitarbeiter(name: "Gina")
        var m2 : Mitarbeiter = Mitarbeiter(name: "Gustel")
        
        // Erstellen der Restaurants 1
        var restaurant1 = Restaurant(name: "Zum eisernen Hirsch",workerList: [m1,m2])
       
        // Erstellen der Mitarbeiter für Restaurant 2
        var m3 : Mitarbeiter = Mitarbeiter(name: "Gerda")
        var m4 : Mitarbeiter = Mitarbeiter(name: "Rocco")
        // Restaurant 2
        var restaurant2 = Restaurant(name: "Zum stählernden Hufeisen", workerList: [m3,m4])

        // MitarbeiterListe und RestaurantListe werden geladen
        restaurantsList = [restaurant1,restaurant2]
        mitarbeiterList = [m1,m2,m3,m4]
    }
    
    // Platz für Funktionen
}
