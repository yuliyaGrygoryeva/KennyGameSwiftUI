//
//  ContentView.swift
//  KennyGameSwiftUI
//
//  Created by Yuliya  on 1/8/23.
//

import SwiftUI

struct FirstScreen: View {
    
    var viewModel = ViewModel()
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var kenny1: KennyObject = KennyObject()
    @State var kenny2: KennyObject = KennyObject()
    @State var kenny3: KennyObject = KennyObject()
    @State var kenny4: KennyObject = KennyObject()
    @State var kenny5: KennyObject = KennyObject()
    @State var kenny6: KennyObject = KennyObject()
    @State var kenny7: KennyObject = KennyObject()
    @State var kenny8: KennyObject = KennyObject()
    @State var kenny9: KennyObject = KennyObject()
    @State private var timeRemaining = 10
    @State var score: Int = 0
    @State var highScore: Int = 0
    @State var counter = 10
    
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text("Kenny Game")
                    .font(.title)
                    .bold()
                    .padding(20)
                Text("Timer: \(timeRemaining)")
                    .font(.largeTitle)
                Text("Score: \(score)")
                    .font(.largeTitle)
                LazyVGrid(columns: gridItemLayout, spacing: 20) {
                    Image(kenny1.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny1.opacity)
                        .onTapGesture {
                            if kenny1.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny2.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny2.opacity)                        .onTapGesture {
                            if kenny2.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny3.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny3.opacity)                        .onTapGesture {
                            if kenny3.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny4.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny4.opacity)                        .onTapGesture {
                            if kenny4.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny5.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny5.opacity)                        .onTapGesture {
                            if kenny5.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny6.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny6.opacity)                        .onTapGesture {
                            if kenny6.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny7.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny7.opacity)                        .onTapGesture {
                            if kenny7.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny8.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny8.opacity)                        .onTapGesture {
                            if kenny8.isVisible {
                                score += 1
                            }
                        }
                    Image(kenny9.image)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .cornerRadius(10)
                        .opacity(kenny9.opacity)                        .onTapGesture {
                            if kenny9.isVisible {
                                score += 1
                            }
                        }
                }
                Text("HighScore: \(highScore)")
                    .font(.largeTitle)
                Button("Restart") {
                    timeRemaining = 10
                }
                .font(.title)
                .bold()
                .padding(20)
            }
            .padding(20)
            
        }.onReceive(timer) { time in
            if timeRemaining > 0 {
                timeRemaining -= 1
                let card = viewModel.getRandomNumber()
                setVisibleToFalse()
                if card == 1 {
                    kenny1.isVisible = true
                } else if card == 2 {
                    kenny2.isVisible = true
                } else if card == 3 {
                    kenny3.isVisible = true
                } else if card == 4 {
                    kenny4.isVisible = true
                } else if card == 5 {
                    kenny5.isVisible = true
                } else if card == 6 {
                    kenny6.isVisible = true
                } else if card == 7 {
                    kenny7.isVisible = true
                } else if card == 8 {
                    kenny8.isVisible = true
                } else if card == 9 {
                    kenny9.isVisible = true
                }
            } else {
                highScore = highScore < score ? score : highScore
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}

extension FirstScreen {
    func setVisibleToFalse() {
        kenny1.isVisible = false
        kenny2.isVisible = false
        kenny3.isVisible = false
        kenny4.isVisible = false
        kenny5.isVisible = false
        kenny6.isVisible = false
        kenny7.isVisible = false
        kenny8.isVisible = false
        kenny9.isVisible = false
    }
}
