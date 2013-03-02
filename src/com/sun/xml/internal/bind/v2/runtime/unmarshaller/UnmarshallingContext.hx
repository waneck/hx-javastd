package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
extern class UnmarshallingContext extends com.sun.xml.internal.bind.v2.runtime.Coordinator implements javax.xml.namespace.NamespaceContext implements javax.xml.bind.ValidationEventHandler implements org.xml.sax.ErrorHandler implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor.XmlVisitor_TextPredictor
{
	public var parent(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallerImpl;
	
	/**
	* Used to discover additional classes when we hit unknown elements/types.
	*/
	public var classResolver : com.sun.xml.internal.bind.api.ClassResolver;
	
	/**
	* User-supplied {@link ClassLoader} for converting name to {@link Class}.
	* For backward compatibility, when null, use thread context classloader.
	*/
	public var classLoader : java.lang.ClassLoader;
	
	/**
	* Creates a new unmarshaller.
	*
	* @param assoc
	*      Must be both non-null when the unmarshaller does the
	*      in-place unmarshalling. Otherwise must be both null.
	*/
	@:overload public function new(_parent : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallerImpl, assoc : com.sun.xml.internal.bind.v2.runtime.AssociationMap<Dynamic>) : Void;
	
	@:overload public function reset(scanner : com.sun.xml.internal.bind.unmarshaller.InfosetScanner<Dynamic>, isInplaceMode : Bool, expectedType : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>, idResolver : com.sun.xml.internal.bind.IDResolver) : Void;
	
	@:overload public function getJAXBContext() : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl;
	
	@:overload public function getCurrentState() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State;
	
	/**
	* On top of {@link JAXBContextImpl#selectRootLoader(State, TagName)},
	* this method also consults {@link ClassResolver}.
	*
	* @throws SAXException
	*      if {@link ValidationEventHandler} reported a failure.
	*/
	@:overload public function selectRootLoader(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, tag : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	@:overload public function clearStates() : Void;
	
	@:overload public function setFactories(factoryInstances : Dynamic) : Void;
	
	@:overload public function startDocument(locator : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function startElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function text(pcdata : java.lang.CharSequence) : Void;
	
	@:overload @:final public function endElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function endDocument() : Void;
	
	/**
	* You should be always calling this through {@link TextPredictor}.
	*/
	@:overload public function expectText() : Bool;
	
	/**
	* You should be always getting {@link TextPredictor} from {@link XmlVisitor}.
	*/
	@:overload public function getPredictor() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor.XmlVisitor_TextPredictor;
	
	@:overload public function getContext() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	/**
	* Gets the result of the unmarshalling
	*/
	@:overload public function getResult() : Dynamic;
	
	/**
	* Creates a new instance of the specified class.
	* In the unmarshaller, we need to check the user-specified factory class.
	*/
	@:overload public function createInstance(clazz : Class<Dynamic>) : Dynamic;
	
	/**
	* Creates a new instance of the specified class.
	* In the unmarshaller, we need to check the user-specified factory class.
	*/
	@:overload public function createInstance(beanInfo : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>) : Dynamic;
	
	/**
	* Reports an error to the user, and asks if s/he wants
	* to recover. If the canRecover flag is false, regardless
	* of the client instruction, an exception will be thrown.
	*
	* Only if the flag is true and the user wants to recover from an error,
	* the method returns normally.
	*
	* The thrown exception will be catched by the unmarshaller.
	*/
	@:overload public function handleEvent(event : javax.xml.bind.ValidationEvent, canRecover : Bool) : Void;
	
	@:overload override public function handleEvent(event : javax.xml.bind.ValidationEvent) : Bool;
	
	/**
	* Reports an exception found during the unmarshalling to the user.
	* This method is a convenience method that calls into
	* {@link #handleEvent(ValidationEvent, boolean)}
	*/
	@:overload public function handleError(e : java.lang.Exception) : Void;
	
	@:overload public function handleError(e : java.lang.Exception, canRecover : Bool) : Void;
	
	@:overload public function handleError(msg : String) : Void;
	
	@:overload override private function getLocation() : javax.xml.bind.ValidationEventLocator;
	
	/**
	* Gets the current source location information in SAX {@link Locator}.
	* <p>
	* Sometimes the unmarshaller works against a different kind of XML source,
	* making this information meaningless.
	*/
	@:overload public function getLocator() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx;
	
	/**
	* Called when there's no corresponding ID value.
	*/
	@:overload public function errorUnresolvedIDREF(bean : Dynamic, idref : String, loc : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx) : Void;
	
	/**
	* Adds a job that will be executed at the last of the unmarshalling.
	* This method is used to support ID/IDREF feature, but it can be used
	* for other purposes as well.
	*
	* @param   job
	*      The run method of this object is called.
	*/
	@:overload public function addPatcher(job : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Patcher) : Void;
	
	/**
	* Adds the object which is currently being unmarshalled
	* to the ID table.
	*
	* @return
	*      Returns the value passed as the parameter.
	*      This is a hack, but this makes it easier for ID
	*      transducer to do its job.
	*/
	@:overload public function addToIdTable(id : String) : String;
	
	/**
	* Looks up the ID table and gets associated object.
	*
	* <p>
	* The exception thrown from {@link Callable#call()} means the unmarshaller should abort
	* right away.
	*
	* @see IDResolver#resolve(String, Class)
	*/
	@:overload public function getObjectFromId(id : String, targetType : Class<Dynamic>) : java.util.concurrent.Callable<Dynamic>;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Returns a list of prefixes newly declared on the current element.
	*
	* @return
	*      A possible zero-length array of prefixes. The default prefix
	*      is represented by the empty string.
	*/
	@:overload public function getNewlyDeclaredPrefixes() : java.NativeArray<String>;
	
	/**
	* Returns a list of all in-scope prefixes.
	*
	* @return
	*      A possible zero-length array of prefixes. The default prefix
	*      is represented by the empty string.
	*/
	@:overload public function getAllDeclaredPrefixes() : java.NativeArray<String>;
	
	@:overload public function getPrefixes(uri : String) : java.util.Iterator<String>;
	
	@:overload public function getPrefix(uri : String) : String;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	/**
	* Starts a new packing scope.
	*
	* <p>
	* This method allocates a specified number of fresh {@link Scope} objects.
	* They can be accessed by the {@link #getScope} method until the corresponding
	* {@link #endScope} method is invoked.
	*
	* <p>
	* A new scope will mask the currently active scope. Only one frame of {@link Scope}s
	* can be accessed at any given time.
	*
	* @param frameSize
	*      The # of slots to be allocated.
	*/
	@:overload public function startScope(frameSize : Int) : Void;
	
	/**
	* Ends the current packing scope.
	*
	* <p>
	* If any packing in progress will be finalized by this method.
	*
	* @param frameSize
	*      The same size that gets passed to the {@link #startScope(int)}
	*      method.
	*/
	@:overload public function endScope(frameSize : Int) : Void;
	
	/**
	* Gets the currently active {@link Scope}.
	*
	* @param offset
	*      a number between [0,frameSize)
	*
	* @return
	*      always a valid {@link Scope} object.
	*/
	@:overload public function getScope(offset : Int) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Scope<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	/**
	* Notifies the context about the inner peer of the current element.
	*
	* <p>
	* If the unmarshalling is building the association, the context
	* will use this information. Otherwise it will be just ignored.
	*/
	@:overload public function recordInnerPeer(innerPeer : Dynamic) : Void;
	
	/**
	* Gets the inner peer JAXB object associated with the current element.
	*
	* @return
	*      null if the current element doesn't have an inner peer,
	*      or if we are not doing the in-place unmarshalling.
	*/
	@:overload public function getInnerPeer() : Dynamic;
	
	/**
	* Notifies the context about the outer peer of the current element.
	*
	* <p>
	* If the unmarshalling is building the association, the context
	* will use this information. Otherwise it will be just ignored.
	*/
	@:overload public function recordOuterPeer(outerPeer : Dynamic) : Void;
	
	/**
	* Gets the outer peer JAXB object associated with the current element.
	*
	* @return
	*      null if the current element doesn't have an inner peer,
	*      or if we are not doing the in-place unmarshalling.
	*/
	@:overload public function getOuterPeer() : Dynamic;
	
	/**
	* Gets the xmime:contentType value for the current object.
	*
	* @see JAXBContextImpl#getXMIMEContentType(Object)
	*/
	@:overload public function getXMIMEContentType() : String;
	
	/**
	* When called from within the realm of the unmarshaller, this method
	* returns the current {@link UnmarshallingContext} in charge.
	*/
	@:overload public static function getInstance() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	/**
	* Allows to access elements which are expected in current state.
	* Useful for getting elements for current parent.
	*
	* @return
	*/
	@:overload public function getCurrentExpectedElements() : java.util.Collection<javax.xml.namespace.QName>;
	
	/**
	* Allows to access attributes which are expected in current state.
	* Useful for getting attributes for current parent.
	*
	* @return
	*/
	@:overload public function getCurrentExpectedAttributes() : java.util.Collection<javax.xml.namespace.QName>;
	
	/**
	* Gets StructureLoader if used as loader.
	* Useful when determining if element is mixed or not.
	*
	*/
	@:overload public function getStructureLoader() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.StructureLoader;
	
	
}
/**
* State information for each element.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$UnmarshallingContext$State') extern class UnmarshallingContext_State
{
	/**
	* Loader that owns this element.
	*/
	public var loader : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	/**
	* Once {@link #loader} is completed, this receiver
	* receives the result.
	*/
	public var receiver : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Receiver;
	
	public var intercepter : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Intercepter;
	
	/**
	* Object being unmarshalled by this {@link #loader}.
	*/
	public var target : Dynamic;
	
	/**
	* Hack for making JAXBElement unmarshalling work.
	*
	* <p>
	* While the unmarshalling is in progress, the {@link #target} field stores the object being unmarshalled.
	* This makes it convenient to keep track of the unmarshalling activity in context of XML infoset, but
	* since there's only one {@link State} per element, this mechanism only works when there's one object
	* per element, which breaks down when we have {@link JAXBElement}, since the presence of JAXBElement
	* requires that we have two objects unmarshalled (a JAXBElement X and a value object Y bound to an XML type.)
	*
	* <p>
	* So to make room for storing both, this {@link #backup} field is used. When we create X instance
	* in the above example, we set that to {@code state.prev.target} and displace its old value to
	* {@code state.prev.backup} (where Y goes to {@code state.target}.) Upon the completion of the unmarshalling
	* of Y, we revert this.
	*
	* <p>
	* While this attributes X incorrectly to its parent element, this preserves the parent/child
	* relationship between unmarshalled objects and {@link State} parent/child relationship, and
	* it thereby makes {@link Receiver} mechanism simpler.
	*
	* <p>
	* Yes, I know this is a hack, and no, I'm not proud of it.
	*
	* @see ElementBeanInfoImpl.IntercepterLoader#startElement(State, TagName)
	* @see ElementBeanInfoImpl.IntercepterLoader#intercept(State, Object)
	*/
	public var backup : Dynamic;
	
	/**
	* If this element has an element default value.
	*
	* This should be set by either a parent {@link Loader} when
	* {@link Loader#childElement(State, TagName)} is called
	* or by a child {@link Loader} when
	* {@link Loader#startElement(State, TagName)} is called.
	*/
	public var elementDefaultValue : String;
	
	/**
	* {@link State} for the parent element
	*
	* {@link State} objects form a doubly linked list.
	*/
	public var prev : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State;
	
	public var nil : Bool;
	
	/**
	* Gets the context.
	*/
	@:overload public function getContext() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	
}
/**
* Stub to the user-specified factory method.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$UnmarshallingContext$Factory') @:internal extern class UnmarshallingContext_Factory
{
	@:overload public function new(factorInstance : Dynamic, method : java.lang.reflect.Method) : Void;
	
	@:overload public function createInstance() : Dynamic;
	
	
}
/**
* Root loader that uses the tag name and possibly its @xsi:type
* to decide how to start unmarshalling.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$UnmarshallingContext$DefaultRootLoader') @:internal extern class UnmarshallingContext_DefaultRootLoader extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.Receiver
{
	/**
	* Receives the root element and determines how to start
	* unmarshalling.
	*/
	@:overload public function childElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function getExpectedChildElements() : java.util.Collection<javax.xml.namespace.QName>;
	
	@:overload public function receive(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, o : Dynamic) : Void;
	
	
}
/**
* Root loader that uses {@link UnmarshallingContext#expectedType}
* to decide how to start unmarshalling.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$UnmarshallingContext$ExpectedTypeRootLoader') @:internal extern class UnmarshallingContext_ExpectedTypeRootLoader extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.Receiver
{
	/**
	* Receives the root element and determines how to start
	* unmarshalling.
	*/
	@:overload public function childElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function receive(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, o : Dynamic) : Void;
	
	
}
