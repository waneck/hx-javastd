package com.sun.corba.se.impl.orbutil.graph;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class GraphImpl extends java.util.AbstractSet<Dynamic> implements com.sun.corba.se.impl.orbutil.graph.Graph
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(coll : java.util.Collection<Dynamic>) : Void;
	
	/***********************************************************************************/
	@:overload @:public override public function add(obj : Dynamic) : Bool;
	
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	/***********************************************************************************/
	@:overload @:public public function getNodeData(node : com.sun.corba.se.impl.orbutil.graph.Node) : com.sun.corba.se.impl.orbutil.graph.NodeData;
	
	@:overload @:public public function getRoots() : java.util.Set<Dynamic>;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$graph$GraphImpl$NodeVisitor') @:internal extern interface GraphImpl_NodeVisitor
{
	@:overload public function visit(graph : com.sun.corba.se.impl.orbutil.graph.Graph, node : com.sun.corba.se.impl.orbutil.graph.Node, nd : com.sun.corba.se.impl.orbutil.graph.NodeData) : Void;
	
	
}
