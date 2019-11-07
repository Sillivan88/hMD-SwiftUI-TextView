//
//  ContentView.swift
//  hMD SwiftUI TextView
//
//  Created by Thomas Sillmann on 07.11.19.
//  Copyright © 2019 Thomas Sillmann. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textViewValue = ""
    
    var body: some View {
        VStack {
            Text("SwiftUI-Texteditor")
                .font(.largeTitle)
            TextView(text: $textViewValue)
                .border(Color.gray, width: 0.5)
            Divider()
            Text(textViewValue)
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}
