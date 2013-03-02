package com.sun.tools.internal.xjc.reader.gbind;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Element extends com.sun.tools.internal.xjc.reader.gbind.Expression implements com.sun.tools.internal.xjc.reader.gbind.ElementSet
{
	@:overload private function new() : Void;
	
	@:overload public function addNext(element : com.sun.tools.internal.xjc.reader.gbind.Element) : Void;
	
	@:overload public function contains(rhs : com.sun.tools.internal.xjc.reader.gbind.ElementSet) : Bool;
	
	/**
	* Just to satisfy the {@link ElementSet} contract.
	*
	* @deprecated
	*      if you statically call this method, there's something wrong.
	*/
	@:overload public function iterator() : java.util.Iterator<com.sun.tools.internal.xjc.reader.gbind.Element>;
	
	/**
	* Builds a set of strongly connected components and puts them
	* all into the given set.
	*/
	@:overload public function buildStronglyConnectedComponents(ccs : java.util.List<com.sun.tools.internal.xjc.reader.gbind.ConnectedComponent>) : Void;
	
	@:overload public function hasSelfLoop() : Bool;
	
	
}
