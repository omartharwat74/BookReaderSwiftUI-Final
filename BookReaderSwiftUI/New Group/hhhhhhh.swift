//
//  hhhhhhh.swift
//  BookReaderSwiftUI
//
//  Created by Manal Alqahtani on 16/06/1444 AH.
//
import SwiftUI
struct TestListGestures: View {

    var body: some View {
        List {
            Text("Hello, World!").padding()
                    .background(Color.yellow)

              .gesture(LongPressGesture(minimumDuration: 0.001) // resolve response time
                    .onEnded { value in
                        print(" -- child")
                    }
                )
        }
        .gesture(LongPressGesture(minimumDuration: 0.001).onEnded({ _ in
          print(" -- parent")
        }), including: .gesture)
    }
}
