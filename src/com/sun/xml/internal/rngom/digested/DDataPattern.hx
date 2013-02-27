package com.sun.xml.internal.rngom.digested;
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
extern class DDataPattern extends com.sun.xml.internal.rngom.digested.DPattern
{
	/**
	* Gets the datatype library URI.
	*
	* @return
	*      Can be empty (which represents the built-in datatypes), but never null.
	*/
	@:overload public function getDatatypeLibrary() : String;
	
	/**
	* Gets the datatype name, such as "int" or "token".
	*
	* @return
	*      never null.
	*/
	@:overload public function getType() : String;
	
	/**
	* Gets the parameters of this &lt;data pattern.
	*
	* @return
	*      can be empty but never null.
	*/
	@:overload public function getParams() : java.util.List<DDataPattern_Param>;
	
	/**
	* Gets the pattern that reprsents the &lt;except> child of this data pattern.
	*
	* @return null if not exist.
	*/
	@:overload public function getExcept() : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload override public function isNullable() : Bool;
	
	@:overload override public function accept(visitor : com.sun.xml.internal.rngom.digested.DPatternVisitor<Dynamic>) : Dynamic;
	
	
}
/**
* Parameter to a data pattern.
*/
@:native('com$sun$xml$internal$rngom$digested$DDataPattern$Param') extern class DDataPattern_Param
{
	@:overload public function new(name : String, value : String, context : com.sun.xml.internal.rngom.parse.Context, ns : String, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.digested.Annotation) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getValue() : String;
	
	@:overload public function getContext() : com.sun.xml.internal.rngom.parse.Context;
	
	@:overload public function getNs() : String;
	
	@:overload public function getLoc() : com.sun.xml.internal.rngom.ast.om.Location;
	
	@:overload public function getAnno() : com.sun.xml.internal.rngom.digested.Annotation;
	
	
}
