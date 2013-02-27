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
extern class NameClassBuilderImpl<E, L, A, CL> implements com.sun.xml.internal.rngom.ast.builder.NameClassBuilder<com.sun.xml.internal.rngom.nc.NameClass, E, L, A, CL>
{
	/**
	*
	* @author
	*      Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload public function makeChoice(nameClasses : java.util.List<com.sun.xml.internal.rngom.nc.NameClass>, loc : L, anno : A) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function makeName(ns : String, localName : String, prefix : String, loc : L, anno : A) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function makeNsName(ns : String, loc : L, anno : A) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function makeNsName(ns : String, except : com.sun.xml.internal.rngom.nc.NameClass, loc : L, anno : A) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function makeAnyName(loc : L, anno : A) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function makeAnyName(except : com.sun.xml.internal.rngom.nc.NameClass, loc : L, anno : A) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function makeErrorNameClass() : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function annotate(nc : com.sun.xml.internal.rngom.nc.NameClass, anno : A) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function annotateAfter(nc : com.sun.xml.internal.rngom.nc.NameClass, e : E) : com.sun.xml.internal.rngom.nc.NameClass;
	
	@:overload public function commentAfter(nc : com.sun.xml.internal.rngom.nc.NameClass, comments : CL) : com.sun.xml.internal.rngom.nc.NameClass;
	
	
}
