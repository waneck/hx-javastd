package com.sun.xml.internal.bind.v2.model.core;
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
extern interface EnumConstant<T, C>
{
	/**
	* Gets the {@link EnumLeafInfo} to which this constant belongs to.
	*
	* @return never null.
	*/
	@:overload public function getEnclosingClass() : com.sun.xml.internal.bind.v2.model.core.EnumLeafInfo<T, C>;
	
	/**
	* Lexical value of this constant.
	*
	* <p>
	* This value should be evaluated against
	* {@link EnumLeafInfo#getBaseType()} to obtain the typed value.
	*
	* <p>
	* This is the same value as written in the {@link XmlEnumValue} annotation.
	* In the above example, this method returns "1" and "2".
	*
	* @return
	*      never null.
	*/
	@:overload public function getLexicalValue() : String;
	
	/**
	* Gets the constant name.
	*
	* <p>
	* In the above example this method return "ONE" and "TWO".
	*
	* @return
	*      never null. A valid Java identifier.
	*/
	@:overload public function getName() : String;
	
	
}
