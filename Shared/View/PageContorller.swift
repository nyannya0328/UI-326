
import SwiftUI

struct PageContorller: UIViewRepresentable {
    
    var maxPages : Int
    var currentPage : Int
    
    
    func makeUIView(context: Context) -> UIPageControl{
        
        let control = UIPageControl()
        control.backgroundStyle = .minimal //promint 見える
        control.numberOfPages = maxPages
        control.currentPage = currentPage
        return control
        
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        
        uiView.currentPage = currentPage
        
    }
    
}

