//
//  HomeView.swift
//  XarisiosVamvakas
//
//  Created by Angelos Staboulis on 6/1/25.
//

import SwiftUI
extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
struct HomeView: View {
  @State var text: String = ""
  @State var finalText: String = "ΧΑΡΙΣΙΟΣ, ΒΑΜΒΑΚΑΣ"
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  @State var position:Int = 0
  var gradient =  LinearGradient(gradient: Gradient(colors: [.black,.black,.black]), startPoint: .top, endPoint: .bottom)
    var body: some View {
        VStack{
                Image(.main ).resizable().overlay {
                       HStack {
                           Text(text).font(.largeTitle).frame(width:950,alignment:.leading)
                                             .foregroundStyle(gradient)
                                             .offset(x:310,y:-320)
                                             .onReceive(timer) { output in
                                                 if position < finalText.count {
                                                     text.append(finalText[position])
                                                 }
                                                 position = position + 1
                                             }
                       }
                   }
               }
    }
}

#Preview {
    HomeView()
}
