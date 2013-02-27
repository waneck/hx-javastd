package javax.print;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
/**
* Class PrintException encapsulates a printing-related error condition that
* occurred while using a Print Service instance. This base class
* furnishes only a string description of the error. Subclasses furnish more
* detailed information if applicable.
*
*/
extern class PrintException extends java.lang.Exception
{
	/**
	* Construct a print exception with no detail message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a print exception with the given detail message.
	*
	* @param  s  Detail message, or null if no detail message.
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Construct a print exception chaining the supplied exception.
	*
	* @param  e  Chained exception.
	*/
	@:overload public function new(e : java.lang.Exception) : Void;
	
	/**
	* Construct a print exception with the given detail message
	* and chained exception.
	* @param  s  Detail message, or null if no detail message.
	* @param  e  Chained exception.
	*/
	@:overload public function new(s : String, e : java.lang.Exception) : Void;
	
	
}
