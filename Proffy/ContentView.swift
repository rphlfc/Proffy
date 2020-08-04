//
//  ContentView.swift
//  Proffy
//
//  Created by Raphael Cerqueira on 04/08/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.511705637, green: 0.3420919776, blue: 0.901457727, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Proffy")
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(.white)
                
                Text("Sua plataforme de estudos online")
                    .font(.system(size: 28, weight: .medium))
                    .padding(.horizontal, 32)
                    .padding(.top, 16)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.8460586667, green: 0.7230492234, blue: 0.9993830323, alpha: 1)))
                
                LottieView(filename: "teamwork")
                    .frame(maxHeight: 300)
                
                HStack {
                    ButtonView(iconName: "book", title: "Estudar", backgroundColor: Color(#colorLiteral(red: 0.5976862311, green: 0.4510867596, blue: 0.9306223989, alpha: 1)))
                    
                    Spacer()
                    
                    ButtonView(iconName: "tv", title: "Dar aulas", backgroundColor: Color(#colorLiteral(red: 0.0007877342869, green: 0.8251498342, blue: 0.3806075454, alpha: 1)))
                }
                .padding(.horizontal, 16)
                
                HStack {
                    Text("Total de 200 conexões já realizadas")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.832131803, green: 0.6984660029, blue: 0.9966495633, alpha: 1)))
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.5968891978, green: 0.4322119951, blue: 0.9600955844, alpha: 1)))
                }
                .padding(.top, 8)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    var iconName: String
    var title: String
    var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: iconName)
                
                Text(title)
                    .font(.system(size: 18, weight: .bold))
                    .padding(.leading, 8)
            }
            .foregroundColor(.white)
            .frame(width: 180, height: 70)
            .background(self.backgroundColor)
            .cornerRadius(10)
        }
    }
}
