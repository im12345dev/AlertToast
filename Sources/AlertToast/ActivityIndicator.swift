//
//  File.swift
//
//
//  Created by אילי זוברמן on 14/02/2021.
//

import SwiftUI

#if os(macOS)
@available(iOS 14, tvOS 14, *)
struct ActivityIndicator: NSViewRepresentable {

    let color: Color

    func makeNSView(context: NSViewRepresentableContext<ActivityIndicator>) -> NSProgressIndicator {
        let nsView = NSProgressIndicator()
        
        nsView.isIndeterminate = true
        nsView.style = .spinning
        nsView.startAnimation(context)
        
        return nsView
    }
    
    func updateNSView(_ nsView: NSProgressIndicator, context: NSViewRepresentableContext<ActivityIndicator>) {
    }
}
#else
@available(iOS 14, tvOS 14, *)
struct ActivityIndicator: UIViewRepresentable {

    let color: Color

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        
        let progressView = UIActivityIndicatorView(style: .large)
        progressView.startAnimating()
        
        return progressView
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.color = UIColor(color)
    }
}
#endif
