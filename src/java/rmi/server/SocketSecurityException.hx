package java.rmi.server;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
* An obsolete subclass of {@link ExportException}.
*
* @author  Ann Wollrath
* @since   JDK1.1
**/
@:require(java1) extern class SocketSecurityException extends java.rmi.server.ExportException
{
	/**
	* Constructs an <code>SocketSecurityException</code> with the specified
	* detail message.
	*
	* @param s the detail message.
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public public function new(s : String) : Void;
	
	/**
	* Constructs an <code>SocketSecurityException</code> with the specified
	* detail message and nested exception.
	*
	* @param s the detail message.
	* @param ex the nested exception
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public public function new(s : String, ex : java.lang.Exception) : Void;
	
	
}
