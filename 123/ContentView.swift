//
//  ContentView.swift
//  123
//
//  Created by Alex Shtandaruk on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @FocusState var focusTF: Bool
    @State var textTF: String

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack {
                    Image(systemName: "pencil")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Spacer(minLength: 280)
                    Text("Hello, world1!")
                    Spacer(minLength: 280)
                    Text("Hello, world1!")
                    Spacer(minLength: 180)
                    Text("Hello, world2!")
                    Spacer(minLength: 180)
                    Text("Hello, world3!")
                    Spacer(minLength: 180)
                    Text("Hello, world4!")
                    Spacer(minLength: 180)
                    Text("Hello, world4!")
                    TextField("text here", text: $textTF)
                        .id(1)
                        .focused($focusTF)
                }
                .padding()
            }
            .onChange(of: focusTF == true) { newValue in
                withAnimation {
                    proxy.scrollTo(1, anchor: .bottom)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(textTF: "")
    }
}
