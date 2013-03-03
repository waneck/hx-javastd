package com.sun.xml.internal.bind.v2.runtime;
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
extern class AssociationMap<XmlNode>
{
	/** Records the new element&lt;->inner peer association. */
	@:overload @:public public function addInner(element : XmlNode, inner : Dynamic) : Void;
	
	/** Records the new element&lt;->outer peer association. */
	@:overload @:public public function addOuter(element : XmlNode, outer : Dynamic) : Void;
	
	@:overload @:public public function addUsed(n : XmlNode) : Void;
	
	@:overload @:public public function byElement(e : Dynamic) : com.sun.xml.internal.bind.v2.runtime.AssociationMap.AssociationMap_Entry<XmlNode>;
	
	@:overload @:public public function byPeer(o : Dynamic) : com.sun.xml.internal.bind.v2.runtime.AssociationMap.AssociationMap_Entry<XmlNode>;
	
	@:overload @:public public function getInnerPeer(element : XmlNode) : Dynamic;
	
	@:overload @:public public function getOuterPeer(element : XmlNode) : Dynamic;
	
	
}
/**
* Bi-directional map between elements, inner peers,
* and outer peers.
*
* <p>
* TODO: this should be rewritten for efficiency.
*
* @since 2.0
*
* @author
*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
@:require(java0) @:native('com$sun$xml$internal$bind$v2$runtime$AssociationMap$Entry') @:internal extern class AssociationMap_Entry<XmlNode>
{
	@:overload @:public public function element() : XmlNode;
	
	@:overload @:public public function inner() : Dynamic;
	
	@:overload @:public public function outer() : Dynamic;
	
	
}
