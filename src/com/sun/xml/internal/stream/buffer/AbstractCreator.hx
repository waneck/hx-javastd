package com.sun.xml.internal.stream.buffer;
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
/**
* Base class for classes that creates {@link MutableXMLStreamBuffer}
* and from infoset in API-specific form.
*/
extern class AbstractCreator extends com.sun.xml.internal.stream.buffer.AbstractCreatorProcessor
{
	@:protected private var _buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	@:overload @:public public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer) : Void;
	
	@:overload @:public public function getXMLStreamBuffer() : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	@:overload @:protected @:final private function createBuffer() : Void;
	
	/**
	* Should be called whenever a new tree is stored on the buffer.
	*/
	@:overload @:protected @:final private function increaseTreeCount() : Void;
	
	@:overload @:protected @:final private function setBuffer(buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer) : Void;
	
	@:overload @:protected @:final private function setHasInternedStrings(hasInternedStrings : Bool) : Void;
	
	@:overload @:protected @:final private function storeStructure(b : Int) : Void;
	
	@:overload @:protected @:final private function resizeStructure() : Void;
	
	@:overload @:protected @:final private function storeStructureString(s : String) : Void;
	
	@:overload @:protected @:final private function resizeStructureStrings() : Void;
	
	@:overload @:protected @:final private function storeContentString(s : String) : Void;
	
	@:overload @:protected @:final private function storeContentCharacters(type : Int, ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:protected @:final private function resizeContentCharacters() : Void;
	
	@:overload @:protected @:final private function storeContentCharactersCopy(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:protected @:final private function peekAtContentObject() : Dynamic;
	
	@:overload @:protected @:final private function storeContentObject(s : Dynamic) : Void;
	
	@:overload @:protected @:final private function resizeContentObjects() : Void;
	
	
}
