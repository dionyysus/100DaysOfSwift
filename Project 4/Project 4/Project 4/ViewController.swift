//
//  ViewController.swift
//  Project 4
//
//  Created by Gizem Coşkun on 21.08.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webview: WKWebView!
    var progressView: UIProgressView!
    var websites = ["apple.com", "hackingwithswift.com"]

    override func loadView() {
        webview = WKWebView()
        webview.navigationDelegate = self
        view = webview
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webview, action: #selector(webview.reload))
        
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        let progressButton = UIBarButtonItem(customView: progressView)
        
        toolbarItems = [progressButton, spacer, refresh]
        navigationController?.isToolbarHidden = false
        
        webview.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)

    
        let url = URL(string: "https://www.hackingwithswift.com")!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures = true
    }
   
    @objc func openTapped(){
        let ac = UIAlertController(title: "Open Page...", message: nil, preferredStyle: .actionSheet)
        //ac.addAction(UIAlertAction(title: "apple.com", style: .default, handler: openPage))
        //ac.addAction(UIAlertAction(title: "hackingwithswift.com", style: .default, handler: openPage))
        for website in websites {
            ac.addAction(UIAlertAction(title: website, style: .default, handler: openPage))

        }
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        ac.popoverPresentationController?.barButtonItem = self.navigationItem.rightBarButtonItem
        present(ac, animated: true)

    }

    func openPage(action: UIAlertAction) {
        let url = URL(string: "https://" + action.title!)!
        webview.load(URLRequest(url: url))
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(webview.estimatedProgress)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void)  {
        let url = navigationAction.request.url
        
        if let host = url?.host{
            for website in websites {
                if host.contains(website) {
                    decisionHandler(.allow)
                    return
                }
            }
        }
        decisionHandler(.cancel)
    }
}

