package com.sun.corba.se.impl.ior;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ObjectAdapterIdBase implements com.sun.corba.se.spi.ior.ObjectAdapterId
{
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function write(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	/** Get the adapter name simply as an array of strings.
	*/
	@:overload @:public public function getAdapterName() : java.NativeArray<String>;
	
	/** Return the number of elements in the adapter ID.
	*/
	@:overload @:public public function getNumLevels() : Int;
	
	/** Return an iterator that iterates over the components
	* of this adapter ID.  Each element is returned as a String.
	*/
	@:overload @:public public function iterator() : java.util.Iterator<Dynamic>;
	
	
}
