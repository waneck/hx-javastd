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
* Represents exceptions thrown in the MBean server when using the
* java.lang.reflect classes to invoke methods on MBeans. It "wraps" the
* actual java.lang.Exception thrown.
*
* @since 1.5
*/
@:require(java5) extern class ReflectionException extends javax.management.JMException
{
	/**
	* Creates a <CODE>ReflectionException</CODE> that wraps the actual <CODE>java.lang.Exception</CODE>.
	*
	* @param e the wrapped exception.
	*/
	@:overload @:public public function new(e : java.lang.Exception) : Void;
	
	/**
	* Creates a <CODE>ReflectionException</CODE> that wraps the actual <CODE>java.lang.Exception</CODE> with
	* a detail message.
	*
	* @param e the wrapped exception.
	* @param message the detail message.
	*/
	@:overload @:public public function new(e : java.lang.Exception, message : String) : Void;
	
	/**
	* Returns the actual {@link Exception} thrown.
	*
	* @return the wrapped {@link Exception}.
	*/
	@:overload @:public public function getTargetException() : java.lang.Exception;
	
	/**
	* Returns the actual {@link Exception} thrown.
	*
	* @return the wrapped {@link Exception}.
	*/
	@:overload @:public override public function getCause() : java.lang.Throwable;
	
	
}
