//
//  ElementsView.swift
//  BookReaderSwiftUI
//
//  Created by Omar Tharwat on 06/01/2023.
//

import SwiftUI

struct ElementsView : View {
    
    @Binding var selectedBtn: Int 
    
    let box : ElementsBox
    
    var body: some View {
        VStack {
            Button {
                self.selectedBtn = self.box.id
                
            } label: {
                VStack{
                    Image(box.imageURL)
                    Text(box.title)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                }
            } .frame(width: 109,height: 84)
                .background(self.selectedBtn == self.box.id ? Color(hex: "EEEEFF"): Color.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: 29)
                        .stroke(.gray, lineWidth: 1))
                .cornerRadius(29)
        }
    }
    
    
}
