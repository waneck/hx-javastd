package javax.xml.bind;
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
extern class Binder<XmlNode>
{
	/**
	* Unmarshal XML infoset view to a JAXB object tree.
	*
	* <p>
	* This method is similar to {@link Unmarshaller#unmarshal(Node)}
	* with the addition of maintaining the association between XML nodes
	* and the produced JAXB objects, enabling future update operations,
	* {@link #updateXML(Object, Object)} or {@link #updateJAXB(Object)}.
	*
	* <p>
	* When {@link #getSchema()} is non-null, <code>xmlNode</code>
	* and its descendants is validated during this operation.
	*
	* <p>
	* This method throws {@link UnmarshalException} when the Binder's
	* {@link JAXBContext} does not have a mapping for the XML element name
	* or the type, specifiable via <tt>@xsi:type</tt>, of <tt>xmlNode</tt>
	* to a JAXB mapped class. The method {@link #unmarshal(Object, Class)}
	* enables an application to specify the JAXB mapped class that
	* the <tt>xmlNode</tt> should be mapped to.
	*
	* @param xmlNode
	*      the document/element to unmarshal XML data from.
	*
	* @return
	*      the newly created root object of the JAXB object tree.
	*
	* @throws JAXBException
	*      If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Binder</tt> is unable to perform the XML to Java
	*     binding.
	* @throws IllegalArgumentException
	*      If the node parameter is null
	*/
	@:overload @:public @:abstract public function unmarshal(xmlNode : XmlNode) : Dynamic;
	
	/**
	* Unmarshal XML root element by provided <tt>declaredType</tt>
	* to a JAXB object tree.
	*
	* <p>
	* Implements <a href="Unmarshaller.html#unmarshalByDeclaredType">Unmarshal by Declared Type</a>
	*
	* <p>
	* This method is similar to {@link Unmarshaller#unmarshal(Node, Class)}
	* with the addition of maintaining the association between XML nodes
	* and the produced JAXB objects, enabling future update operations,
	* {@link #updateXML(Object, Object)} or {@link #updateJAXB(Object)}.
	*
	* <p>
	* When {@link #getSchema()} is non-null, <code>xmlNode</code>
	* and its descendants is validated during this operation.
	*
	* @param xmlNode
	*      the document/element to unmarshal XML data from.
	* @param declaredType
	*      appropriate JAXB mapped class to hold <tt>node</tt>'s XML data.
	*
	* @return
	* <a href="JAXBElement.html">JAXB Element</a> representation
	* of <tt>node</tt>
	*
	* @throws JAXBException
	*      If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Binder</tt> is unable to perform the XML to Java
	*     binding.
	* @throws IllegalArgumentException
	*      If any of the input parameters are null
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public @:abstract public function unmarshal<T>(xmlNode : XmlNode, declaredType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	/**
	* Marshal a JAXB object tree to a new XML document.
	*
	* <p>
	* This method is similar to {@link Marshaller#marshal(Object, Node)}
	* with the addition of maintaining the association between JAXB objects
	* and the produced XML nodes,
	* enabling future update operations such as
	* {@link #updateXML(Object, Object)} or {@link #updateJAXB(Object)}.
	*
	* <p>
	* When {@link #getSchema()} is non-null, the marshalled
	* xml content is validated during this operation.
	*
	* @param jaxbObject
	*      The content tree to be marshalled.
	* @param xmlNode
	*      The parameter must be a Node that accepts children.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Binder</tt> is unable to marshal <tt>jaxbObject</tt> (or any
	*      object reachable from <tt>jaxbObject</tt>).
	*
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	*/
	@:overload @:public @:abstract public function marshal(jaxbObject : Dynamic, xmlNode : XmlNode) : Void;
	
	/**
	* Gets the XML element associated with the given JAXB object.
	*
	* <p>
	* Once a JAXB object tree is associated with an XML fragment,
	* this method enables navigation between the two trees.
	*
	* <p>
	* An association between an XML element and a JAXB object is
	* established by the bind methods and the update methods.
	* Note that this association is partial; not all XML elements
	* have associated JAXB objects, and not all JAXB objects have
	* associated XML elements.
	*
	* @param jaxbObject An instance that is reachable from a prior
	*                   call to a bind or update method that returned
	*                   a JAXB object tree.
	*
	* @return
	*      null if the specified JAXB object is not known to this
	*      {@link Binder}, or if it is not associated with an
	*      XML element.
	*
	* @throws IllegalArgumentException
	*      If the jaxbObject parameter is null
	*/
	@:overload @:public @:abstract public function getXMLNode(jaxbObject : Dynamic) : XmlNode;
	
	/**
	* Gets the JAXB object associated with the given XML element.
	*
	* <p>
	* Once a JAXB object tree is associated with an XML fragment,
	* this method enables navigation between the two trees.
	*
	* <p>
	* An association between an XML element and a JAXB object is
	* established by the unmarshal, marshal and update methods.
	* Note that this association is partial; not all XML elements
	* have associated JAXB objects, and not all JAXB objects have
	* associated XML elements.
	*
	* @return
	*      null if the specified XML node is not known to this
	*      {@link Binder}, or if it is not associated with a
	*      JAXB object.
	*
	* @throws IllegalArgumentException
	*      If the node parameter is null
	*/
	@:overload @:public @:abstract public function getJAXBNode(xmlNode : XmlNode) : Dynamic;
	
	/**
	* Takes an JAXB object and updates
	* its associated XML node and its descendants.
	*
	* <p>
	* This is a convenience method of:
	* <pre>
	* updateXML( jaxbObject, getXMLNode(jaxbObject));
	* </pre>
	*
	* @throws JAXBException
	*      If any unexpected problem occurs updating corresponding XML content.
	* @throws IllegalArgumentException
	*      If the jaxbObject parameter is null
	*/
	@:overload @:public @:abstract public function updateXML(jaxbObject : Dynamic) : XmlNode;
	
	/**
	* Changes in JAXB object tree are updated in its associated XML parse tree.
	*
	* <p>
	* This operation can be thought of as an "in-place" marshalling.
	* The difference is that instead of creating a whole new XML tree,
	* this operation updates an existing tree while trying to preserve
	* the XML as much as possible.
	*
	* <p>
	* For example, unknown elements/attributes in XML that were not bound
	* to JAXB will be left untouched (whereas a marshalling operation
	* would create a new tree that doesn't contain any of those.)
	*
	* <p>
	* As a side-effect, this operation updates the association between
	* XML nodes and JAXB objects.
	*
	* @param jaxbObject root of potentially modified JAXB object tree
	* @param xmlNode    root of update target XML parse tree
	*
	* @return
	*      Returns the updated XML node. Typically, this is the same
	*      node you passed in as <i>xmlNode</i>, but it maybe
	*      a different object, for example when the tag name of the object
	*      has changed.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs updating corresponding XML content.
	* @throws IllegalArgumentException
	*      If any of the input parameters are null
	*/
	@:overload @:public @:abstract public function updateXML(jaxbObject : Dynamic, xmlNode : XmlNode) : XmlNode;
	
	/**
	* Takes an XML node and updates its associated JAXB object and its descendants.
	*
	* <p>
	* This operation can be thought of as an "in-place" unmarshalling.
	* The difference is that instead of creating a whole new JAXB tree,
	* this operation updates an existing tree, reusing as much JAXB objects
	* as possible.
	*
	* <p>
	* As a side-effect, this operation updates the association between
	* XML nodes and JAXB objects.
	*
	* @return
	*      Returns the updated JAXB object. Typically, this is the same
	*      object that was returned from earlier
	*      {@link #marshal(Object,Object)} or
	*      {@link #updateJAXB(Object)} method invocation,
	*      but it maybe
	*      a different object, for example when the name of the XML
	*      element has changed.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs updating corresponding JAXB mapped content.
	* @throws IllegalArgumentException
	*      If node parameter is null
	*/
	@:overload @:public @:abstract public function updateJAXB(xmlNode : XmlNode) : Dynamic;
	
	/**
	* Specifies whether marshal, unmarshal and update methods
	* performs validation on their XML content.
	*
	* @param schema set to null to disable validation.
	*
	* @see Unmarshaller#setSchema(Schema)
	*/
	@:overload @:public @:abstract public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	/**
	* Gets the last {@link Schema} object (including null) set by the
	* {@link #setSchema(Schema)} method.
	*
	* @return the Schema object for validation or null if not present
	*/
	@:overload @:public @:abstract public function getSchema() : javax.xml.validation.Schema;
	
	/**
	* Allow an application to register a <tt>ValidationEventHandler</tt>.
	* <p>
	* The <tt>ValidationEventHandler</tt> will be called by the JAXB Provider
	* if any validation errors are encountered during calls to any of the
	* Binder unmarshal, marshal and update methods.
	*
	* <p>
	* Calling this method with a null parameter will cause the Binder
	* to revert back to the default default event handler.
	*
	* @param handler the validation event handler
	* @throws JAXBException if an error was encountered while setting the
	*         event handler
	*/
	@:overload @:public @:abstract public function setEventHandler(handler : javax.xml.bind.ValidationEventHandler) : Void;
	
	/**
	* Return the current event handler or the default event handler if one
	* hasn't been set.
	*
	* @return the current ValidationEventHandler or the default event handler
	*         if it hasn't been set
	* @throws JAXBException if an error was encountered while getting the
	*         current event handler
	*/
	@:overload @:public @:abstract public function getEventHandler() : javax.xml.bind.ValidationEventHandler;
	
	/**
	*
	* Set the particular property in the underlying implementation of
	* <tt>Binder</tt>.  This method can only be used to set one of
	* the standard JAXB defined unmarshal/marshal properties
	* or a provider specific property for binder, unmarshal or marshal.
	* Attempting to set an undefined property will result in
	* a PropertyException being thrown.  See
	* <a href="Unmarshaller.html#supportedProps">Supported Unmarshal Properties</a>
	* and
	* <a href="Marshaller.html#supportedProps">Supported Marshal Properties</a>.
	*
	* @param name the name of the property to be set. This value can either
	*              be specified using one of the constant fields or a user
	*              supplied string.
	* @param value the value of the property to be set
	*
	* @throws PropertyException when there is an error processing the given
	*                            property or value
	* @throws IllegalArgumentException
	*      If the name parameter is null
	*/
	@:overload @:abstract @:public public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Get the particular property in the underlying implementation of
	* <tt>Binder</tt>.  This method can only
	* be used to get one of
	* the standard JAXB defined unmarshal/marshal properties
	* or a provider specific property for binder, unmarshal or marshal.
	* Attempting to get an undefined property will result in
	* a PropertyException being thrown.  See
	* <a href="Unmarshaller.html#supportedProps">Supported Unmarshal Properties</a>
	* and
	* <a href="Marshaller.html#supportedProps">Supported Marshal Properties</a>.
	*
	* @param name the name of the property to retrieve
	* @return the value of the requested property
	*
	* @throws PropertyException
	*      when there is an error retrieving the given property or value
	*      property name
	* @throws IllegalArgumentException
	*      If the name parameter is null
	*/
	@:overload @:abstract @:public public function getProperty(name : String) : Dynamic;
	
	
}
