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
//// SAX parser factory.
//// http://www.saxproject.org
//// No warranty; no copyright -- use this as you will.
//// $Id: ParserFactory.java,v 1.2 2004/11/03 22:53:09 jsuttor Exp $
extern class ParserFactory
{
	/**
	* Create a new SAX parser using the `org.xml.sax.parser' system property.
	*
	* <p>The named class must exist and must implement the
	* {@link org.xml.sax.Parser Parser} interface.</p>
	*
	* @exception java.lang.NullPointerException There is no value
	*            for the `org.xml.sax.parser' system property.
	* @exception java.lang.ClassNotFoundException The SAX parser
	*            class was not found (check your CLASSPATH).
	* @exception IllegalAccessException The SAX parser class was
	*            found, but you do not have permission to load
	*            it.
	* @exception InstantiationException The SAX parser class was
	*            found but could not be instantiated.
	* @exception java.lang.ClassCastException The SAX parser class
	*            was found and instantiated, but does not implement
	*            org.xml.sax.Parser.
	* @see #makeParser(java.lang.String)
	* @see org.xml.sax.Parser
	*/
	@:overload public static function makeParser() : org.xml.sax.Parser;
	
	/**
	* Create a new SAX parser object using the class name provided.
	*
	* <p>The named class must exist and must implement the
	* {@link org.xml.sax.Parser Parser} interface.</p>
	*
	* @param className A string containing the name of the
	*                  SAX parser class.
	* @exception java.lang.ClassNotFoundException The SAX parser
	*            class was not found (check your CLASSPATH).
	* @exception IllegalAccessException The SAX parser class was
	*            found, but you do not have permission to load
	*            it.
	* @exception InstantiationException The SAX parser class was
	*            found but could not be instantiated.
	* @exception java.lang.ClassCastException The SAX parser class
	*            was found and instantiated, but does not implement
	*            org.xml.sax.Parser.
	* @see #makeParser()
	* @see org.xml.sax.Parser
	*/
	@:overload public static function makeParser(className : String) : org.xml.sax.Parser;
	
	
}
