package javax.xml.crypto.dom;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* $Id: DOMStructure.java,v 1.6 2005/05/09 18:33:26 mullan Exp $
*/
extern class DOMStructure implements javax.xml.crypto.XMLStructure
{
	/**
	* Creates a <code>DOMStructure</code> containing the specified node.
	*
	* @param node the node
	* @throws NullPointerException if <code>node</code> is <code>null</code>
	*/
	@:overload @:public public function new(node : org.w3c.dom.Node) : Void;
	
	/**
	* Returns the node contained in this <code>DOMStructure</code>.
	*
	* @return the node
	*/
	@:overload @:public public function getNode() : org.w3c.dom.Node;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function isFeatureSupported(feature : String) : Bool;
	
	
}
