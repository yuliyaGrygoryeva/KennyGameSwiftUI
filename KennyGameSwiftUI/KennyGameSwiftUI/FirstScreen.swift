//
//  ContentView.swift
//  KennyGameSwiftUI
//
//  Created by Yuliya  on 1/8/23.
//

import SwiftUI

struct FirstScreen: View {
    private var image = Image("Kenny")
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
//    private var timer = Timer()
    @State var score: Int = 0
    @State var highScore: Int = 0
//    @State var counter: Int = 10
    @State var counter = 10
    var timer = Timer.scheduledTimer(timeInterval: 1, target: Self.self, selector: #selector(timeLeft), userInfo: nil, repeats: true)
    
    @objc func timeLeft() {
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            
        }
    }
    
    
    @State var kenny1: Image = Image("Kenny")
    @State var kenny2: Image = Image("Kenny")
    @State var kenny3: Image = Image("Kenny")
    @State var kenny4: Image = Image("Kenny")
    @State var kenny5: Image = Image("Kenny")
    @State var kenny6: Image = Image("Kenny")
    @State var kenny7: Image = Image("Kenny")
    @State var kenny8: Image = Image("Kenny")
    @State var kenny9: Image = Image("Kenny")
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Kenny Game")
                .font(.title)
                .bold()
                
//            Spacer()
            Text("Timer: \(counter)")
                .font(.largeTitle)
            Text("Score: \(score)")
                .font(.largeTitle)
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach(0...8, id: \.self) {_ in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .onTapGesture {
//                            if image.isVisible {
                                score += 1
//                            }
                        }
                }
            }
            Text("HighScore: \(highScore)")
                .font(.largeTitle)
        }
        .padding(20)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
