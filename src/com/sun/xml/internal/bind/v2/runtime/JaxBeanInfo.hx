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
extern class JaxBeanInfo<BeanT>
{
	/**
	* For {@link JaxBeanInfo} that has multiple type names.
	*/
	@:overload private function new(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, rti : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfo, jaxbType : Class<BeanT>, typeNames : java.NativeArray<javax.xml.namespace.QName>, isElement : Bool, isImmutable : Bool, hasLifecycleEvents : Bool) : Void;
	
	/**
	* For {@link JaxBeanInfo} that has one type name.
	*/
	@:overload private function new(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, rti : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfo, jaxbType : Class<BeanT>, typeName : javax.xml.namespace.QName, isElement : Bool, isImmutable : Bool, hasLifecycleEvents : Bool) : Void;
	
	/**
	* For {@link JaxBeanInfo} that has no type names.
	*/
	@:overload private function new(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, rti : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfo, jaxbType : Class<BeanT>, isElement : Bool, isImmutable : Bool, hasLifecycleEvents : Bool) : Void;
	
	/**
	* Various boolean flags combined into one field to improve memory footprint.
	*/
	private var flag : java.StdTypes.Int16;
	
	/**
	* True if {@link #jaxbType} has the  lifecycle method.
	*/
	@:overload @:final public function hasBeforeUnmarshalMethod() : Bool;
	
	/**
	* True if {@link #jaxbType} has the  lifecycle method.
	*/
	@:overload @:final public function hasAfterUnmarshalMethod() : Bool;
	
	/**
	* True if {@link #jaxbType} has the  lifecycle method.
	*/
	@:overload @:final public function hasBeforeMarshalMethod() : Bool;
	
	/**
	* True if {@link #jaxbType} has the  lifecycle method.
	*/
	@:overload @:final public function hasAfterMarshalMethod() : Bool;
	
	/**
	* Gets the JAXB bound class type that this {@link JaxBeanInfo}
	* handles.
	*
	* <p>
	* IOW, when a bean info object is requested for T,
	* sometimes the bean info for one of its base classes might be
	* returned.
	*/
	public var jaxbType(default, null) : Class<BeanT>;
	
	/**
	* Returns true if the bean is mapped to/from an XML element.
	*
	* <p>
	* When this method returns true, {@link #getElementNamespaceURI(Object)}
	* and {@link #getElementLocalName(Object)} returns the element name of
	* the bean.
	*/
	@:overload @:final public function isElement() : Bool;
	
	/**
	* Returns true if the bean is immutable.
	*
	* <p>
	* If this is true, Binder won't try to ueuse this object, and the unmarshaller
	* won't create a new instance of it before it starts.
	*/
	@:overload @:final public function isImmutable() : Bool;
	
	/**
	* True if this bean has an element-only content model.
	* <p>
	* If this flag is true, the unmarshaller can work
	* faster by ignoring whitespaces more efficiently.
	*/
	@:overload @:final public function hasElementOnlyContentModel() : Bool;
	
	/**
	* True if this bean has an element-only content model.
	* <p>
	* Should be considered immutable, though I can't mark it final
	* because it cannot be computed in this constructor.
	*/
	@:overload @:final private function hasElementOnlyContentModel(value : Bool) : Void;
	
	@:overload public function isNilIncluded() : Bool;
	
	/**
	* This method is used to determine which of the sub-classes should be
	* interrogated for the existence of lifecycle methods.
	*
	* @return true if the un|marshaller should look for lifecycle methods
	*         on this beanInfo, false otherwise.
	*/
	@:overload public function lookForLifecycleMethods() : Bool;
	
	/**
	* Returns the namespace URI portion of the element name,
	* if the bean that this class represents is mapped from/to
	* an XML element.
	*
	* @throws UnsupportedOperationException
	*      if {@link #isElement} is false.
	*/
	@:overload @:abstract public function getElementNamespaceURI(o : BeanT) : String;
	
	/**
	* Returns the local name portion of the element name,
	* if the bean that this class represents is mapped from/to
	* an XML element.
	*
	* @throws UnsupportedOperationException
	*      if {@link #isElement} is false.
	*/
	@:overload @:abstract public function getElementLocalName(o : BeanT) : String;
	
	/**
	* Returns XML Schema type names if the bean is mapped from
	* a complex/simple type of XML Schema.
	*
	* <p>
	* This is an ugly necessity to correctly handle
	* the type substitution semantics of XML Schema.
	*
	* <p>
	* A single Java class maybe mapped to more than one
	* XML types. All the types listed here are recognized
	* when we are unmarshalling XML.
	*
	* <p>
	* null if the class is not bound to a named schema type.
	*
	* <p>
	*/
	@:overload public function getTypeNames() : java.util.Collection<javax.xml.namespace.QName>;
	
	/**
	* Returns the XML type name to be used to marshal the specified instance.
	*
	* <P>
	* Most of the times the type can be determined regardless of the actual
	* instance, but there's a few exceptions (most notably {@link XMLGregorianCalendar}),
	* so as a general rule we need an instance to determine it.
	*/
	@:overload public function getTypeName(instance : BeanT) : javax.xml.namespace.QName;
	
	/**
	* Creates a new instance of the bean.
	*
	* <p>
	* This operation is only supported when {@link #isImmutable} is false.
	*
	* @param context
	*      Sometimes the created bean remembers the corresponding source location,
	*/
	@:overload @:abstract public function createInstance(context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : BeanT;
	
	/**
	* Resets the object to the initial state, as if the object
	* is created fresh.
	*
	* <p>
	* This is used to reuse an existing object for unmarshalling.
	*
	* @param context
	*      used for reporting any errors.
	*
	* @return
	*      true if the object was successfuly resetted.
	*      False if the object is not resettable, in which case the object will be
	*      discarded and new one will be created.
	*      <p>
	*      If the object is resettable but failed by an error, it should be reported to the context,
	*      then return false. If the object is not resettable to begin with, do not report an error.
	*
	* @throws SAXException
	*      as a result of reporting an error, the context may throw a {@link SAXException}.
	*/
	@:overload @:abstract public function reset(o : BeanT, context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : Bool;
	
	/**
	* Gets the ID value of the given bean, if it has an ID value.
	* Otherwise return null.
	*/
	@:overload @:abstract public function getId(o : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : String;
	
	/**
	* Serializes child elements and texts into the specified target.
	*/
	@:overload @:abstract public function serializeBody(o : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Serializes attributes into the specified target.
	*/
	@:overload @:abstract public function serializeAttributes(o : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Serializes the bean as the root element.
	*
	* <p>
	* In the java-to-schema binding, an object might marshal in two different
	* ways depending on whether it is used as the root of the graph or not.
	* In the former case, an object could marshal as an element, whereas
	* in the latter case, it marshals as a type.
	*
	* <p>
	* This method is used to marshal the root of the object graph to allow
	* this semantics to be implemented.
	*
	* <p>
	* It is doubtful to me if it's a good idea for an object to marshal
	* in two ways depending on the context.
	*
	* <p>
	* For schema-to-java, this is equivalent to {@link #serializeBody(Object, XMLSerializer)}.
	*/
	@:overload @:abstract public function serializeRoot(o : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Declares all the namespace URIs this object is using at
	* its top-level scope into the specified target.
	*/
	@:overload @:abstract public function serializeURIs(o : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Gets the {@link Loader} that will unmarshall the given object.
	*
	* @param context
	*      The {@link JAXBContextImpl} object that governs this object.
	*      This object is taken as a parameter so that {@link JaxBeanInfo} doesn't have
	*      to store them on its own.
	*
	*      When this method is invoked from within the unmarshaller, tihs parameter can be
	*      null (because the loader is constructed already.)
	*
	* @param typeSubstitutionCapable
	*      If true, the returned {@link Loader} is capable of recognizing @xsi:type (if necessary)
	*      and unmarshals a subtype. This allowes an optimization where this bean info
	*      is guaranteed not to have a type substitution.
	*      If false, the returned {@link Loader} doesn't look for @xsi:type.
	* @return
	*      must return non-null valid object
	*/
	@:overload @:abstract public function getLoader(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, typeSubstitutionCapable : Bool) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	/**
	* If the bean's representation in XML is just a text,
	* this method return a {@link Transducer} that lets you convert
	* values between the text and the bean.
	*/
	@:overload @:abstract public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<BeanT>;
	
	/**
	* Called after all the {@link JaxBeanInfo}s are created.
	* @param grammar
	*/
	@:overload private function link(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	/**
	* Called at the end of the {@link JAXBContext} initialization phase
	* to clean up any unnecessary references.
	*/
	@:overload public function wrapUp() : Void;
	
	/**
	* use reflection to determine which of the 4 object lifecycle methods exist on
	* the JAXB bound type.
	*/
	@:overload @:final private function setLifecycleFlags() : Void;
	
	/**
	* Return the LifecycleMethods cache for this ClassBeanInfo's corresponding
	* jaxbType if it exists, else return null.
	*
	*/
	@:overload @:final public function getLifecycleMethods() : com.sun.xml.internal.bind.v2.runtime.LifecycleMethods;
	
	/**
	* Invokes the beforeUnmarshal method if applicable.
	*/
	@:overload @:final public function invokeBeforeUnmarshalMethod(unm : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallerImpl, child : Dynamic, parent : Dynamic) : Void;
	
	/**
	* Invokes the afterUnmarshal method if applicable.
	*/
	@:overload @:final public function invokeAfterUnmarshalMethod(unm : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallerImpl, child : Dynamic, parent : Dynamic) : Void;
	
	
}
