package javax.xml.bind;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JAXBContext
{
	/**
	* The name of the property that contains the name of the class capable
	* of creating new <tt>JAXBContext</tt> objects.
	*/
	public static var JAXB_CONTEXT_FACTORY(default, null) : String;
	
	@:overload private function new() : Void;
	
	/**
	* <p>
	* Obtain a new instance of a <tt>JAXBContext</tt> class.
	*
	* <p>
	* This is a convenience method to invoke the
	* {@link #newInstance(String,ClassLoader)} method with
	* the context class loader of the current thread.
	*
	* @throws JAXBException if an error was encountered while creating the
	*                       <tt>JAXBContext</tt> such as
	* <ol>
	*   <li>failure to locate either ObjectFactory.class or jaxb.index in the packages</li>
	*   <li>an ambiguity among global elements contained in the contextPath</li>
	*   <li>failure to locate a value for the context factory provider property</li>
	*   <li>mixing schema derived packages from different providers on the same contextPath</li>
	* </ol>
	*/
	@:overload public static function newInstance(contextPath : String) : javax.xml.bind.JAXBContext;
	
	/**
	* <p>
	* Obtain a new instance of a <tt>JAXBContext</tt> class.
	*
	* <p>
	* The client application must supply a context path which is a list of
	* colon (':', \u005Cu003A) separated java package names that contain
	* schema-derived classes and/or fully qualified JAXB-annotated classes.
	* Schema-derived
	* code is registered with the JAXBContext by the
	* ObjectFactory.class generated per package.
	* Alternatively than being listed in the context path, programmer
	* annotated JAXB mapped classes can be listed in a
	* <tt>jaxb.index</tt> resource file, format described below.
	* Note that a java package can contain both schema-derived classes and
	* user annotated JAXB classes. Additionally, the java package may
	* contain JAXB package annotations  that must be processed. (see JLS,
	* Section 7.4.1 "Named Packages").
	* </p>
	*
	* <p>
	* Every package listed on the contextPath must meet <b>one or both</b> of the
	* following conditions otherwise a <tt>JAXBException</tt> will be thrown:
	* </p>
	* <ol>
	*   <li>it must contain ObjectFactory.class</li>
	*   <li>it must contain jaxb.index</li>
	* </ol>
	*
	* <p>
	* <b>Format for jaxb.index</b>
	* <p>
	* The file contains a newline-separated list of class names.
	* Space and tab characters, as well as blank
	* lines, are ignored. The comment character
	* is '#' (0x23); on each line all characters following the first comment
	* character are ignored. The file must be encoded in UTF-8. Classes that
	* are reachable, as defined in {@link #newInstance(Class...)}, from the
	* listed classes are also registered with JAXBContext.
	* <p>
	* Constraints on class name occuring in a <tt>jaxb.index</tt> file are:
	* <ul>
	*   <li>Must not end with ".class".</li>
	*   <li>Class names are resolved relative to package containing
	*       <tt>jaxb.index</tt> file. Only classes occuring directly in package
	*       containing <tt>jaxb.index</tt> file are allowed.</li>
	*   <li>Fully qualified class names are not allowed.
	*       A qualified class name,relative to current package,
	*       is only allowed to specify a nested or inner class.</li>
	* </ul>
	*
	* <p>
	* To maintain compatibility with JAXB 1.0 schema to java
	* interface/implementation binding, enabled by schema customization
	* <tt>&lt;jaxb:globalBindings valueClass="false"></tt>,
	* the JAXB provider will ensure that each package on the context path
	* has a <tt>jaxb.properties</tt> file which contains a value for the
	* <tt>javax.xml.bind.context.factory</tt> property and that all values
	* resolve to the same provider.  This requirement does not apply to
	* JAXB annotated classes.
	*
	* <p>
	* If there are any global XML element name collisions across the various
	* packages listed on the <tt>contextPath</tt>, a <tt>JAXBException</tt>
	* will be thrown.
	*
	* <p>
	* Mixing generated interface/impl bindings from multiple JAXB Providers
	* in the same context path may result in a <tt>JAXBException</tt>
	* being thrown.
	*
	* <p>
	* The steps involved in discovering the JAXB implementation is discussed in the class javadoc.
	*
	* @param contextPath list of java package names that contain schema
	*                    derived class and/or java to schema (JAXB-annotated)
	*                    mapped classes
	* @param classLoader
	*      This class loader will be used to locate the implementation
	*      classes.
	*
	* @return a new instance of a <tt>JAXBContext</tt>
	* @throws JAXBException if an error was encountered while creating the
	*                       <tt>JAXBContext</tt> such as
	* <ol>
	*   <li>failure to locate either ObjectFactory.class or jaxb.index in the packages</li>
	*   <li>an ambiguity among global elements contained in the contextPath</li>
	*   <li>failure to locate a value for the context factory provider property</li>
	*   <li>mixing schema derived packages from different providers on the same contextPath</li>
	* </ol>
	*/
	@:overload public static function newInstance(contextPath : String, classLoader : java.lang.ClassLoader) : javax.xml.bind.JAXBContext;
	
	/**
	* <p>
	* Obtain a new instance of a <tt>JAXBContext</tt> class.
	*
	* <p>
	* This is mostly the same as {@link JAXBContext#newInstance(String, ClassLoader)},
	* but this version allows you to pass in provider-specific properties to configure
	* the instantiation of {@link JAXBContext}.
	*
	* <p>
	* The interpretation of properties is up to implementations. Implementations should
	* throw <tt>JAXBException</tt> if it finds properties that it doesn't understand.
	*
	* @param contextPath list of java package names that contain schema derived classes
	* @param classLoader
	*      This class loader will be used to locate the implementation classes.
	* @param properties
	*      provider-specific properties. Can be null, which means the same thing as passing
	*      in an empty map.
	*
	* @return a new instance of a <tt>JAXBContext</tt>
	* @throws JAXBException if an error was encountered while creating the
	*                       <tt>JAXBContext</tt> such as
	* <ol>
	*   <li>failure to locate either ObjectFactory.class or jaxb.index in the packages</li>
	*   <li>an ambiguity among global elements contained in the contextPath</li>
	*   <li>failure to locate a value for the context factory provider property</li>
	*   <li>mixing schema derived packages from different providers on the same contextPath</li>
	* </ol>
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public static function newInstance(contextPath : String, classLoader : java.lang.ClassLoader, properties : java.util.Map<String, Dynamic>) : javax.xml.bind.JAXBContext;
	
	/**
	* <p>
	* Obtain a new instance of a <tt>JAXBContext</tt> class.
	*
	* <p>
	* The client application must supply a list of classes that the new
	* context object needs to recognize.
	*
	* Not only the new context will recognize all the classes specified,
	* but it will also recognize any classes that are directly/indirectly
	* referenced statically from the specified classes. Subclasses of
	* referenced classes nor <tt>&#64;XmlTransient</tt> referenced classes
	* are not registered with JAXBContext.
	*
	* For example, in the following Java code, if you do
	* <tt>newInstance(Foo.class)</tt>, the newly created {@link JAXBContext}
	* will recognize both <tt>Foo</tt> and <tt>Bar</tt>, but not <tt>Zot</tt> or <tt>FooBar</tt>:
	* <pre>
	* class Foo {
	*      &#64;XmlTransient FooBar c;
	*      Bar b;
	* }
	* class Bar { int x; }
	* class Zot extends Bar { int y; }
	* class FooBar { }
	* </pre>
	*
	* Therefore, a typical client application only needs to specify the
	* top-level classes, but it needs to be careful.
	*
	* <p>
	* Note that for each java package registered with JAXBContext,
	* when the optional package annotations exist, they must be processed.
	* (see JLS, Section 7.4.1 "Named Packages").
	*
	* <p>
	* The steps involved in discovering the JAXB implementation is discussed in the class javadoc.
	*
	* @param classesToBeBound
	*      list of java classes to be recognized by the new {@link JAXBContext}.
	*      Can be empty, in which case a {@link JAXBContext} that only knows about
	*      spec-defined classes will be returned.
	*
	* @return
	*      A new instance of a <tt>JAXBContext</tt>. Always non-null valid object.
	*
	* @throws JAXBException
	*      if an error was encountered while creating the
	*      <tt>JAXBContext</tt>, such as (but not limited to):
	* <ol>
	*  <li>No JAXB implementation was discovered
	*  <li>Classes use JAXB annotations incorrectly
	*  <li>Classes have colliding annotations (i.e., two classes with the same type name)
	*  <li>The JAXB implementation was unable to locate
	*      provider-specific out-of-band information (such as additional
	*      files generated at the development time.)
	* </ol>
	*
	* @throws IllegalArgumentException
	*      if the parameter contains {@code null} (i.e., {@code newInstance(null);})
	*
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public static function newInstance(classesToBeBound : java.NativeArray<Class<Dynamic>>) : javax.xml.bind.JAXBContext;
	
	/**
	* <p>
	* Obtain a new instance of a <tt>JAXBContext</tt> class.
	*
	* <p>
	* An overloading of {@link JAXBContext#newInstance(Class...)}
	* to configure 'properties' for this instantiation of {@link JAXBContext}.
	*
	* <p>
	* The interpretation of properties is up to implementations. Implementations should
	* throw <tt>JAXBException</tt> if it finds properties that it doesn't understand.
	*
	* @param classesToBeBound
	*      list of java classes to be recognized by the new {@link JAXBContext}.
	*      Can be empty, in which case a {@link JAXBContext} that only knows about
	*      spec-defined classes will be returned.
	* @param properties
	*      provider-specific properties. Can be null, which means the same thing as passing
	*      in an empty map.
	*
	* @return
	*      A new instance of a <tt>JAXBContext</tt>. Always non-null valid object.
	*
	* @throws JAXBException
	*      if an error was encountered while creating the
	*      <tt>JAXBContext</tt>, such as (but not limited to):
	* <ol>
	*  <li>No JAXB implementation was discovered
	*  <li>Classes use JAXB annotations incorrectly
	*  <li>Classes have colliding annotations (i.e., two classes with the same type name)
	*  <li>The JAXB implementation was unable to locate
	*      provider-specific out-of-band information (such as additional
	*      files generated at the development time.)
	* </ol>
	*
	* @throws IllegalArgumentException
	*      if the parameter contains {@code null} (i.e., {@code newInstance(null,someMap);})
	*
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public static function newInstance(classesToBeBound : java.NativeArray<Class<Dynamic>>, properties : java.util.Map<String, Dynamic>) : javax.xml.bind.JAXBContext;
	
	/**
	* Create an <tt>Unmarshaller</tt> object that can be used to convert XML
	* data into a java content tree.
	*
	* @return an <tt>Unmarshaller</tt> object
	*
	* @throws JAXBException if an error was encountered while creating the
	*                       <tt>Unmarshaller</tt> object
	*/
	@:overload @:abstract public function createUnmarshaller() : javax.xml.bind.Unmarshaller;
	
	/**
	* Create a <tt>Marshaller</tt> object that can be used to convert a
	* java content tree into XML data.
	*
	* @return a <tt>Marshaller</tt> object
	*
	* @throws JAXBException if an error was encountered while creating the
	*                       <tt>Marshaller</tt> object
	*/
	@:overload @:abstract public function createMarshaller() : javax.xml.bind.Marshaller;
	
	/**
	* {@link Validator} has been made optional and deprecated in JAXB 2.0.  Please
	* refer to the javadoc for {@link Validator} for more detail.
	* <p>
	* Create a <tt>Validator</tt> object that can be used to validate a
	* java content tree against its source schema.
	*
	* @return a <tt>Validator</tt> object
	*
	* @throws JAXBException if an error was encountered while creating the
	*                       <tt>Validator</tt> object
	* @deprecated since JAXB2.0
	*/
	@:overload @:abstract public function createValidator() : javax.xml.bind.Validator;
	
	/**
	* Creates a <tt>Binder</tt> object that can be used for
	* associative/in-place unmarshalling/marshalling.
	*
	* @param domType select the DOM API to use by passing in its DOM Node class.
	*
	* @return always a new valid <tt>Binder</tt> object.
	*
	* @throws UnsupportedOperationException
	*      if DOM API corresponding to <tt>domType</tt> is not supported by
	*      the implementation.
	*
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public function createBinder<T>(domType : Class<T>) : javax.xml.bind.Binder<T>;
	
	/**
	* Creates a <tt>Binder</tt> for W3C DOM.
	*
	* @return always a new valid <tt>Binder</tt> object.
	*
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public function createBinder() : javax.xml.bind.Binder<org.w3c.dom.Node>;
	
	/**
	* Creates a <tt>JAXBIntrospector</tt> object that can be used to
	* introspect JAXB objects.
	*
	* @return
	*      always return a non-null valid <tt>JAXBIntrospector</tt> object.
	*
	* @throws UnsupportedOperationException
	*      Calling this method on JAXB 1.0 implementations will throw
	*      an UnsupportedOperationException.
	*
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public function createJAXBIntrospector() : javax.xml.bind.JAXBIntrospector;
	
	/**
	* Generates the schema documents for this context.
	*
	* @param outputResolver
	*      this object controls the output to which schemas
	*      will be sent.
	*
	* @throws IOException
	*      if {@link SchemaOutputResolver} throws an {@link IOException}.
	*
	* @throws UnsupportedOperationException
	*      Calling this method on JAXB 1.0 implementations will throw
	*      an UnsupportedOperationException.
	*
	* @since JAXB 2.0
	*/
	@:require(java0) @:overload public function generateSchema(outputResolver : javax.xml.bind.SchemaOutputResolver) : Void;
	
	
}
