package com.sun.xml.internal.xsom;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SCD
{
	/**
	* Parses the string representation of SCD.
	*
	* <p>
	* This method involves parsing the path expression and preparing the in-memory
	* structure, so this is useful when you plan to use the same SCD against
	* different context node multiple times.
	*
	* <p>
	* If you want to evaluate SCD just once, use {@link XSComponent#select} methods.
	*
	* @param path
	*      the string representation of SCD, such as "/foo/bar".
	* @param nsContext
	*      Its {@link NamespaceContext#getNamespaceURI(String)} is used
	*      to resolve prefixes in the SCD to the namespace URI.
	*/
	@:overload public static function create(path : String, nsContext : javax.xml.namespace.NamespaceContext) : SCD;
	
	/**
	* Evaluates the SCD against the given context node and
	* returns the matched nodes.
	*
	* @return
	*      could be empty but never be null.
	*/
	@:overload @:final public function select(contextNode : com.sun.xml.internal.xsom.XSComponent) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	/**
	* Evaluates the SCD against the whole schema and
	* returns the matched nodes.
	*
	* <p>
	* This method is here because {@link XSSchemaSet}
	* doesn't implement {@link XSComponent}.
	*
	* @return
	*      could be empty but never be null.
	*/
	@:overload @:final public function select(contextNode : com.sun.xml.internal.xsom.XSSchemaSet) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	/**
	* Evaluates the SCD against the given context node and
	* returns the matched node.
	*
	* @return
	*      null if the SCD didn't match anything. If the SCD matched more than one node,
	*      the first one will be returned.
	*/
	@:overload @:final public function selectSingle(contextNode : com.sun.xml.internal.xsom.XSComponent) : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* Evaluates the SCD against the whole schema set and
	* returns the matched node.
	*
	* @return
	*      null if the SCD didn't match anything. If the SCD matched more than one node,
	*      the first one will be returned.
	*/
	@:overload @:final public function selectSingle(contextNode : com.sun.xml.internal.xsom.XSSchemaSet) : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* Evaluates the SCD against the given set of context nodes and
	* returns the matched nodes.
	*
	* @param contextNodes
	*      {@link XSComponent}s that represent the context node against
	*      which {@link SCD} is evaluated.
	*
	* @return
	*      could be empty but never be null.
	*/
	@:overload @:abstract public function select(contextNodes : java.util.Iterator<com.sun.xml.internal.xsom.XSComponent>) : java.util.Iterator<com.sun.xml.internal.xsom.XSComponent>;
	
	/**
	* Evaluates the SCD against the given set of context nodes and
	* returns the matched nodes.
	*
	* @param contextNodes
	*      {@link XSComponent}s that represent the context node against
	*      which {@link SCD} is evaluated.
	*
	* @return
	*      could be empty but never be null.
	*/
	@:overload @:final public function select(contextNodes : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	/**
	* Returns the textual SCD representation as given to {@link SCD#create(String, NamespaceContext)}.
	*/
	@:overload @:abstract public function toString() : String;
	
	
}
