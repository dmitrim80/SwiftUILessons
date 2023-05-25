//
//  GuestManager.swift
//  SwiftUILessons
//
//  Created by Dmitri Morozov on 5/25/23.
//

import Foundation

struct Guest: Identifiable, Hashable {
    
    var id: String { name }
    
    let name: String
    let isVip: Bool
}

final class GuestManager: ObservableObject {
    
    var timer: Timer?
    
    @Published var guests = [Guest(name: "Ninha", isVip: true), Guest(name: "Pepijn", isVip: true), Guest(name: "Alan", isVip: true), Guest(name: "Mike", isVip: false)]
    
    func createRandomGuests() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {[weak self] _ in self?.guests.append(Guest(name: UUID().uuidString.prefix(7).description, isVip: Bool.random()))
            }
        }
    }
