
import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        LittleBigLabWebView()
            .ignoresSafeArea()
    }
}

struct LittleBigLabWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.isOpaque = false
        webView.backgroundColor = .black

        if let url = Bundle.main.url(
            forResource: "little_big_lab",
            withExtension: "html"
        ) {
            webView.loadFileURL(
                url,
                allowingReadAccessTo: url.deletingLastPathComponent()
            )
        }

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {}
}
