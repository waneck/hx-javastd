package javax.xml.transform;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Indicates a serious configuration error.
*/
extern class TransformerConfigurationException extends javax.xml.transform.TransformerException
{
	/**
	* Create a new <code>TransformerConfigurationException</code> with no
	* detail mesage.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new <code>TransformerConfigurationException</code> with
	* the <code>String </code> specified as an error message.
	*
	* @param msg The error message for the exception.
	*/
	@:overload public function new(msg : String) : Void;
	
	/**
	* Create a new <code>TransformerConfigurationException</code> with a
	* given <code>Exception</code> base cause of the error.
	*
	* @param e The exception to be encapsulated in a
	* TransformerConfigurationException.
	*/
	@:overload public function new(e : java.lang.Throwable) : Void;
	
	/**
	* Create a new <code>TransformerConfigurationException</code> with the
	* given <code>Exception</code> base cause and detail message.
	*
	* @param e The exception to be encapsulated in a
	*      TransformerConfigurationException
	* @param msg The detail message.
	*/
	@:overload public function new(msg : String, e : java.lang.Throwable) : Void;
	
	/**
	* Create a new TransformerConfigurationException from a message and a Locator.
	*
	* <p>This constructor is especially useful when an application is
	* creating its own exception from within a DocumentHandler
	* callback.</p>
	*
	* @param message The error or warning message.
	* @param locator The locator object for the error or warning.
	*/
	@:overload public function new(message : String, locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Wrap an existing exception in a TransformerConfigurationException.
	*
	* @param message The error or warning message, or null to
	*                use the message from the embedded exception.
	* @param locator The locator object for the error or warning.
	* @param e Any exception.
	*/
	@:overload public function new(message : String, locator : javax.xml.transform.SourceLocator, e : java.lang.Throwable) : Void;
	
	
}
