//
//  TextView.swift
//  hMD SwiftUI TextView
//
//  Created by Thomas Sillmann on 07.11.19.
//  Copyright © 2019 Thomas Sillmann. All rights reserved.
//

import SwiftUI
import UIKit

struct TextView: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<TextView>) -> UITextView {
        let textView = UITextView()
        textView.delegate = context.coordinator
        return textView
    }
    
    func updateUIView(_ textView: UITextView, context: UIViewRepresentableContext<TextView>) {
        textView.text = text
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        var parent: TextView
        
        init(_ textView: TextView) {
            parent = textView
        }
        
        func textViewDidChange(_ textView: UITextView) {
            parent.text = textView.text
        }
        
    }
    
}

struct TextView_Previews: PreviewProvider {
    
    static var previews: some View {
        TextView(text: .constant(""))
    }
    
}
