//
//  main.swift
//  KeyboardEmulator
//
//  Created by Fedor Mutiev on 25.09.2021.
//

import Foundation

let source = CGEventSource(stateID: CGEventSourceStateID.hidSystemState)

let cmdKey: UInt16 = 0x38
let numberThreeKey: UInt16 = 0x14

let cmdDown = CGEvent(keyboardEventSource: source, virtualKey: cmdKey, keyDown: true)
let cmdUp = CGEvent(keyboardEventSource: source, virtualKey: cmdKey, keyDown: false)
let keyThreeDown = CGEvent(keyboardEventSource: source, virtualKey: numberThreeKey, keyDown: true)
let keyThreeUp = CGEvent(keyboardEventSource: source, virtualKey: numberThreeKey, keyDown: false)


fileprivate func testShortcut() {

    let loc = CGEventTapLocation.cghidEventTap
    print("function executed")
    cmdDown?.flags = CGEventFlags.maskCommand
    cmdUp?.flags = CGEventFlags.maskCommand
    keyThreeDown?.flags = CGEventFlags.maskCommand
    keyThreeUp?.flags = CGEventFlags.maskCommand

    cmdDown?.post(tap: loc)
    keyThreeDown?.post(tap: loc)
    cmdUp?.post(tap: loc)
    keyThreeUp?.post(tap: loc)

}
print("sending hotkey")
testShortcut()
