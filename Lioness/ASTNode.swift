//
//  ASTNode.swift
//  Lioness
//
//  Created by Louis D'hauwe on 04/10/2016.
//  Copyright © 2016 - 2017 Silver Fox. All rights reserved.
//

import Foundation

/// AST node with a compile function to compile to Scorpion
public class ASTNode: CustomStringConvertible, ASTNodeDescriptor {
	
	/// Compiles to Scorpion bytecode instructions
	public func compile(with ctx: BytecodeCompiler) throws -> BytecodeBody {
		return []
	}
	
	public var description: String {
		return ""
	}
	
	public var nodeDescription: String? {
		return nil
	}
	
	public var childNodes: [ASTChildNode] {
		return []
	}

}
