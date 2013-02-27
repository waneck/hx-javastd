package com.sun.tools.internal.xjc.model;
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
extern class CAdapter extends com.sun.xml.internal.bind.v2.model.core.Adapter<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>
{
	/**
	* When the adapter class is statically known to us.
	*
	* @param copy
	*      true to copy the adapter class into the user package,
	*      or otherwise just refer to the class specified via the
	*      adapter parameter.
	*/
	@:overload public function new(adapter : Class<javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>, copy : Bool) : Void;
	
	@:overload public function new(adapter : com.sun.codemodel.internal.JClass) : Void;
	
	@:overload public function getAdapterClass(o : com.sun.tools.internal.xjc.outline.Outline) : com.sun.codemodel.internal.JClass;
	
	/**
	* Returns true if the adapter is for whitespace normalization.
	* Such an adapter can be ignored when producing a list.
	*/
	@:overload public function isWhitespaceAdapter() : Bool;
	
	/**
	* Returns the adapter class if the adapter type is statically known to XJC.
	* <p>
	* This method is mostly for enabling certain optimized code generation.
	*/
	@:overload public function getAdapterIfKnown() : Class<javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>;
	
	
}
