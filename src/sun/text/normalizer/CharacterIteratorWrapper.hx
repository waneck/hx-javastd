package sun.text.normalizer;
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
*******************************************************************************
* (C) Copyright IBM Corp. 1996-2005 - All Rights Reserved                     *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class CharacterIteratorWrapper extends sun.text.normalizer.UCharacterIterator
{
	@:overload public function new(iter : java.text.CharacterIterator) : Void;
	
	/**
	* @see UCharacterIterator#current()
	*/
	@:overload override public function current() : Int;
	
	/**
	* @see UCharacterIterator#getLength()
	*/
	@:overload override public function getLength() : Int;
	
	/**
	* @see UCharacterIterator#getIndex()
	*/
	@:overload override public function getIndex() : Int;
	
	/**
	* @see UCharacterIterator#next()
	*/
	@:overload override public function next() : Int;
	
	/**
	* @see UCharacterIterator#previous()
	*/
	@:overload override public function previous() : Int;
	
	/**
	* @see UCharacterIterator#setIndex(int)
	*/
	@:overload override public function setIndex(index : Int) : Void;
	
	/**
	* @see UCharacterIterator#getText(char[])
	*/
	@:overload override public function getText(fillIn : java.NativeArray<java.StdTypes.Char16>, offset : Int) : Int;
	
	/**
	* Creates a clone of this iterator.  Clones the underlying character iterator.
	* @see UCharacterIterator#clone()
	*/
	@:overload override public function clone() : Dynamic;
	
	
}
