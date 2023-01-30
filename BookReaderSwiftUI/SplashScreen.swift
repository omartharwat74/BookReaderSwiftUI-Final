//
//  SplashScreen.swift
//  BookReaderSwiftUI
//
//  Created by Omar Tharwat on 16/01/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @EnvironmentObject var appSettings: AppSettings
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        Image("l")
                            .resizable()
                            .frame(width: 70,height: 40)
                        Spacer()
                        Image("Image")
                            .resizable()
                            .frame(width: 350, height: 320)
                            .cornerRadius(1)
                            .frame(maxWidth: .infinity)
                        Spacer()
                    }
                    VStack{
                    Text( NSLocalizedString("text1", comment: ""))
                            .font(.custom("Baskerville-Bold", size: 29))
                        .foregroundColor(.black.opacity(0.80))
                        .multilineTextAlignment(.leading)
                    Text( NSLocalizedString("text2", comment: ""))
                            .font(.custom("Baskerville-Bold", size: 29))
                        .foregroundColor(.black.opacity(0.80))
                        .multilineTextAlignment(.leading)
                    Text( NSLocalizedString("text3", comment: ""))
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                    Text( NSLocalizedString("text4", comment: ""))
                        .font(.title3)
                    Text( NSLocalizedString("text5", comment: ""))
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                }
                    .padding([.top, .leading], 44)
                .scaleEffect(size)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
                    Spacer()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                        
                    }
                    
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView().environmentObject(AppSettings())
    }
}
