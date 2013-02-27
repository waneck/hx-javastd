package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
extern class IntArrayData extends com.sun.xml.internal.bind.v2.runtime.output.Pcdata
{
	@:overload public function new(data : java.NativeArray<Int>, start : Int, len : Int) : Void;
	
	@:overload public function new() : Void;
	
	/**
	* Sets the int[] data to this object.
	*
	* <p>
	* This method doesn't make a copy for a performance reason.
	* The caller is still free to modify the array it passed to this method,
	* but he should do so with a care. The unmarshalling code isn't expecting
	* the value to be changed while it's being routed.
	*/
	@:overload public function set(data : java.NativeArray<Int>, start : Int, len : Int) : Void;
	
	@:overload override public function length() : Int;
	
	@:overload override public function charAt(index : Int) : java.StdTypes.Char16;
	
	@:overload override public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	@:overload override public function toString() : String;
	
	@:overload override public function writeTo(output : com.sun.xml.internal.bind.v2.runtime.output.UTF8XmlOutput) : Void;
	
	
}
