package javax.sql.rowset.serial;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SerialJavaObject implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Constructor for <code>SerialJavaObject</code> helper class.
	* <p>
	*
	* @param obj the Java <code>Object</code> to be serialized
	* @throws SerialException if the object is found not to be serializable
	*/
	@:overload public function new(obj : Dynamic) : Void;
	
	/**
	* Returns an <code>Object</code> that is a copy of this <code>SerialJavaObject</code>
	* object.
	*
	* @return a copy of this <code>SerialJavaObject</code> object as an
	*         <code>Object</code> in the Java programming language
	* @throws SerialException if the instance is corrupt
	*/
	@:overload public function getObject() : Dynamic;
	
	/**
	* Returns an array of <code>Field</code> objects that contains each
	* field of the object that this helper class is serializing.
	*
	* @return an array of <code>Field</code> objects
	* @throws SerialException if an error is encountered accessing
	* the serialized object
	*/
	@:overload public function getFields() : java.NativeArray<java.lang.reflect.Field>;
	
	
}
