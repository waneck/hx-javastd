package com.sun.xml.internal.bind.v2.runtime.output;
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
extern class Pcdata implements java.lang.CharSequence
{
	/**
	* Writes itself to {@link UTF8XmlOutput}.
	*
	* <p>
	* This is the most performance critical path for the marshaller,
	* so it warrants its own method.
	*/
	@:overload @:abstract public function writeTo(output : com.sun.xml.internal.bind.v2.runtime.output.UTF8XmlOutput) : Void;
	
	/**
	* Writes itself to the character array.
	*
	* <p>
	* This method is used by most other {@link XmlOutput}.
	* The default implementation involves in one extra char[] copying.
	*
	* <p>
	* The caller must provide a big enough buffer that can hold
	* enough characters returned by the {@link #length()} method.
	*/
	@:overload public function writeTo(buf : java.NativeArray<java.StdTypes.Char16>, start : Int) : Void;
	
	@:overload @:abstract public function toString() : String;
	
	
}