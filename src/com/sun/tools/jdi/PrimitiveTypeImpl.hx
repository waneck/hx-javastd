package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PrimitiveTypeImpl extends com.sun.tools.jdi.TypeImpl implements com.sun.jdi.PrimitiveType
{
	@:overload @:public override public function toString() : String;
	
	/**
	* Returns the JNI-style signature for this type.
	* <p>
	* For primitive classes
	* the returned signature is the signature of the corresponding primitive
	* type; for example, "I" is returned as the signature of the class
	* represented by {@link java.lang.Integer#TYPE}.
	*
	* @see <a href="doc-files/signature.html">Type Signatures</a>
	* @return the string containing the type signature.
	*/
	@:overload @:public override public function signature() : String;
	
	/**
	* @return a text representation of this type.
	*/
	@:overload @:public override public function name() : String;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
	
}
