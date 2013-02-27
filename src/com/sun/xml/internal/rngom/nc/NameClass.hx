package com.sun.xml.internal.rngom.nc;
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
/*
* Copyright (C) 2004-2011
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/
extern class NameClass implements com.sun.xml.internal.rngom.ast.om.ParsedNameClass implements java.io.Serializable
{
	/**
	* Returns true if the given {@link QName} is a valid name
	* for this QName.
	*/
	@:overload @:abstract public function contains(name : javax.xml.namespace.QName) : Bool;
	
	@:overload @:abstract public function containsSpecificity(name : javax.xml.namespace.QName) : Int;
	
	/**
	* Visitor pattern support.
	*/
	@:overload @:abstract public function accept<V>(visitor : com.sun.xml.internal.rngom.nc.NameClassVisitor<V>) : V;
	
	/**
	* Returns true if the name class accepts infinite number of
	* {@link QName}s.
	*
	* <p>
	* Intuitively, this method returns true if the name class is
	* some sort of wildcard.
	*/
	@:overload @:abstract public function isOpen() : Bool;
	
	/**
	* If the name class is closed (IOW !{@link #isOpen()}),
	* return the set of names in this name class. Otherwise the behavior
	* is undefined.
	*/
	@:overload public function listNames() : java.util.Set<javax.xml.namespace.QName>;
	
	/**
	* Returns true if the intersection between this name class
	* and the specified name class is non-empty.
	*/
	@:overload @:final public function hasOverlapWith(nc2 : NameClass) : Bool;
	
	/** Sigleton instance that represents "anyName". */
	public static var ANY(default, null) : NameClass;
	
	/**
	* Sigleton instance that accepts no name.
	*
	* <p>
	* This instance is useful when doing boolean arithmetic over
	* name classes (such as computing an inverse of a given name class, etc),
	* even though it can never appear in a RELAX NG surface syntax.
	*
	* <p>
	* Internally, this instance is also used for:
	* <ol>
	*  <li>Used to recover from errors during parsing.
	*  <li>Mark element patterns with &lt;notAllowed/> content model.
	* </ol>
	*/
	public static var NULL(default, null) : NameClass;
	
	
}
