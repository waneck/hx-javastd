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
extern interface UnmarshallerHandler extends org.xml.sax.ContentHandler
{
	/**
	* Obtains the unmarshalled result.
	*
	* This method can be called only after this handler
	* receives the endDocument SAX event.
	*
	* @exception IllegalStateException
	*      if this method is called before this handler
	*      receives the endDocument event.
	*
	* @exception JAXBException
	*      if there is any unmarshalling error.
	*      Note that the implementation is allowed to throw SAXException
	*      during the parsing when it finds an error.
	*
	* @return
	*      always return a non-null valid object which was unmarshalled.
	*/
	@:overload public function getResult() : Dynamic;
	
	
}
