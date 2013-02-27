package com.sun.xml.internal.bind.v2.model.impl;
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
@:internal extern class EnumConstantImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.EnumConstant<T, C>
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	private var lexical(default, null) : String;
	
	private var owner(default, null) : com.sun.xml.internal.bind.v2.model.impl.EnumLeafInfoImpl<T, C, F, M>;
	
	private var name(default, null) : String;
	
	/**
	* All the constants of the {@link EnumConstantImpl} is linked in one list.
	*/
	private var next(default, null) : EnumConstantImpl<T, C, F, M>;
	
	@:overload public function new(owner : com.sun.xml.internal.bind.v2.model.impl.EnumLeafInfoImpl<T, C, F, M>, name : String, lexical : String, next : EnumConstantImpl<T, C, F, M>) : Void;
	
	@:overload public function getEnclosingClass() : com.sun.xml.internal.bind.v2.model.core.EnumLeafInfo<T, C>;
	
	@:overload @:final public function getLexicalValue() : String;
	
	@:overload @:final public function getName() : String;
	
	
}
