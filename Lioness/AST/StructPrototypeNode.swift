//
//  StructPrototypeNode.swift
//  Lioness
//
//  Created by Louis D'hauwe on 10/01/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation

public class StructPrototypeNode: ASTNode {
	
	public let name: String
	public let members: [String]
	
	public init(name: String, members: [String]) {
		self.name = name
		self.members = members
	}
	
	public func compile(with ctx: BytecodeCompiler, in parent: ASTNode?) throws -> BytecodeBody {
		return []
	}
	
	public var childNodes: [ASTNode] {
		return []
	}
	
	public var description: String {
		return "StructPrototypeNode(name: \(name), members: \(members))"
	}
	
	public var nodeDescription: String? {
		return "Struct Prototype"
	}
	
	public var descriptionChildNodes: [ASTChildNode] {
		return []
	}
	
}
