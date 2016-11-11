//
//  SpeechRecognizerContext.swift
//  Morse speech converter
//
//  Created by Nikola Andriiev on 11.11.16.
//  Copyright © 2016 Andriiev.Mykola. All rights reserved.
//

import UIKit
import Speech

extension SpeechRecognizerContext: SFSpeechRecognizerDelegate {
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        //notify ifSpeach recornithr available
    }
}

class SpeechRecognizerContext: NSObject {
    private let audioEngine = AVAudioEngine()
    
    private let speechRecognizer: SFSpeechRecognizer?
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    
    public init( locale: Locale) {
        self.speechRecognizer = SFSpeechRecognizer(locale: locale)
        
        super.init()
    }
    
   public func requestAutorization() {
        SFSpeechRecognizer.requestAuthorization {
            switch $0 {
            case.authorized: print("authorized")
            case.denied: print("authorized")
            case.notDetermined: print("authorized")
            case.restricted: print("authorized")
            }
        }
    }
}
