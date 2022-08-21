//
//  ContentView.swift
//  War Challenge
//
//  Created by Arvil Pemaj on 7/19/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()

             Image("logo")
                Spacer()
                HStack{
                    Spacer()

                    Image(playerCard)
                    Spacer()

                    Image(cpuCard)
                    Spacer()

                }
                Spacer()
                
                Button(action: {
                    //Generate a random number between 2-14
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    //update the cards
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    //update the score
                    if playerRandom > cpuRandom{
                        playerScore += 1
                    }
                    else if playerRandom < cpuRandom{
                        cpuScore += 1
                    }
                    
                
                
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                
                
                Spacer()

                HStack{
                    Spacer()

                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()

                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()

                }
                
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
