package org.xml.sax.ext;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// Locator2.java - extended Locator
//// http://www.saxproject.org
//// Public Domain: no warranty.
//// $Id: Locator2.java,v 1.2 2004/11/03 22:49:08 jsuttor Exp $
extern interface Locator2 extends org.xml.sax.Locator
{
	/**
	* Returns the version of XML used for the entity.  This will
	* normally be the identifier from the current entity's
	* <em>&lt;?xml&nbsp;version='...'&nbsp;...?&gt;</em> declaration,
	* or be defaulted by the parser.
	*
	* @return Identifier for the XML version being used to interpret
	* the entity's text, or null if that information is not yet
	* available in the current parsing state.
	*/
	@:overload public function getXMLVersion() : String;
	
	/**
	* Returns the name of the character encoding for the entity.
	* If the encoding was declared externally (for example, in a MIME
	* Content-Type header), that will be the name returned.  Else if there
	* was an <em>&lt;?xml&nbsp;...encoding='...'?&gt;</em> declaration at
	* the start of the document, that encoding name will be returned.
	* Otherwise the encoding will been inferred (normally to be UTF-8, or
	* some UTF-16 variant), and that inferred name will be returned.
	*
	* <p>When an {@link org.xml.sax.InputSource InputSource} is used
	* to provide an entity's character stream, this method returns the
	* encoding provided in that input stream.
	*
	* <p> Note that some recent W3C specifications require that text
	* in some encodings be normalized, using Unicode Normalization
	* Form C, before processing.  Such normalization must be performed
	* by applications, and would normally be triggered based on the
	* value returned by this method.
	*
	* <p> Encoding names may be those used by the underlying JVM,
	* and comparisons should be case-insensitive.
	*
	* @return Name of the character encoding being used to interpret
	* * the entity's text, or null if this was not provided for a *
	* character stream passed through an InputSource or is otherwise
	* not yet available in the current parsing state.
	*/
	@:overload public function getEncoding() : String;
	
	
}
