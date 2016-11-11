//
//  ViewController.swift
//  Morse speech converter
//
//  Created by Nikola Andriiev on 09.11.16.
//  Copyright © 2016 Andriiev.Mykola. All rights reserved.
//

import UIKit
import Speech

class SpeachController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var microphoneButton: UIButton!

    @IBAction func microphoneTapped(_ sender: UIButton) {
        if audioEngine.isRunning {
            audioEngine.stop()
            recognitionRequest?.endAudio()
            microphoneButton.isEnabled = false
            microphoneButton.setTitle("Start Recording", for: .normal)
        } else {
            microphoneButton.setTitle("Stop Recording", for: .normal)
        }
    }
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "ru_RU"))!

    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
