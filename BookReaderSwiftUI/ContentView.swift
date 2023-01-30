//
//  ContentView.swift
//  BookReaderSwiftUI
//
//  Created by Omar Tharwat on 06/01/2023.
//

import SwiftUI

var elements : [ElementsBox] = [
    ElementsBox(title: NSLocalizedString("firstIndex", comment: ""), imageURL: "Qoutes", id: 0),
    ElementsBox(title: NSLocalizedString("secondIndex", comment: ""), imageURL: "Articals", id: 1),
    ElementsBox(title: NSLocalizedString("thirdIndex", comment: ""), imageURL: "Abstracts", id: 2),
]

var books : [Table] = [
    Table(title: NSLocalizedString("firstList", comment: ""), imageURL: "1", content: NSLocalizedString("firstContent", comment: "")),
    Table(title: NSLocalizedString("secondList", comment: ""), imageURL: "2", content: ""),
    Table(title: NSLocalizedString("thirdList", comment: ""), imageURL: "3", content: ""),
    Table(title: NSLocalizedString("fourthList", comment: ""), imageURL: "4", content: ""),
    Table(title: NSLocalizedString("fifthList", comment: ""), imageURL: "5", content: ""),
]
var books2 : [Table] = [
    Table(title: NSLocalizedString("firstList", comment: ""), imageURL: "1", content: NSLocalizedString("firstContent", comment: "")),
    Table(title: NSLocalizedString("secondList", comment: ""), imageURL: "2", content: ""),
]
var books3 : [Table] = [
    Table(title: NSLocalizedString("firstList", comment: ""), imageURL: "1", content: NSLocalizedString("firstContent", comment: ""))
]

struct ContentView: View {
    @EnvironmentObject var appSettings: AppSettings
    @State var selected = 0
    
    var body: some View {
        NavigationView{
            VStack{
                if selected == 0 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(elements , id: \.id) { box in
                                ElementsView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                    BooksListCategory(table: books)
                }//
                if selected == 1 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(elements , id: \.id) { box in
                                ElementsView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                    BooksListCategory(table: books2)
                }//
                if selected == 2 { //
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 10){
                            ForEach(elements , id: \.id) { box in
                                ElementsView(selectedBtn: self.$selected, box: box)
                            }
                        }
                    }.padding(20)
                    BooksListCategory(table: books3)
                }//
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        Image("l")
                            .resizable()
                            .frame(width: 70,height: 40)
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppSettings())
    }
}
