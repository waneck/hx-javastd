package com.sun.xml.internal.messaging.saaj.packaging.mime;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* @(#)MessagingException.java        1.10 02/06/13
*/
/**
* The base class for all exceptions thrown by the Messaging classes
*
* @author John Mani
* @author Bill Shannon
*/
extern class MessagingException extends java.lang.Exception
{
	/**
	* Constructs a MessagingException with no detail message.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a MessagingException with the specified detail message.
	* @param s         the detail message
	*/
	@:overload @:public public function new(s : String) : Void;
	
	/**
	* Constructs a MessagingException with the specified
	* Exception and detail message. The specified exception is chained
	* to this exception.
	* @param s         the detail message
	* @param e         the embedded exception
	* @see     #getNextException
	* @see     #setNextException
	*/
	@:overload @:public public function new(s : String, e : java.lang.Exception) : Void;
	
	/**
	* Get the next exception chained to this one. If the
	* next exception is a MessagingException, the chain
	* may extend further.
	*
	* @return  next Exception, null if none.
	*/
	@:overload @:public public function getNextException() : java.lang.Exception;
	
	/**
	* Add an exception to the end of the chain. If the end
	* is <strong>not</strong> a MessagingException, this
	* exception cannot be added to the end.
	*
	* @param   ex      the new end of the Exception chain
	* @return          <code>true</code> if the this Exception
	*                  was added, <code>false</code> otherwise.
	*/
	@:overload @:public @:synchronized public function setNextException(ex : java.lang.Exception) : Bool;
	
	/**
	* Produce the message, include the message from the nested
	* exception if there is one.
	*/
	@:overload @:public override public function getMessage() : String;
	
	
}
