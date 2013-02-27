package com.sun.tools.example.debug.gui;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
/*
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
extern class SourceTreeTool extends javax.swing.JPanel
{
	@:overload public function new(env : com.sun.tools.example.debug.gui.Environment) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceTreeTool$SourceTreeToolListener') @:internal extern class SourceTreeTool_SourceTreeToolListener implements com.sun.tools.example.debug.gui.SourceListener
{
	@:overload public function sourcepathChanged(e : com.sun.tools.example.debug.gui.SourcepathChangedEvent) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceTreeTool$SourceOrDirectoryFilter') @:internal extern class SourceTreeTool_SourceOrDirectoryFilter implements java.io.FilenameFilter
{
	@:overload public function accept(dir : java.io.File, name : String) : Bool;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceTreeTool$SourceTreeNode') @:internal extern class SourceTreeTool_SourceTreeNode implements javax.swing.tree.TreeNode
{
	@:overload public function toString() : String;
	
	@:overload public function getRelativePath() : String;
	
	/*
	* Returns the child <code>TreeNode</code> at index
	* <code>childIndex</code>.
	*/
	@:overload public function getChildAt(childIndex : Int) : javax.swing.tree.TreeNode;
	
	/**
	* Returns the number of children <code>TreeNode</code>s the receiver
	* contains.
	*/
	@:overload public function getChildCount() : Int;
	
	/**
	* Returns the parent <code>TreeNode</code> of the receiver.
	*/
	@:overload public function getParent() : javax.swing.tree.TreeNode;
	
	/**
	* Returns the index of <code>node</code> in the receivers children.
	* If the receiver does not contain <code>node</code>, -1 will be
	* returned.
	*/
	@:overload public function getIndex(node : javax.swing.tree.TreeNode) : Int;
	
	/**
	* Returns true if the receiver allows children.
	*/
	@:overload public function getAllowsChildren() : Bool;
	
	/**
	* Returns true if the receiver is a leaf.
	*/
	@:overload public function isLeaf() : Bool;
	
	/**
	* Returns the children of the receiver as an Enumeration.
	*/
	@:overload public function children() : java.util.Enumeration<Dynamic>;
	
	
}
