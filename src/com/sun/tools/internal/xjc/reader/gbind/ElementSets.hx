package com.sun.tools.internal.xjc.reader.gbind;
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
extern class ElementSets
{
	/**
	* Returns an union of two {@link ElementSet}s.
	*
	* This method performs better if lhs is bigger than rhs
	*/
	@:overload public static function union(lhs : com.sun.tools.internal.xjc.reader.gbind.ElementSet, rhs : com.sun.tools.internal.xjc.reader.gbind.ElementSet) : com.sun.tools.internal.xjc.reader.gbind.ElementSet;
	
	
}
/**
* {@link ElementSet} that has multiple {@link Element}s in it.
*
* This isn't particularly efficient or anything, but it will do for now.
*/
@:native('com$sun$tools$internal$xjc$reader$gbind$ElementSets$MultiValueSet') @:internal extern class ElementSets_MultiValueSet extends java.util.LinkedHashSet<com.sun.tools.internal.xjc.reader.gbind.Element> implements com.sun.tools.internal.xjc.reader.gbind.ElementSet
{
	@:overload public function new(lhs : com.sun.tools.internal.xjc.reader.gbind.ElementSet, rhs : com.sun.tools.internal.xjc.reader.gbind.ElementSet) : Void;
	
	@:overload public function contains(rhs : com.sun.tools.internal.xjc.reader.gbind.ElementSet) : Bool;
	
	@:overload public function addNext(element : com.sun.tools.internal.xjc.reader.gbind.Element) : Void;
	
	
}
