package com.sun.xml.internal.bind.v2.runtime;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JAXBContextImpl extends com.sun.xml.internal.bind.api.JAXBRIContext
{
	/**
	* All created {@link JaxBeanInfo}s.
	* Updated from each {@link JaxBeanInfo}s constructors to avoid infinite recursion
	* for a cyclic reference.
	*
	* <p>
	* This map is only used while the {@link JAXBContextImpl} is built and set to null
	* to avoid keeping references too long.
	*/
	private var beanInfos : java.util.Map<com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfo, com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>>;
	
	/**
	* Pool of {@link Marshaller}s.
	*/
	public var marshallerPool(default, null) : com.sun.istack.internal.Pool<javax.xml.bind.Marshaller>;
	
	public var unmarshallerPool(default, null) : com.sun.istack.internal.Pool<javax.xml.bind.Unmarshaller>;
	
	/**
	* Used to assign indices to known names in this grammar.
	* Reset to null once the build phase is completed.
	*/
	public var nameBuilder : com.sun.xml.internal.bind.v2.runtime.NameBuilder;
	
	/**
	* Keeps the list of known names.
	* This field is set once the build pahse is completed.
	*/
	public var nameList(default, null) : com.sun.xml.internal.bind.v2.runtime.NameList;
	
	/**
	* true to reorder attributes lexicographically in preparation of the c14n support.
	*/
	private var c14nSupport(default, null) : Bool;
	
	/**
	* Flag that user has provided a custom AccessorFactory for JAXB to use
	*/
	public var xmlAccessorFactorySupport(default, null) : Bool;
	
	/**
	* @see JAXBRIContext#TREAT_EVERYTHING_NILLABLE
	*/
	public var allNillable(default, null) : Bool;
	
	/**
	* Store properties, so that they can be recovered in the run (is here because of JSON encoding of Jersey).
	*/
	public var retainPropertyInfo(default, null) : Bool;
	
	/**
	* Supress reflection accessor warnings.
	*/
	public var supressAccessorWarnings(default, null) : Bool;
	
	/**
	* Improved xsi type handling.
	*/
	public var improvedXsiTypeHandling(default, null) : Bool;
	
	/**
	* If true, we aim for faster {@link JAXBContext} instanciation performance,
	* instead of going after efficient sustained unmarshalling/marshalling performance.
	*
	* @since 2.0.4
	*/
	@:require(java0) public var fastBoot(default, null) : Bool;
	
	/**
	* Returns declared XmlNs annotations (from package-level annotation XmlSchema
	*
	* @return set of all present XmlNs annotations
	*/
	@:overload public function getXmlNsSet() : java.util.Set<javax.xml.bind.annotation.XmlNs>;
	
	/**
	* True if this JAXBContext has {@link XmlAttachmentRef}.
	*/
	@:overload override public function hasSwaRef() : Bool;
	
	@:overload override public function getRuntimeTypeInfoSet() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfoSet;
	
	/**
	* Creates a {@link RuntimeTypeInfoSet}.
	*/
	@:overload public function getTypeInfoSet() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfoSet;
	
	@:overload public function getElement(scope : Class<Dynamic>, name : javax.xml.namespace.QName) : com.sun.xml.internal.bind.v2.runtime.ElementBeanInfoImpl;
	
	@:overload private function getOrCreate(eli : com.sun.xml.internal.bind.v2.model.runtime.RuntimeEnumLeafInfo) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>;
	
	@:overload private function getOrCreate(ci : com.sun.xml.internal.bind.v2.model.runtime.RuntimeClassInfo) : com.sun.xml.internal.bind.v2.runtime.ClassBeanInfoImpl<Dynamic>;
	
	@:overload private function getOrCreate(ai : com.sun.xml.internal.bind.v2.model.runtime.RuntimeArrayInfo) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>;
	
	@:overload public function getOrCreate(e : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfo) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>;
	
	/**
	* Gets the {@link JaxBeanInfo} object that can handle
	* the given JAXB-bound object.
	*
	* <p>
	* This method traverses the base classes of the given object.
	*
	* @return null
	*      if <tt>c</tt> isn't a JAXB-bound class and <tt>fatal==false</tt>.
	*/
	@:overload @:final public function getBeanInfo(o : Dynamic) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>;
	
	/**
	* Gets the {@link JaxBeanInfo} object that can handle
	* the given JAXB-bound object.
	*
	* @param fatal
	*      if true, the failure to look up will throw an exception.
	*      Otherwise it will just return null.
	*/
	@:overload @:final public function getBeanInfo(o : Dynamic, fatal : Bool) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>;
	
	/**
	* Gets the {@link JaxBeanInfo} object that can handle
	* the given JAXB-bound class.
	*
	* <p>
	* This method doesn't look for base classes.
	*
	* @return null
	*      if <tt>c</tt> isn't a JAXB-bound class and <tt>fatal==false</tt>.
	*/
	@:overload @:final public function getBeanInfo<T>(clazz : Class<T>) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<T>;
	
	/**
	* Gets the {@link JaxBeanInfo} object that can handle
	* the given JAXB-bound class.
	*
	* @param fatal
	*      if true, the failure to look up will throw an exception.
	*      Otherwise it will just return null.
	*/
	@:overload @:final public function getBeanInfo<T>(clazz : Class<T>, fatal : Bool) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<T>;
	
	/**
	* Based on the tag name, determine what object to unmarshal,
	* and then set a new object and its loader to the current unmarshaller state.
	*
	* @return
	*      null if the given name pair is not recognized.
	*/
	@:overload @:final public function selectRootLoader(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, tag : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	/**
	* Gets the {@link JaxBeanInfo} for the given named XML Schema type.
	*
	* @return
	*      null if the type name is not recognized. For schema
	*      languages other than XML Schema, this method always
	*      returns null.
	*/
	@:overload public function getGlobalType(name : javax.xml.namespace.QName) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>;
	
	/**
	* Finds a type name that this context recognizes which is
	* "closest" to the given type name.
	*
	* <p>
	* This method is used for error recovery.
	*/
	@:overload public function getNearestTypeName(name : javax.xml.namespace.QName) : String;
	
	/**
	* Returns the set of valid root tag names.
	* For diagnostic use.
	*/
	@:overload public function getValidRootNames() : java.util.Set<javax.xml.namespace.QName>;
	
	@:overload @:synchronized public function getUTF8NameTable() : java.NativeArray<com.sun.xml.internal.bind.v2.runtime.output.Encoded>;
	
	@:overload public function getNumberOfLocalNames() : Int;
	
	@:overload public function getNumberOfElementNames() : Int;
	
	@:overload public function getNumberOfAttributeNames() : Int;
	
	/**
	* Creates a new identity transformer.
	*/
	@:overload public static function createTransformerHandler() : javax.xml.transform.sax.TransformerHandler;
	
	@:overload override public function createMarshaller() : com.sun.xml.internal.bind.v2.runtime.MarshallerImpl;
	
	@:overload override public function createUnmarshaller() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallerImpl;
	
	@:overload override public function createValidator() : javax.xml.bind.Validator;
	
	@:overload override public function createJAXBIntrospector() : javax.xml.bind.JAXBIntrospector;
	
	@:overload override public function generateEpisode(output : javax.xml.transform.Result) : Void;
	
	@:overload override public function generateSchema(outputResolver : javax.xml.bind.SchemaOutputResolver) : Void;
	
	@:overload override public function getTypeName(tr : com.sun.xml.internal.bind.api.TypeReference) : javax.xml.namespace.QName;
	
	/**
	* Used for testing.
	*/
	@:overload public function createTestResolver() : javax.xml.bind.SchemaOutputResolver;
	
	@:overload override public function createBinder<T>(domType : Class<T>) : javax.xml.bind.Binder<T>;
	
	@:overload override public function createBinder() : javax.xml.bind.Binder<org.w3c.dom.Node>;
	
	@:overload override public function getElementName(o : Dynamic) : javax.xml.namespace.QName;
	
	@:overload override public function getElementName(o : Class<Dynamic>) : javax.xml.namespace.QName;
	
	@:overload override public function createBridge(ref : com.sun.xml.internal.bind.api.TypeReference) : com.sun.xml.internal.bind.api.Bridge<Dynamic>;
	
	@:overload override public function createBridgeContext() : com.sun.xml.internal.bind.api.BridgeContext;
	
	@:overload override public function getElementPropertyAccessor(wrapperBean : Class<Dynamic>, nsUri : String, localName : String) : com.sun.xml.internal.bind.api.RawAccessor<Dynamic, Dynamic>;
	
	@:overload override public function getKnownNamespaceURIs() : java.util.List<String>;
	
	@:overload override public function getBuildId() : String;
	
	@:overload public function toString() : String;
	
	/**
	* Gets the value of the xmime:contentType attribute on the given object, or null
	* if for some reason it couldn't be found, including any error.
	*/
	@:overload public function getXMIMEContentType(o : Dynamic) : String;
	
	/**
	* Creates a {@link JAXBContextImpl} that includes the specified additional classes.
	*/
	@:overload public function createAugmented(clazz : Class<Dynamic>) : JAXBContextImpl;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$JAXBContextImpl$JAXBContextBuilder') extern class JAXBContextImpl_JAXBContextBuilder
{
	@:overload public function new() : Void;
	
	@:overload public function new(baseImpl : JAXBContextImpl) : Void;
	
	@:overload public function setRetainPropertyInfo(val : Bool) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setSupressAccessorWarnings(val : Bool) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setC14NSupport(val : Bool) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setXmlAccessorFactorySupport(val : Bool) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setDefaultNsUri(val : String) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setAllNillable(val : Bool) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setClasses(val : java.NativeArray<Class<Dynamic>>) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setAnnotationReader(val : com.sun.xml.internal.bind.v2.model.annotation.RuntimeAnnotationReader) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setSubclassReplacements(val : java.util.Map<Class<Dynamic>, Class<Dynamic>>) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setTypeRefs(val : java.util.Collection<com.sun.xml.internal.bind.api.TypeReference>) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function setImprovedXsiTypeHandling(val : Bool) : JAXBContextImpl_JAXBContextBuilder;
	
	@:overload public function build() : JAXBContextImpl;
	
	
}
