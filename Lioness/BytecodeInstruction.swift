//
//  BytecodeInstruction.swift
//  Lioness
//
//  Created by Louis D'hauwe on 08/10/2016.
//  Copyright © 2016 Silver Fox. All rights reserved.
//

import Foundation

enum BytecodeInstructionError: Error {
	case invalidDecoding
}

public class BytecodeInstruction: CustomStringConvertible {
	
	let label: String
	let command: String
	let arguments: [String]
	
	init(instructionString: String) throws {
		
		let substrings = instructionString.components(separatedBy: " ")
		
		guard var label = substrings[safe: 0] else {
			throw BytecodeInstructionError.invalidDecoding
		}
		
		guard let colonIndex = label.characters.index(of: ":") else {
			throw BytecodeInstructionError.invalidDecoding
		}
		
		label.remove(at: colonIndex)
		
		self.label = label
		
		guard let command = substrings[safe: 1] else {
			throw BytecodeInstructionError.invalidDecoding
		}
		
		self.command = command
		
		if let args = substrings[safe: 2]?.components(separatedBy: ",") {
			self.arguments = args
		} else {
			self.arguments = []
		}
		
	}
	
	init(label: String, command: String, arguments: [String]) {
		self.label = label
		self.command = command
		self.arguments = arguments
	}
	
	init(label: String, command: String) {
		self.label = label
		self.command = command
		self.arguments = []
	}

	public var description: String {
		var args = ""
		
		var i = 0
		for a in arguments {
			args += a
			i += 1
			
			if i != arguments.count {
				args += ","
			}
		}
		
		return "\(label): \(command) \(args)"
	}
	
}

extension Array {
	subscript (safe index: Int) -> Element? {
		return indices ~= index ? self[index] : nil
	}
}
