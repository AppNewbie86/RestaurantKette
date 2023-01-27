//
//  ContentView.swift
//  RestaurantKette
//
//  Created by Marcel Zimmermann on 27.01.23.
//

import SwiftUI

struct ContentView: View {
    
    // Anbindung des ViewModels
    @StateObject var viewModel = RestaurantViewModel()
    
    // Anbindung des NavPaths
    @State var navPath = NavigationPath()
    
    
    // Bool Variablen welche Views angezeigt werden sollen
    @State var showMitarbeiter : Bool = false
    @State var showRestaurant : Bool = false

    @State var showMitarbeiterDetails : Bool = false
    @State var showAll : Bool = false

    
    var body: some View {
        VStack{
            Image("brick")
                .resizable()
            
            Text("Der Restaurant Verwalter")
                .font(.system(size:33))
            
            NavigationStack(path: $navPath) {
                Text("Mitarbeiter")
                    .font(.system(size:22))
                    .onTapGesture {
                        showMitarbeiter = true
                    }
                NavigationLink("MitarbeiterLink", value: viewModel.mitarbeiterList[0])
                
                Text("Restaurant")
                    .font(.system(size:22))
                    .onTapGesture {
                        showRestaurant = true
                    }
                NavigationLink("RestaurantLink", value: viewModel.restaurantsList[0])
                
                Text("MitarbeiterDetails")
                    .onTapGesture {
                        showMitarbeiterDetails = true
                    }
                
                Text("All")
                    .onTapGesture {
                        showAll = true
                    }
                
                    .navigationDestination(for: Mitarbeiter.self){
                        mitarbeiter in
                        MitarbeiterView()
                    }
                    .navigationDestination(isPresented: $showMitarbeiter){
                        MitarbeiterView()                    }
                    .navigationDestination(isPresented: $showMitarbeiterDetails){
                        MitarbeiterDetailView()
                    }
                    .navigationDestination(isPresented: $showAll){
                        VStack{
                            MitarbeiterView()
                            MitarbeiterDetailView()
                        }
                    }
                
                    .navigationDestination(for: Restaurant.self){
                        restaurant in
                        RestaurantView()
                    }
                    
                
            }
            
            .environmentObject(viewModel)
        }
    }
}

            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
