//
//  XarisiosVamvakasApp.swift
//  XarisiosVamvakas
//
//  Created by Angelos Staboulis on 6/1/25.
//

import SwiftUI

@main
struct XarisiosVamvakasApp: App {
    @StateObject var viewModel = ViewModel(model: .init(id: UUID(), biography: ""))
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.environmentObject(viewModel)
    }
}
