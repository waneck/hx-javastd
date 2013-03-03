package org.xml.sax.helpers;
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
//// XMLReaderFactory.java - factory for creating a new reader.
//// http://www.saxproject.org
//// Written by David Megginson
//// and by David Brownell
//// NO WARRANTY!  This class is in the Public Domain.
//// $Id: XMLReaderFactory.java,v 1.2.2.1 2005/07/31 22:48:08 jeffsuttor Exp $
extern class XMLReaderFactory
{
	/**
	* Attempt to create an XMLReader from system defaults.
	* In environments which can support it, the name of the XMLReader
	* class is determined by trying each these options in order, and
	* using the first one which succeeds:</p> <ul>
	*
	* <li>If the system property <code>org.xml.sax.driver</code>
	* has a value, that is used as an XMLReader class name. </li>
	*
	* <li>The JAR "Services API" is used to look for a class name
	* in the <em>META-INF/services/org.xml.sax.driver</em> file in
	* jarfiles available to the runtime.</li>
	*
	* <li> SAX parser distributions are strongly encouraged to provide
	* a default XMLReader class name that will take effect only when
	* previous options (on this list) are not successful.</li>
	*
	* <li>Finally, if {@link ParserFactory#makeParser()} can
	* return a system default SAX1 parser, that parser is wrapped in
	* a {@link ParserAdapter}.  (This is a migration aid for SAX1
	* environments, where the <code>org.xml.sax.parser</code> system
	* property will often be usable.) </li>
	*
	* </ul>
	*
	* <p> In environments such as small embedded systems, which can not
	* support that flexibility, other mechanisms to determine the default
	* may be used. </p>
	*
	* <p>Note that many Java environments allow system properties to be
	* initialized on a command line.  This means that <em>in most cases</em>
	* setting a good value for that property ensures that calls to this
	* method will succeed, except when security policies intervene.
	* This will also maximize application portability to older SAX
	* environments, with less robust implementations of this method.
	* </p>
	*
	* @return A new XMLReader.
	* @exception org.xml.sax.SAXException If no default XMLReader class
	*            can be identified and instantiated.
	* @see #createXMLReader(java.lang.String)
	*/
	@:overload @:public @:static public static function createXMLReader() : org.xml.sax.XMLReader;
	
	/**
	* Attempt to create an XML reader from a class name.
	*
	* <p>Given a class name, this method attempts to load
	* and instantiate the class as an XML reader.</p>
	*
	* <p>Note that this method will not be usable in environments where
	* the caller (perhaps an applet) is not permitted to load classes
	* dynamically.</p>
	*
	* @return A new XML reader.
	* @exception org.xml.sax.SAXException If the class cannot be
	*            loaded, instantiated, and cast to XMLReader.
	* @see #createXMLReader()
	*/
	@:overload @:public @:static public static function createXMLReader(className : String) : org.xml.sax.XMLReader;
	
	
}
