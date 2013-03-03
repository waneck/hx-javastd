package javax.sql.rowset.serial;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class SerialDatalink implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Constructs a new <code>SerialDatalink</code> object from the given
	* <code>java.net.URL</code> object.
	* <P>
	* @throws SerialException if url parameter is a null
	*/
	@:overload @:public public function new(url : java.net.URL) : Void;
	
	/**
	* Returns a new URL that is a copy of this <code>SerialDatalink</code>
	* object.
	*
	* @return a copy of this <code>SerialDatalink</code> object as a
	* <code>URL</code> object in the Java programming language.
	* @throws SerialException if the <code>URL</code> object cannot be de-serialized
	*/
	@:overload @:public public function getDatalink() : java.net.URL;
	
	
}
