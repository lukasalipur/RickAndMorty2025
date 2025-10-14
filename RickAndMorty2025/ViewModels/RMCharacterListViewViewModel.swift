//
//  RMCharacterListViewViewModel.swift
//  RickAndMorty2025
//
//  Created by Luka Šalipur on 13. 10. 2025..
//

import Foundation
import UIKit

final class RMCharacterListViewViewModel:NSObject {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: \(model.info.pages)")
                print("Image URL: \(model.results.first?.image ?? "No image")")
                      
            case .failure(let error):
                print(String(describing: error))
                              
            }
        }
    }
}

extension RMCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier:RMCharacterCollectionViewCell.identifier,
            for: indexPath) as? RMCharacterCollectionViewCell else {
           fatalError("Unsupported cell")
       }
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "Luka", characterStatus: .alive, characterImageUrl: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
        cell.configure(with:viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds.width
        let width = (bounds - 30) / 2
        return CGSize(width: width, height:width * 1.5)
    }
        
}
