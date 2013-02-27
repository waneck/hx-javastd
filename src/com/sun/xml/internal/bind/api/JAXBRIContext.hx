package com.sun.xml.internal.bind.api;
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
extern class JAXBRIContext extends javax.xml.bind.JAXBContext
{
	/**
	* {@link JAXBContext} enhanced with JAXB RI specific functionalities.
	*
	* <p>
	* <b>Subject to change without notice</b>.
	*
	* @since 2.0 EA1
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:require(java0) @:overload private function new() : Void;
	
	/**
	* Creates a new {@link JAXBRIContext}.
	*
	* <p>
	* {@link JAXBContext#newInstance(Class[]) JAXBContext.newInstance()} methods may
	* return other JAXB providers that are not compatible with the JAX-RPC RI.
	* This method guarantees that the JAX-WS RI will finds the JAXB RI.
	*
	* @param classes
	*      Classes to be bound. See {@link JAXBContext#newInstance(Class[])} for the meaning.
	* @param typeRefs
	*      See {@link #TYPE_REFERENCES} for the meaning of this parameter.
	*      Can be null.
	* @param subclassReplacements
	*      See {@link #SUBCLASS_REPLACEMENTS} for the meaning of this parameter.
	*      Can be null.
	* @param defaultNamespaceRemap
	*      See {@link #DEFAULT_NAMESPACE_REMAP} for the meaning of this parameter.
	*      Can be null (and should be null for ordinary use of JAXB.)
	* @param c14nSupport
	*      See {@link #CANONICALIZATION_SUPPORT} for the meaning of this parameter.
	* @param ar
	*      See {@link #ANNOTATION_READER} for the meaning of this parameter.
	*      Can be null.
	* @since JAXB 2.1 EA2
	*/
	@:require(java1) @:overload public static function newInstance(classes : java.NativeArray<Class<Dynamic>>, typeRefs : java.util.Collection<com.sun.xml.internal.bind.api.TypeReference>, subclassReplacements : java.util.Map<Class<Dynamic>, Class<Dynamic>>, defaultNamespaceRemap : String, c14nSupport : Bool, ar : com.sun.xml.internal.bind.v2.model.annotation.RuntimeAnnotationReader) : JAXBRIContext;
	
	/**
	* Creates a new {@link JAXBRIContext}.
	*
	* <p>
	* {@link JAXBContext#newInstance(Class[]) JAXBContext.newInstance()} methods may
	* return other JAXB providers that are not compatible with the JAX-RPC RI.
	* This method guarantees that the JAX-WS RI will finds the JAXB RI.
	*
	* @param classes
	*      Classes to be bound. See {@link JAXBContext#newInstance(Class[])} for the meaning.
	* @param typeRefs
	*      See {@link #TYPE_REFERENCES} for the meaning of this parameter.
	*      Can be null.
	* @param subclassReplacements
	*      See {@link #SUBCLASS_REPLACEMENTS} for the meaning of this parameter.
	*      Can be null.
	* @param defaultNamespaceRemap
	*      See {@link #DEFAULT_NAMESPACE_REMAP} for the meaning of this parameter.
	*      Can be null (and should be null for ordinary use of JAXB.)
	* @param c14nSupport
	*      See {@link #CANONICALIZATION_SUPPORT} for the meaning of this parameter.
	* @param ar
	*      See {@link #ANNOTATION_READER} for the meaning of this parameter.
	*      Can be null.
	* @param xmlAccessorFactorySupport
	*      See {@link #XMLACCESSORFACTORY_SUPPORT} for the meaning of this parameter.
	* @param allNillable
	*      See {@link #TREAT_EVERYTHING_NILLABLE} for the meaning of this parameter.
	* @param retainPropertyInfo
	*      See {@link #RETAIN_REFERENCE_TO_INFO} for the meaning of this parameter.
	* @param supressAccessorWarnings
	*      See {@link #SUPRESS_ACCESSOR_WARNINGS} for the meaning of this parameter.
	*/
	@:overload public static function newInstance(classes : java.NativeArray<Class<Dynamic>>, typeRefs : java.util.Collection<com.sun.xml.internal.bind.api.TypeReference>, subclassReplacements : java.util.Map<Class<Dynamic>, Class<Dynamic>>, defaultNamespaceRemap : String, c14nSupport : Bool, ar : com.sun.xml.internal.bind.v2.model.annotation.RuntimeAnnotationReader, xmlAccessorFactorySupport : Bool, allNillable : Bool, retainPropertyInfo : Bool, supressAccessorWarnings : Bool) : JAXBRIContext;
	
	/**
	* @deprecated
	*      Compatibility with older versions.
	*/
	@:overload public static function newInstance(classes : java.NativeArray<Class<Dynamic>>, typeRefs : java.util.Collection<com.sun.xml.internal.bind.api.TypeReference>, defaultNamespaceRemap : String, c14nSupport : Bool) : JAXBRIContext;
	
	/**
	* Returns true if this context includes a class
	* that has {@link XmlAttachmentRef}.
	*
	* @since 2.1
	*/
	@:require(java1) @:overload @:abstract public function hasSwaRef() : Bool;
	
	/**
	* If the given object is bound to an element in XML by JAXB,
	* returns the element name.
	*
	* @return null
	*      if the object is not bound to an element.
	* @throws JAXBException
	*      if the object is not known to this context.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:abstract public function getElementName(o : Dynamic) : javax.xml.namespace.QName;
	
	/**
	* Allows to retrieve the element name based on Class.
	* @param o
	* @return
	* @throws javax.xml.bind.JAXBException
	* @since 2.1.10
	*/
	@:require(java1) @:overload @:abstract public function getElementName(o : Class<Dynamic>) : javax.xml.namespace.QName;
	
	/**
	* Creates a mini-marshaller/unmarshaller that can process a {@link TypeReference}.
	*
	* @return
	*      null if the specified reference is not given to {@link JAXBRIContext#newInstance}.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:abstract public function createBridge(ref : com.sun.xml.internal.bind.api.TypeReference) : com.sun.xml.internal.bind.api.Bridge<Dynamic>;
	
	/**
	* Creates a new {@link BridgeContext} instance.
	*
	* @return
	*      always a valid non-null instance.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:abstract public function createBridgeContext() : com.sun.xml.internal.bind.api.BridgeContext;
	
	/**
	* Gets a {@link RawAccessor} for the specified element property of the specified wrapper bean class.
	*
	* <p>
	* This method is designed to assist the JAX-RPC RI fill in a wrapper bean (in the doc/lit/wrap mode.)
	* In the said mode, a wrapper bean is supposed to only have properties that match elements,
	* and for each element that appear in the content model there's one property.
	*
	* <p>
	* Therefore, this method takes a wrapper bean and a tag name that identifies a property
	* on the given wrapper bean, then returns a {@link RawAccessor} that allows the caller
	* to set/get a value from the property of the bean.
	*
	* <p>
	* This method is not designed for a performance. The caller is expected to cache the result.
	*
	* @param <B>
	*      type of the wrapper bean
	* @param <V>
	*      type of the property of the bean
	* @return
	*      always return non-null valid accessor object.
	* @throws JAXBException
	*      if the specified wrapper bean is not bound by JAXB, or if it doesn't have an element property
	*      of the given name.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:abstract public function getElementPropertyAccessor<B, V>(wrapperBean : Class<B>, nsUri : String, localName : String) : com.sun.xml.internal.bind.api.RawAccessor<B, V>;
	
	/**
	* Gets the namespace URIs statically known to this {@link JAXBContext}.
	*
	* <p>
	* When JAXB is used to marshal into sub-trees, it declares
	* these namespace URIs at each top-level element that it marshals.
	*
	* To avoid repeated namespace declarations at sub-elements, the application
	* may declare those namespaces at a higher level.
	*
	* @return
	*      always non-null.
	*
	* @since 2.0 EA2
	*/
	@:require(java0) @:overload @:abstract public function getKnownNamespaceURIs() : java.util.List<String>;
	
	/**
	* Generates the schema documents from the model.
	*
	* <p>
	* The caller can use the additionalElementDecls parameter to
	* add element declarations to the generate schema.
	* For example, if the JAX-RPC passes in the following entry:
	*
	* {foo}bar -> DeclaredType for java.lang.String
	*
	* then JAXB generates the following element declaration (in the schema
	* document for the namespace "foo")"
	*
	* &lt;xs:element name="bar" type="xs:string" />
	*
	* This can be used for generating schema components necessary for WSDL.
	*
	* @param outputResolver
	*      this object controls the output to which schemas
	*      will be sent.
	*
	* @throws IOException
	*      if {@link SchemaOutputResolver} throws an {@link IOException}.
	*/
	@:overload @:abstract override public function generateSchema(outputResolver : javax.xml.bind.SchemaOutputResolver) : Void;
	
	/**
	* Returns the name of the XML Type bound to the
	* specified Java type.
	*
	* @param tr
	*      must not be null. This must be one of the {@link TypeReference}s specified
	*      in the {@link JAXBRIContext#newInstance} method.
	*
	* @throws IllegalArgumentException
	*      if the parameter is null or not a part of the {@link TypeReference}s specified
	*      in the {@link JAXBRIContext#newInstance} method.
	*
	* @return null
	*      if the referenced type is an anonymous and therefore doesn't have a name.
	*/
	@:overload @:abstract public function getTypeName(tr : com.sun.xml.internal.bind.api.TypeReference) : javax.xml.namespace.QName;
	
	/**
	* Gets the build information of the JAXB runtime.
	*
	* @return
	*      may be null, if the runtime is loaded by a class loader that doesn't support
	*      the access to the manifest informatino.
	*/
	@:overload @:abstract public function getBuildId() : String;
	
	/**
	* Generates the episode file that represents the binding known to this {@link JAXBContext},
	* so that XJC can later do separate compilation.
	*
	* <p>
	* Episode file is really just a JAXB customization file, except that currently
	* we use the RI-specific SCD to refer to schema components.
	*
	* @param output
	*      This receives the generated episode file.
	*
	* @since 2.1
	*/
	@:require(java1) @:overload @:abstract public function generateEpisode(output : javax.xml.transform.Result) : Void;
	
	/**
	* Allows you to access the runtime model information of the JAXB XML/Java binding.
	*
	* <p>
	* This is useful for doing a deeper integration with the JAXB RI.
	* For more information about the model, see https://jaxb2-reflection.dev.java.net/
	*
	* @since 2.1.10
	*/
	@:require(java1) @:overload @:abstract public function getRuntimeTypeInfoSet() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfoSet;
	
	/**
	* Computes a Java identifier from a local name.
	*
	* <p>
	* This method faithfully implements the name mangling rule as specified in the JAXB spec.
	*
	* <p>
	* In JAXB, a collision with a Java reserved word (such as "return") never happens.
	* Accordingly, this method may return an identifier that collides with reserved words.
	*
	* <p>
	* Use <tt>JJavaName.isJavaIdentifier(String)</tt> to check for such collision.
	*
	* @return
	*      Typically, this method returns "nameLikeThis".
	*/
	@:overload public static function mangleNameToVariableName(localName : String) : String;
	
	/**
	* Computes a Java class name from a local name.
	*
	* <p>
	* This method faithfully implements the name mangling rule as specified in the JAXB spec.
	*
	* @return
	*      Typically, this method returns "NameLikeThis".
	*/
	@:overload public static function mangleNameToClassName(localName : String) : String;
	
	/**
	* Computes a Java class name from a local name.
	*
	* <p>
	* This method faithfully implements the name mangling rule as specified in the JAXB spec.
	* This method works like {@link #mangleNameToClassName(String)} except that it looks
	* for "getClass" and returns something else.
	*
	* @return
	*      Typically, this method returns "NameLikeThis".
	*/
	@:overload public static function mangleNameToPropertyName(localName : String) : String;
	
	/**
	* Gets the parameterization of the given base type.
	*
	* <p>
	* For example, given the following
	* <pre><xmp>
	* interface Foo<T> extends List<List<T>> {}
	* interface Bar extends Foo<String> {}
	* </xmp></pre>
	* This method works like this:
	* <pre><xmp>
	* getBaseClass( Bar, List ) = List<List<String>
	* getBaseClass( Bar, Foo  ) = Foo<String>
	* getBaseClass( Foo<? extends Number>, Collection ) = Collection<List<? extends Number>>
	* getBaseClass( ArrayList<? extends BigInteger>, List ) = List<? extends BigInteger>
	* </xmp></pre>
	*
	* @param type
	*      The type that derives from {@code baseType}
	* @param baseType
	*      The class whose parameterization we are interested in.
	* @return
	*      The use of {@code baseType} in {@code type}.
	*      or null if the type is not assignable to the base type.
	* @since 2.0 FCS
	*/
	@:require(java0) @:overload public static function getBaseType(type : java.lang.reflect.Type, baseType : Class<Dynamic>) : java.lang.reflect.Type;
	
	/**
	* The property that you can specify to {@link JAXBContext#newInstance}
	* to reassign the default namespace URI to something else at the runtime.
	*
	* <p>
	* The value of the property is {@link String}, and it is used as the namespace URI
	* that succeeds the default namespace URI.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) public static var DEFAULT_NAMESPACE_REMAP(default, null) : String;
	
	/**
	* The property that you can specify to {@link JAXBContext#newInstance}
	* to put additional JAXB type references into the {@link JAXBContext}.
	*
	* <p>
	* The value of the property is {@link Collection}&lt;{@link TypeReference}>.
	* Those {@link TypeReference}s can then be used to create {@link Bridge}s.
	*
	* <p>
	* This mechanism allows additional element declarations that were not a part of
	* the schema into the created {@link JAXBContext}.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) public static var TYPE_REFERENCES(default, null) : String;
	
	/**
	* The property that you can specify to {@link JAXBContext#newInstance}
	* and {@link Marshaller#setProperty(String, Object)}
	* to enable the c14n marshalling support in the {@link JAXBContext}.
	*
	* @see C14nSupport_ArchitectureDocument
	* @since 2.0 EA2
	*/
	@:require(java0) public static var CANONICALIZATION_SUPPORT(default, null) : String;
	
	/**
	* The property that you can specify to {@link JAXBContext#newInstance}
	* to allow unmarshaller to honor <tt>xsi:nil</tt> anywhere, even if they are
	* not specifically allowed by the schema.
	*
	* @since 2.1.3
	*/
	@:require(java1) public static var TREAT_EVERYTHING_NILLABLE(default, null) : String;
	
	/**
	* The property that you can specify to {@link JAXBContext#newInstance}
	* to use alternative {@link RuntimeAnnotationReader} implementation.
	*
	* @since 2.1 EA2
	*/
	@:require(java1) public static var ANNOTATION_READER(default, null) : String;
	
	/**
	* Marshaller/Unmarshaller property to enable XOP processing.
	*
	* @since 2.0 EA2
	*/
	@:require(java0) public static var ENABLE_XOP(default, null) : String;
	
	/**
	* The property that you can specify to {@link JAXBContext#newInstance}
	* to specify specific classes that replace the reference to generic classes.
	*
	* <p>
	* See the release notes for more details about this feature.
	*
	* @since 2.1 EA2
	*/
	@:require(java1) public static var SUBCLASS_REPLACEMENTS(default, null) : String;
	
	/**
	* The property that you can specify to {@link JAXBContext#newInstance}
	* enable support of XmlAccessorFactory annotation in the {@link JAXBContext}.
	*
	* @since 2.1 EA2
	*/
	@:require(java1) public static var XMLACCESSORFACTORY_SUPPORT(default, null) : String;
	
	/**
	* Retains references to PropertyInfos.
	*
	* @since 2.1.10
	*/
	@:require(java1) public static var RETAIN_REFERENCE_TO_INFO(default, null) : String;
	
	/**
	* Supress security warnings when trying to access fields through reflection.
	*
	* @since 2.1.14, 2.2.2
	*/
	@:require(java1) public static var SUPRESS_ACCESSOR_WARNINGS(default, null) : String;
	
	/**
	* Improves handling of xsi:type used on leaf properties.
	*
	* @since 2.2.3
	*/
	@:require(java2) public static var IMPROVED_XSI_TYPE_HANDLING(default, null) : String;
	
	
}
