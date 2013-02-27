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
extern class JAXBResult extends javax.xml.transform.sax.SAXResult
{
	/**
	* Creates a new instance that uses the specified
	* JAXBContext to unmarshal.
	*
	* @param context The JAXBContext that will be used to create the
	* necessary Unmarshaller.  This parameter must not be null.
	* @exception JAXBException if an error is encountered while creating the
	* JAXBResult or if the context parameter is null.
	*/
	@:overload public function new(context : javax.xml.bind.JAXBContext) : Void;
	
	/**
	* Creates a new instance that uses the specified
	* Unmarshaller to unmarshal an object.
	*
	* <p>
	* This JAXBResult object will use the specified Unmarshaller
	* instance. It is the caller's responsibility not to use the
	* same Unmarshaller for other purposes while it is being
	* used by this object.
	*
	* <p>
	* The primary purpose of this method is to allow the client
	* to configure Unmarshaller. Unless you know what you are doing,
	* it's easier and safer to pass a JAXBContext.
	*
	* @param _unmarshaller the unmarshaller.  This parameter must not be null.
	* @throws JAXBException if an error is encountered while creating the
	* JAXBResult or the Unmarshaller parameter is null.
	*/
	@:overload public function new(_unmarshaller : javax.xml.bind.Unmarshaller) : Void;
	
	/**
	* Gets the unmarshalled object created by the transformation.
	*
	* @return
	*      Always return a non-null object.
	*
	* @exception IllegalStateException
	*  if this method is called before an object is unmarshalled.
	*
	* @exception JAXBException
	*      if there is any unmarshalling error.
	*      Note that the implementation is allowed to throw SAXException
	*      during the parsing when it finds an error.
	*/
	@:overload public function getResult() : Dynamic;
	
	
}
