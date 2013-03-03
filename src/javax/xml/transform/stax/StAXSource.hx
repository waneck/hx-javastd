package javax.xml.transform.stax;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class StAXSource implements javax.xml.transform.Source
{
	/** If {@link javax.xml.transform.TransformerFactory#getFeature(String name)}
	* returns true when passed this value as an argument,
	* the Transformer supports Source input of this type.
	*/
	@:public @:static @:final public static var FEATURE(default, null) : String;
	
	/**
	* <p>Creates a new instance of a <code>StAXSource</code>
	* by supplying an {@link XMLEventReader}.</p>
	*
	* <p><code>XMLEventReader</code> must be a
	* non-<code>null</code> reference.</p>
	*
	* <p><code>XMLEventReader</code> must be in
	* {@link XMLStreamConstants#START_DOCUMENT} or
	* {@link XMLStreamConstants#START_ELEMENT} state.</p>
	*
	* @param xmlEventReader <code>XMLEventReader</code> used to create
	*   this <code>StAXSource</code>.
	*
	* @throws XMLStreamException If <code>xmlEventReader</code> access
	*   throws an <code>Exception</code>.
	* @throws IllegalArgumentException If <code>xmlEventReader</code> ==
	*   <code>null</code>.
	* @throws IllegalStateException If <code>xmlEventReader</code>
	*   is not in <code>XMLStreamConstants.START_DOCUMENT</code> or
	*   <code>XMLStreamConstants.START_ELEMENT</code> state.
	*/
	@:overload @:public public function new(xmlEventReader : javax.xml.stream.XMLEventReader) : Void;
	
	/**
	* <p>Creates a new instance of a <code>StAXSource</code>
	* by supplying an {@link XMLStreamReader}.</p>
	*
	* <p><code>XMLStreamReader</code> must be a
	* non-<code>null</code> reference.</p>
	*
	* <p><code>XMLStreamReader</code> must be in
	* {@link XMLStreamConstants#START_DOCUMENT} or
	* {@link XMLStreamConstants#START_ELEMENT} state.</p>
	*
	* @param xmlStreamReader <code>XMLStreamReader</code> used to create
	*   this <code>StAXSource</code>.
	*
	* @throws IllegalArgumentException If <code>xmlStreamReader</code> ==
	*   <code>null</code>.
	* @throws IllegalStateException If <code>xmlStreamReader</code>
	*   is not in <code>XMLStreamConstants.START_DOCUMENT</code> or
	*   <code>XMLStreamConstants.START_ELEMENT</code> state.
	*/
	@:overload @:public public function new(xmlStreamReader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* <p>Get the <code>XMLEventReader</code> used by this
	* <code>StAXSource</code>.</p>
	*
	* <p><code>XMLEventReader</code> will be <code>null</code>.
	* if this <code>StAXSource</code> was created with a
	* <code>XMLStreamReader</code>.</p>
	*
	* @return <code>XMLEventReader</code> used by this
	*   <code>StAXSource</code>.
	*/
	@:overload @:public public function getXMLEventReader() : javax.xml.stream.XMLEventReader;
	
	/**
	* <p>Get the <code>XMLStreamReader</code> used by this
	* <code>StAXSource</code>.</p>
	*
	* <p><code>XMLStreamReader</code> will be <code>null</code>
	* if this <code>StAXSource</code> was created with a
	* <code>XMLEventReader</code>.</p>
	*
	* @return <code>XMLStreamReader</code> used by this
	*   <code>StAXSource</code>.
	*/
	@:overload @:public public function getXMLStreamReader() : javax.xml.stream.XMLStreamReader;
	
	/**
	* <p>In the context of a <code>StAXSource</code>, it is not appropriate
	* to explicitly set the system identifier.
	* The <code>XMLStreamReader</code> or <code>XMLEventReader</code>
	* used to construct this <code>StAXSource</code> determines the
	* system identifier of the XML source.</p>
	*
	* <p>An {@link UnsupportedOperationException} is <strong>always</strong>
	* thrown by this method.</p>
	*
	* @param systemId Ignored.
	*
	* @throws UnsupportedOperationException Is <strong>always</strong>
	*   thrown by this method.
	*/
	@:overload @:public public function setSystemId(systemId : String) : Void;
	
	/**
	* <p>Get the system identifier used by this
	* <code>StAXSource</code>.</p>
	*
	* <p>The <code>XMLStreamReader</code> or <code>XMLEventReader</code>
	* used to construct this <code>StAXSource</code> is queried to determine
	* the system identifier of the XML source.</p>
	*
	* <p>The system identifier may be <code>null</code> or
	* an empty <code>""</code> <code>String</code>.</p>
	*
	* @return System identifier used by this <code>StAXSource</code>.
	*/
	@:overload @:public public function getSystemId() : String;
	
	
}
