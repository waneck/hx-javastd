package javax.management;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
* When a <CODE>java.lang.Error</CODE> occurs in the agent it should be caught and
* re-thrown as a <CODE>RuntimeErrorException</CODE>.
*
* @since 1.5
*/
@:require(java5) extern class RuntimeErrorException extends javax.management.JMRuntimeException
{
	/**
	* Default constructor.
	*
	* @param e the wrapped error.
	*/
	@:overload public function new(e : java.lang.Error) : Void;
	
	/**
	* Constructor that allows a specific error message to be specified.
	*
	* @param e the wrapped error.
	* @param message the detail message.
	*/
	@:overload public function new(e : java.lang.Error, message : String) : Void;
	
	/**
	* Returns the actual {@link Error} thrown.
	*
	* @return the wrapped {@link Error}.
	*/
	@:overload public function getTargetError() : java.lang.Error;
	
	/**
	* Returns the actual {@link Error} thrown.
	*
	* @return the wrapped {@link Error}.
	*/
	@:overload public function getCause() : java.lang.Throwable;
	
	
}
