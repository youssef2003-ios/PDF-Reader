import SwiftUI
import PDFKit


struct PDFKitView: UIViewRepresentable {

    let pdfDocument: PDFDocument
    
    init(showing pdfDocument: PDFDocument) {
        self.pdfDocument = pdfDocument
    }
    
    func makeUIView(context: Context) -> PDFView {
        
        let pdfView = PDFView()
        
        pdfView.document = pdfDocument
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        
        pdfView.document = pdfDocument
    }
}

struct ContentView: View {
    
    let pdfDoc: PDFDocument
    
    init(){
        
        let url = Bundle.main.url(forResource: "Power System Engineering", withExtension: "pdf")!
        
        pdfDoc = PDFDocument(url: url)!
    }
    
    var body: some View {
       
      
        PDFKitView(showing: pdfDoc)
        
    
    }
}

#Preview {
    ContentView()
}
