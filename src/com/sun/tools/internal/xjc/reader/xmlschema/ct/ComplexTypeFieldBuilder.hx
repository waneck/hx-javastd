package com.sun.tools.internal.xjc.reader.xmlschema.ct;
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
extern class ComplexTypeFieldBuilder extends com.sun.tools.internal.xjc.reader.xmlschema.BindingComponent
{
	/**
	* Binds a complex type to a field expression.
	*/
	@:overload public function build(type : com.sun.xml.internal.xsom.XSComplexType) : Void;
	
	/**
	* Records the binding mode of the given complex type.
	*
	* <p>
	* Binding of a derived complex type often depends on that of the
	* base complex type. For example, when a base type is bound to
	* the getRest() method, all the derived complex types will be bound
	* in the same way.
	*
	* <p>
	* For this reason, we have to record how each complex type is being
	* bound.
	*/
	@:overload public function recordBindingMode(type : com.sun.xml.internal.xsom.XSComplexType, flag : com.sun.tools.internal.xjc.reader.xmlschema.ct.ComplexTypeBindingMode) : Void;
	
	/**
	* Obtains the binding mode recorded through
	* {@link #recordBindingMode(XSComplexType, ComplexTypeBindingMode)}.
	*/
	@:overload private function getBindingMode(type : com.sun.xml.internal.xsom.XSComplexType) : com.sun.tools.internal.xjc.reader.xmlschema.ct.ComplexTypeBindingMode;
	
	
}
