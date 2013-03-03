package com.sun.xml.internal.org.jvnet.fastinfoset.stax;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern interface LowLevelFastInfosetStreamWriter
{
	/**
	* Initiate low level writing of an element fragment.
	* <p>
	* This method must be invoked before other low level method.
	*/
	@:overload @:public public function initiateLowLevelWriting() : Void;
	
	/**
	* Get the next index to apply to an Element Information Item.
	* <p>
	* This will increment the next obtained index such that:
	* <pre>
	* i = w.getNextElementIndex();
	* j = w.getNextElementIndex();
	* i == j + 1;
	* </pre>
	* @return the index.
	*/
	@:overload @:public public function getNextElementIndex() : Int;
	
	/**
	* Get the next index to apply to an Attribute Information Item.
	* This will increment the next obtained index such that:
	* <pre>
	* i = w.getNextAttributeIndex();
	* j = w.getNextAttributeIndex();
	* i == j + 1;
	* </pre>
	* @return the index.
	*/
	@:overload @:public public function getNextAttributeIndex() : Int;
	
	/**
	* Get the current index that was applied to an [local name] of an
	* Element or Attribute Information Item.
	* </pre>
	* @return the index.
	*/
	@:overload @:public public function getLocalNameIndex() : Int;
	
	/**
	* Get the next index to apply to an [local name] of an Element or Attribute
	* Information Item.
	* This will increment the next obtained index such that:
	* <pre>
	* i = w.getNextLocalNameIndex();
	* j = w.getNextLocalNameIndex();
	* i == j + 1;
	* </pre>
	* @return the index.
	*/
	@:overload @:public public function getNextLocalNameIndex() : Int;
	
	@:overload @:public public function writeLowLevelTerminationAndMark() : Void;
	
	@:overload @:public public function writeLowLevelStartElementIndexed(type : Int, index : Int) : Void;
	
	/**
	* Write the start of an element.
	*
	* @return true if element is indexed, otherwise false.
	*/
	@:overload @:public public function writeLowLevelStartElement(type : Int, prefix : String, localName : String, namespaceURI : String) : Bool;
	
	@:overload @:public public function writeLowLevelStartNamespaces() : Void;
	
	@:overload @:public public function writeLowLevelNamespace(prefix : String, namespaceName : String) : Void;
	
	@:overload @:public public function writeLowLevelEndNamespaces() : Void;
	
	@:overload @:public public function writeLowLevelStartAttributes() : Void;
	
	@:overload @:public public function writeLowLevelAttributeIndexed(index : Int) : Void;
	
	/**
	* Write an attribute.
	*
	* @return true if attribute is indexed, otherwise false.
	*/
	@:overload @:public public function writeLowLevelAttribute(prefix : String, namespaceURI : String, localName : String) : Bool;
	
	@:overload @:public public function writeLowLevelAttributeValue(value : String) : Void;
	
	@:overload @:public public function writeLowLevelStartNameLiteral(type : Int, prefix : String, utf8LocalName : java.NativeArray<java.StdTypes.Int8>, namespaceURI : String) : Void;
	
	@:overload @:public public function writeLowLevelStartNameLiteral(type : Int, prefix : String, localNameIndex : Int, namespaceURI : String) : Void;
	
	@:overload @:public public function writeLowLevelEndStartElement() : Void;
	
	@:overload @:public public function writeLowLevelEndElement() : Void;
	
	@:overload @:public public function writeLowLevelText(text : java.NativeArray<java.StdTypes.Char16>, length : Int) : Void;
	
	@:overload @:public public function writeLowLevelText(text : String) : Void;
	
	@:overload @:public public function writeLowLevelOctets(octets : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	
}
