//
//  ViewModel.swift
//  XarisiosVamvakas
//
//  Created by Angelos Staboulis on 6/1/25.
//

import Foundation
@MainActor
class ViewModel:ObservableObject{
    var model:Model
    init(model: Model) {
        self.model = model
    }
    func createBiography(biography:String)->String{
        model.biography = biography
        return model.biography
    }
}
