package javax.xml.bind;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Encapsulate the location of a ValidationEvent.
*
* <p>
* The <tt>ValidationEventLocator</tt> indicates where the <tt>ValidationEvent
* </tt> occurred.  Different fields will be set depending on the type of
* validation that was being performed when the error or warning was detected.
* For example, on-demand validation would produce locators that contained
* references to objects in the Java content tree while unmarshal-time
* validation would produce locators containing information appropriate to the
* source of the XML data (file, url, Node, etc).
*
* @author <ul><li>Ryan Shoemaker, Sun Microsystems, Inc.</li><li>Kohsuke Kawaguchi, Sun Microsystems, Inc.</li><li>Joe Fialli, Sun Microsystems, Inc.</li></ul>
* @see Validator
* @see ValidationEvent
* @since JAXB1.0
*/
@:require(java0) extern interface ValidationEventLocator
{
	/**
	* Return the name of the XML source as a URL if available
	*
	* @return the name of the XML source as a URL or null if unavailable
	*/
	@:overload public function getURL() : java.net.URL;
	
	/**
	* Return the byte offset if available
	*
	* @return the byte offset into the input source or -1 if unavailable
	*/
	@:overload public function getOffset() : Int;
	
	/**
	* Return the line number if available
	*
	* @return the line number or -1 if unavailable
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* Return the column number if available
	*
	* @return the column number or -1 if unavailable
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* Return a reference to the object in the Java content tree if available
	*
	* @return a reference to the object in the Java content tree or null if
	*         unavailable
	*/
	@:overload public function getObject() : Dynamic;
	
	/**
	* Return a reference to the DOM Node if available
	*
	* @return a reference to the DOM Node or null if unavailable
	*/
	@:overload public function getNode() : org.w3c.dom.Node;
	
	
}