package com.sun.xml.internal.bind.v2.runtime;
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
extern class RuntimeUtil
{
	/**
	* Map from {@link Class} objects representing primitive types
	* to {@link Class} objects representing their boxed types.
	* <p>
	* e.g., int -> Integer.
	*/
	public static var boxToPrimitive(default, null) : java.util.Map<Class<Dynamic>, Class<Dynamic>>;
	
	/**
	* Reverse map of {@link #boxToPrimitive}.
	*/
	public static var primitiveToBox(default, null) : java.util.Map<Class<Dynamic>, Class<Dynamic>>;
	
	/**
	* Reports a print conversion error while marshalling.
	*/
	@:overload public static function handlePrintConversionException(caller : Dynamic, e : java.lang.Exception, serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Reports that the type of an object in a property is unexpected.
	*/
	@:overload public static function handleTypeMismatchError(serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, parentObject : Dynamic, fieldName : String, childObject : Dynamic) : Void;
	
	
}
/**
* XmlAdapter for printing arbitrary object by using {@link Object#toString()}.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$RuntimeUtil$ToStringAdapter') extern class RuntimeUtil_ToStringAdapter extends javax.xml.bind.annotation.adapters.XmlAdapter<String, Dynamic>
{
	@:overload public function unmarshal(s : String) : Dynamic;
	
	@:overload override public function marshal(o : Dynamic) : String;
	
	
}
