//
//  CardViewModel.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 6/5/24.
//

import Foundation

class CardViewModel : ObservableObject {
    @Published var mCardModels = [CardModel]()
    
    private let mService : CardService
    
    
    init(service : CardService) {
        mService = service
        
        Task { await fetchCardModels() }
    }
    
    func fetchCardModels() async {
        do {
            self.mCardModels = try await mService.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch cards with error \(error)")
        }
    }
    
    func removeCard(_ card : CardModel) {
        guard let index = mCardModels.firstIndex(where: { $0.id == card.id }) else { return }
        mCardModels.remove(at: index)
    }
}
