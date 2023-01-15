//
//  ContentView.swift
//  KennyGameSwiftUI
//
//  Created by Yuliya  on 1/8/23.
//

import SwiftUI

struct FirstScreen: View {
    
    var viewModel = ViewModel()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var kenny1: KennyImage = KennyImage()
    @State var kenny2: KennyImage = KennyImage()
    @State var kenny3: KennyImage = KennyImage()
    @State var kenny4: KennyImage = KennyImage()
    @State var kenny5: KennyImage = KennyImage()
    @State var kenny6: KennyImage = KennyImage()
    @State var kenny7: KennyImage = KennyImage()
    @State var kenny8: KennyImage = KennyImage()
    @State var kenny9: KennyImage = KennyImage()
    @State private var timeRemaining = 100
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
                
                //            Spacer()
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
//                    ForEach(0...2, id: \.self) {kenny in
//                        Image(kenny.image)
//                            .resizable()
//                            .scaledToFill()
//                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
//                            .cornerRadius(10)
//                            .onTapGesture {
//                                //                            if image.isVisible {
//                                score += 1
//                                //                            }
//                            }
//                    }
                }
                Text("HighScore: \(highScore)")
                    .font(.largeTitle)
            }
            .padding(20)
        }.onReceive(timer) { time in
            if timeRemaining > 0 {
                timeRemaining -= 1
                var card = viewModel.getRandomNumber()
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
    
//    ForEach([kenny1, kenny2, kenny3, kenny4, kenny5, kenny6, kenny7, kenny8, kenny9], id: \.self) { kenny in
//        Image(kenny.image)
//            .resizable()
//            .scaledToFill()
//            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
//            .cornerRadius(10)
//            .opacity(kenny.opacity)                        .onTapGesture {
//                if kenny.isVisible {
//                    score += 1
//                }
//            }
//    }
 
    
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
