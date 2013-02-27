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
extern interface Transducer<ValueT>
{
	/**
	* If this {@link Transducer} is the default transducer for the <code>ValueT</code>,
	* this method returns true.
	*
	* Used exclusively by {@link OptimizedTransducedAccessorFactory#get(RuntimePropertyInfo)}
	*/
	@:overload public function isDefault() : Bool;
	
	/**
	* If true, this {@link Transducer} doesn't declare any namespace,
	* and therefore {@link #declareNamespace(Object, XMLSerializer)} is no-op.
	*
	* It also means that the {@link #parse(CharSequence)} method
	* won't use the context parameter.
	*/
	@:overload public function useNamespace() : Bool;
	
	/**
	* Declares the namespace URIs used in the given value to {@code w}.
	*
	* @param o
	*      never be null.
	* @param w
	*      may be null if {@code !{@link #useNamespace()}}.
	*/
	@:overload public function declareNamespace(o : ValueT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Converts the given value to its lexical representation.
	*
	* @param o
	*      never be null.
	* @return
	*      always non-null valid lexical representation.
	*/
	@:overload public function print(o : ValueT) : java.lang.CharSequence;
	
	/**
	* Converts the lexical representation to a value object.
	*
	* @param lexical
	*      never be null.
	* @throws AccessorException
	*      if the transducer is used to parse an user bean that uses {@link XmlValue},
	*      then this exception may occur when it tries to set the leaf value to the bean.
	* @throws SAXException
	*      if the lexical form is incorrect, the error should be reported
	*      and SAXException may thrown (or it can return null to recover.)
	*/
	@:overload public function parse(lexical : java.lang.CharSequence) : ValueT;
	
	/**
	* Sends the result of the {@link #print(Object)} operation
	* to one of the {@link XMLSerializer#text(String, String)} method,
	* but with the best representation of the value, not necessarily String.
	*/
	@:overload public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : ValueT, fieldName : String) : Void;
	
	/**
	* Sends the result of the {@link #print(Object)} operation
	* to one of the {@link XMLSerializer#leafElement(Name, String, String)} method.
	* but with the best representation of the value, not necessarily String.
	*/
	@:overload public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : ValueT, fieldName : String) : Void;
	
	/**
	* Transducers implicitly work against a single XML type,
	* but sometimes (most notably {@link XMLGregorianCalendar},
	* an instance may choose different XML types.
	*
	* @return
	*      return non-null from this method allows transducers
	*      to specify the type it wants to marshal to.
	*      Most of the time this method returns null, in which case
	*      the implicitly associated type will be used.
	*/
	@:overload public function getTypeName(instance : ValueT) : javax.xml.namespace.QName;
	
	
}
