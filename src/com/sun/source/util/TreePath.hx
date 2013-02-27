package com.sun.source.util;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class TreePath implements java.lang.Iterable<com.sun.source.tree.Tree>
{
	/**
	* Gets a tree path for a tree node within a compilation unit.
	* @return null if the node is not found
	*/
	@:overload public static function getPath(unit : com.sun.source.tree.CompilationUnitTree, target : com.sun.source.tree.Tree) : TreePath;
	
	/**
	* Gets a tree path for a tree node within a subtree identified by a TreePath object.
	* @return null if the node is not found
	*/
	@:overload public static function getPath(path : TreePath, target : com.sun.source.tree.Tree) : TreePath;
	
	/**
	* Creates a TreePath for a root node.
	*/
	@:overload public function new(t : com.sun.source.tree.CompilationUnitTree) : Void;
	
	/**
	* Creates a TreePath for a child node.
	*/
	@:overload public function new(p : TreePath, t : com.sun.source.tree.Tree) : Void;
	
	/**
	* Get the compilation unit associated with this path.
	*/
	@:overload public function getCompilationUnit() : com.sun.source.tree.CompilationUnitTree;
	
	/**
	* Get the leaf node for this path.
	*/
	@:overload public function getLeaf() : com.sun.source.tree.Tree;
	
	/**
	* Get the path for the enclosing node, or null if there is no enclosing node.
	*/
	@:overload public function getParentPath() : TreePath;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.source.tree.Tree>;
	
	
}
