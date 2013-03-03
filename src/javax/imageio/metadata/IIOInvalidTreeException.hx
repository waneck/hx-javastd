package javax.imageio.metadata;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class IIOInvalidTreeException extends javax.imageio.IIOException
{
	/**
	* The <code>Node</code> that led to the parsing error, or
	* <code>null</code>.
	*/
	@:protected private var offendingNode : org.w3c.dom.Node;
	
	/**
	* Constructs an <code>IIOInvalidTreeException</code> with a
	* message string and a reference to the <code>Node</code> that
	* caused the parsing error.
	*
	* @param message a <code>String</code> containing the reason for
	* the parsing failure.
	* @param offendingNode the DOM <code>Node</code> that caused the
	* exception, or <code>null</code>.
	*/
	@:overload @:public public function new(message : String, offendingNode : org.w3c.dom.Node) : Void;
	
	/**
	* Constructs an <code>IIOInvalidTreeException</code> with a
	* message string, a reference to an exception that caused this
	* exception, and a reference to the <code>Node</code> that caused
	* the parsing error.
	*
	* @param message a <code>String</code> containing the reason for
	* the parsing failure.
	* @param cause the <code>Throwable</code> (<code>Error</code> or
	* <code>Exception</code>) that caused this exception to occur,
	* or <code>null</code>.
	* @param offendingNode the DOM <code>Node</code> that caused the
	* exception, or <code>null</code>.
	*/
	@:overload @:public public function new(message : String, cause : java.lang.Throwable, offendingNode : org.w3c.dom.Node) : Void;
	
	/**
	* Returns the <code>Node</code> that caused the error in parsing.
	*
	* @return the offending <code>Node</code>.
	*/
	@:overload @:public public function getOffendingNode() : org.w3c.dom.Node;
	
	
}
