//
//  BytecodePrivateVirtualHeader.swift
//  Lioness
//
//  Created by Louis D'hauwe on 08/02/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation

public class BytecodePrivateVirtualHeader: BytecodeLine {
	
	let id: Int
	
	private let name: String?
	
	init(id: Int, name: String? = nil) {
		self.id = id
		self.name = name
	}
	
	/// Debug description
	public var description: String {
		var descr = ""
		
		if let name = name {
			descr += "\(name)()"
		}
		
		descr += ":"
		
		descr += "; virtual #\(id)".byAppendingLeading(" ", max(1, 30 - descr.characters.count))
		
		return descr
	}
	
	public var encoded: String {
		
		// TODO: encode properly
		
		var descr = "\(id)"
		
		descr += "()"
		
		descr += ":"
		
		return descr
	}
	
}
