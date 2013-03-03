package com.sun.org.apache.xerces.internal.util;
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
////java imports
extern class XMLAttributesIteratorImpl extends com.sun.org.apache.xerces.internal.util.XMLAttributesImpl implements java.util.Iterator<Dynamic>
{
	/**
	* Its better to extend the functionality of existing XMLAttributesImpl and also make it of type Iterator.
	* We can directly  give an object of type iterator from StartElement event. We should also have
	* Attribute object of type javax.xml.stream.Attribute internally. It would avoid the need of creating
	* new javax.xml.stream.Attribute object at the later stage.
	*
	* Should we change XMLAttributes interface to implement Iteraotr ? I think its better avoid touching XNI as
	* much as possible. - NB.
	*/
	@:protected private var fCurrent : Int;
	
	@:protected private var fLastReturnedItem : com.sun.org.apache.xerces.internal.util.XMLAttributesImpl.XMLAttributesImpl_Attribute;
	
	/** Creates a new instance of XMLAttributesIteratorImpl */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public override public function removeAllAttributes() : Void;
	
	
}
