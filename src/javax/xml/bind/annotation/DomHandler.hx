package javax.xml.bind.annotation;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface DomHandler<ElementT, ResultT>
{
	/**
	* When a JAXB provider needs to unmarshal a part of a document into an
	* infoset representation, it first calls this method to create a
	* {@link Result} object.
	*
	* <p>
	* A JAXB provider will then send a portion of the XML
	* into the given result. Such a portion always form a subtree
	* of the whole XML document rooted at an element.
	*
	* @param errorHandler
	*      if any error happens between the invocation of this method
	*      and the invocation of {@link #getElement(Result)}, they
	*      must be reported to this handler.
	*
	*      The caller must provide a non-null error handler.
	*
	*      The {@link Result} object created from this method
	*      may hold a reference to this error handler.
	*
	* @return
	*      null if the operation fails. The error must have been reported
	*      to the error handler.
	*/
	@:overload public function createUnmarshaller(errorHandler : javax.xml.bind.ValidationEventHandler) : ResultT;
	
	/**
	* Once the portion is sent to the {@link Result}. This method is called
	* by a JAXB provider to obtain the unmarshalled element representation.
	*
	* <p>
	* Multiple invocations of this method may return different objects.
	* This method can be invoked only when the whole sub-tree are fed
	* to the {@link Result} object.
	*
	* @param rt
	*      The {@link Result} object created by {@link #createUnmarshaller(ValidationEventHandler)}.
	*
	* @return
	*      null if the operation fails. The error must have been reported
	*      to the error handler.
	*/
	@:overload public function getElement(rt : ResultT) : ElementT;
	
	/**
	* This method is called when a JAXB provider needs to marshal an element
	* to XML.
	*
	* <p>
	* If non-null, the returned {@link Source} must contain a whole document
	* rooted at one element, which will then be weaved into a bigger document
	* that the JAXB provider is marshalling.
	*
	* @param errorHandler
	*      Receives any errors happened during the process of converting
	*      an element into a {@link Source}.
	*
	*      The caller must provide a non-null error handler.
	*
	* @return
	*      null if there was an error. The error should have been reported
	*      to the handler.
	*/
	@:overload public function marshal(n : ElementT, errorHandler : javax.xml.bind.ValidationEventHandler) : javax.xml.transform.Source;
	
	
}
