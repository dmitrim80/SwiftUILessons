//
//  ContentView.swift
//  SwiftUILessons
//
//  Created by Dmitri Morozov on 5/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var guestManager: GuestManager
    
    var body: some View {
        
        VStack{
            Button("Add More Guests every second") {
                guestManager.createRandomGuests()
            }.padding().foregroundColor(.blue)
            
            guestList
        }
    }
    
    var guestList: some View {
        List {
            ForEach(guestManager.guests) { guest in
                    Text("Guest Name: \(guest.name)")
                    .padding().foregroundColor(.green)
                
            }
        }
    }
    
    var guestScroll: some View {
        ScrollView {
            ForEach(guestManager.guests) { guest in
                Text("Guest Name: \(guest.name)")
                    .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
