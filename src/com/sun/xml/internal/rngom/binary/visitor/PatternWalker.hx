package com.sun.xml.internal.rngom.binary.visitor;
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
extern class PatternWalker implements com.sun.xml.internal.rngom.binary.visitor.PatternVisitor
{
	/**
	* Walks the pattern tree.
	*
	* @author
	*      Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload @:public public function visitEmpty() : Void;
	
	@:overload @:public public function visitNotAllowed() : Void;
	
	@:overload @:public public function visitError() : Void;
	
	@:overload @:public public function visitGroup(p1 : com.sun.xml.internal.rngom.binary.Pattern, p2 : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:protected private function visitBinary(p1 : com.sun.xml.internal.rngom.binary.Pattern, p2 : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitInterleave(p1 : com.sun.xml.internal.rngom.binary.Pattern, p2 : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitChoice(p1 : com.sun.xml.internal.rngom.binary.Pattern, p2 : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitOneOrMore(p : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitElement(nc : com.sun.xml.internal.rngom.nc.NameClass, content : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitAttribute(ns : com.sun.xml.internal.rngom.nc.NameClass, value : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitData(dt : org.relaxng.datatype.Datatype) : Void;
	
	@:overload @:public public function visitDataExcept(dt : org.relaxng.datatype.Datatype, except : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitValue(dt : org.relaxng.datatype.Datatype, obj : Dynamic) : Void;
	
	@:overload @:public public function visitText() : Void;
	
	@:overload @:public public function visitList(p : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	@:overload @:public public function visitAfter(p1 : com.sun.xml.internal.rngom.binary.Pattern, p2 : com.sun.xml.internal.rngom.binary.Pattern) : Void;
	
	
}
