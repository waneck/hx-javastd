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
extern interface XmlVisitor
{
	/**
	* Notifies a start of the document.
	*
	* @param locator
	*      This live object returns the location information as the parsing progresses.
	*      must not be null.
	* @param nsContext
	*      Some broken XML APIs can't iterate all the in-scope namespace bindings,
	*      which makes it impossible to emulate {@link #startPrefixMapping(String, String)} correctly
	*      when unmarshalling a subtree. Connectors that use such an API can
	*      pass in additional {@link NamespaceContext} object that knows about the
	*      in-scope namespace bindings. Otherwise (and normally) it is null.
	*
	*      <p>
	*      Ideally this object should be immutable and only represent the namespace URI bindings
	*      in the context (those done above the element that JAXB started unmarshalling),
	*      but it can also work even if it changes as the parsing progress (to include
	*      namespaces declared on the current element being parsed.)
	*/
	@:overload public function startDocument(locator : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function endDocument() : Void;
	
	/**
	* Notifies a start tag of a new element.
	*
	* namespace URIs and local names must be interned.
	*/
	@:overload public function startElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function endElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	/**
	* Called before {@link #startElement} event to notify a new namespace binding.
	*/
	@:overload public function startPrefixMapping(prefix : String, nsUri : String) : Void;
	
	/**
	* Called after {@link #endElement} event to notify the end of a binding.
	*/
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Text events.
	*
	* <p>
	* The caller should consult {@link TextPredictor} to see
	* if the unmarshaller is expecting any PCDATA. If the above is returning
	* false, the caller is OK to skip any text in XML. The net effect is
	* that we can ignore whitespaces quickly.
	*
	* @param pcdata
	*      represents character data. This object can be mutable
	*      (such as {@link StringBuilder}); it only needs to be fixed
	*      while this method is executing.
	*/
	@:overload public function text(pcdata : java.lang.CharSequence) : Void;
	
	/**
	* Returns the {@link UnmarshallingContext} at the end of the chain.
	*
	* @return
	*      always return the same object, so caching the result is recommended.
	*/
	@:overload public function getContext() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	/**
	* Gets the predictor that can be used for the caller to avoid
	* calling {@link #text(CharSequence)} unnecessarily.
	*/
	@:overload public function getPredictor() : XmlVisitor_TextPredictor;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$XmlVisitor$TextPredictor') @:internal extern interface XmlVisitor_TextPredictor
{
	/**
	* Returns true if the visitor is expecting a text event as the next event.
	*
	* <p>
	* This is primarily intended to be used for optimization to avoid buffering
	* characters unnecessarily. If this method returns false and the connector
	* sees whitespace it can safely skip it.
	*
	* <p>
	* If this method returns true, all the whitespaces are considered significant
	* and thus need to be reported as a {@link XmlVisitor#text} event. Furthermore,
	* if the element has no children (like &lt;foo/>), then it has to be reported
	* an empty {@link XmlVisitor#text} event.
	*/
	@:overload public function expectText() : Bool;
	
	
}
