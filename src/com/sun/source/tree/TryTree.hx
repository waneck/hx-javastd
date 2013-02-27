package com.sun.source.tree;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface TryTree extends com.sun.source.tree.StatementTree
{
	/**
	* A tree node for a 'try' statement.
	*
	* For example:
	* <pre>
	*   try
	*       <em>block</em>
	*   <em>catches</em>
	*   finally
	*       <em>finallyBlock</em>
	* </pre>
	*
	* @jls section 14.20
	*
	* @author Peter von der Ah&eacute;
	* @author Jonathan Gibbons
	* @since 1.6
	*/
	@:require(java6) @:overload public function getBlock() : com.sun.source.tree.BlockTree;
	
	@:overload public function getCatches() : java.util.List<com.sun.source.tree.CatchTree>;
	
	@:overload public function getFinallyBlock() : com.sun.source.tree.BlockTree;
	
	@:overload public function getResources() : java.util.List<com.sun.source.tree.Tree>;
	
	
}
