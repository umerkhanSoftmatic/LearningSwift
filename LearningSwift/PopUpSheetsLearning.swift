//
//  PopUpSheetsLearning.swift
//  LearningSwift
//
//  Created by ehtisham on 08/08/2024.
//

import SwiftUI

struct PopUpSheetsLearning: View {
    @State var showScreen: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.cyan , Color.pink , Color.purple], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            
            Button(action: {
                showScreen.toggle()
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width:150, height:150)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.927, brightness: 0.659))
                        
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        
                    )
                    
            })
//            .fullScreenCover(isPresented: $showScreen, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showScreen, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode  //chatgpt
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.yellow , Color.black , Color.yellow], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()  // to come back to main screen after pressing the button again
                
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width:150, height:150)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.black)
                        
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        
                    )
                    
            })

        }
    }
}

#Preview {
    PopUpSheetsLearning()
}
