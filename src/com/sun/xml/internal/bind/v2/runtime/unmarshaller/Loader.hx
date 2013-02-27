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
extern class Loader
{
	@:overload private function new(expectText : Bool) : Void;
	
	@:overload private function new() : Void;
	
	/**
	* Called when the loader is activated, which is when a new start tag is seen
	* and when the parent designated this loader as the child loader.
	*
	* <p>
	* The callee may change <tt>state.loader</tt> to designate another {@link Loader}
	* for the processing. It's the responsibility of the callee to forward the startElement
	* event in such a case.
	*
	* @param ea
	*      info about the start tag. never null.
	*/
	@:overload public function startElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	/**
	* Called when this loaderis an active loaderand we see a new child start tag.
	*
	* <p>
	* The callee is expected to designate another loaderas a loaderthat processes
	* this element, then it should also register a {@link Receiver}.
	* The designated loaderwill become an active loader.
	*
	* <p>
	* The default implementation reports an error saying an element is unexpected.
	*/
	@:overload public function childElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload @:final private function reportUnexpectedChildElement(ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName, canRecover : Bool) : Void;
	
	/**
	* Returns a set of tag names expected as possible child elements in this context.
	*/
	@:overload public function getExpectedChildElements() : java.util.Collection<javax.xml.namespace.QName>;
	
	/**
	* Returns a set of tag names expected as possible child elements in this context.
	*/
	@:overload public function getExpectedAttributes() : java.util.Collection<javax.xml.namespace.QName>;
	
	/**
	* Called when this loaderis an active loaderand we see a chunk of text.
	*
	* The runtime makes sure that adjacent characters (even those separated
	* by comments, PIs, etc) are reported as one event.
	* IOW, you won't see two text event calls in a row.
	*/
	@:overload public function text(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, text : java.lang.CharSequence) : Void;
	
	/**
	* True if this loader expects the {@link #text(UnmarshallingContext.State, CharSequence)} method
	* to be called. False otherwise.
	*/
	@:overload @:final public function expectText() : Bool;
	
	/**
	* Called when this loaderis an active loaderand we see an end tag.
	*/
	@:overload public function leaveElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	/**
	* Fires the beforeUnmarshal event if necessary.
	*
	* @param state
	*      state of the newly create child object.
	*/
	@:overload @:final private function fireBeforeUnmarshal(beanInfo : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>, child : Dynamic, state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State) : Void;
	
	/**
	* Fires the afterUnmarshal event if necessary.
	*
	* @param state
	*      state of the parent object
	*/
	@:overload @:final private function fireAfterUnmarshal(beanInfo : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>, child : Dynamic, state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State) : Void;
	
	/**
	* Last resort when something goes terribly wrong within the unmarshaller.
	*/
	@:overload private static function handleGenericException(e : java.lang.Exception) : Void;
	
	@:overload public static function handleGenericException(e : java.lang.Exception, canRecover : Bool) : Void;
	
	@:overload public static function handleGenericError(e : java.lang.Error) : Void;
	
	@:overload private static function reportError(msg : String, canRecover : Bool) : Void;
	
	@:overload public static function reportError(msg : String, nested : java.lang.Exception, canRecover : Bool) : Void;
	
	/**
	* This method is called by the generated derived class
	* when a datatype parse method throws an exception.
	*/
	@:overload private static function handleParseConversionException(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, e : java.lang.Exception) : Void;
	
	
}
