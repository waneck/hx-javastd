package javax.xml.bind.util;
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
extern class JAXBSource extends javax.xml.transform.sax.SAXSource
{
	/**
	* Creates a new {@link javax.xml.transform.Source} for the given content object.
	*
	* @param   context
	*      JAXBContext that was used to create
	*      <code>contentObject</code>. This context is used
	*      to create a new instance of marshaller and must not be null.
	* @param   contentObject
	*      An instance of a JAXB-generated class, which will be
	*      used as a {@link javax.xml.transform.Source} (by marshalling it into XML).  It must
	*      not be null.
	* @throws JAXBException if an error is encountered while creating the
	* JAXBSource or if either of the parameters are null.
	*/
	@:overload public function new(context : javax.xml.bind.JAXBContext, contentObject : Dynamic) : Void;
	
	/**
	* Creates a new {@link javax.xml.transform.Source} for the given content object.
	*
	* @param   marshaller
	*      A marshaller instance that will be used to marshal
	*      <code>contentObject</code> into XML. This must be
	*      created from a JAXBContext that was used to build
	*      <code>contentObject</code> and must not be null.
	* @param   contentObject
	*      An instance of a JAXB-generated class, which will be
	*      used as a {@link javax.xml.transform.Source} (by marshalling it into XML).  It must
	*      not be null.
	* @throws JAXBException if an error is encountered while creating the
	* JAXBSource or if either of the parameters are null.
	*/
	@:overload public function new(marshaller : javax.xml.bind.Marshaller, contentObject : Dynamic) : Void;
	
	
}
