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
extern class IllegalAnnotationException extends javax.xml.bind.JAXBException
{
	@:overload @:public public function new(message : String, src : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Void;
	
	@:overload @:public public function new(message : String, src : java.lang.annotation.Annotation) : Void;
	
	@:overload @:public public function new(message : String, src1 : com.sun.xml.internal.bind.v2.model.annotation.Locatable, src2 : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Void;
	
	@:overload @:public public function new(message : String, src1 : java.lang.annotation.Annotation, src2 : java.lang.annotation.Annotation) : Void;
	
	@:overload @:public public function new(message : String, src1 : java.lang.annotation.Annotation, src2 : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Void;
	
	@:overload @:public public function new(message : String, cause : java.lang.Throwable, src : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Void;
	
	/**
	* Returns a read-only list of {@link Location} that indicates
	* where in the source code the problem has happened.
	*
	* <p>
	* Normally, an annotation error happens on one particular
	* annotation, in which case this method returns a list that
	* contains another list, which in turn contains the location
	* information that leads to the error location
	* (IOW, <tt>[ [pos1,pos2,...,posN] ]</tt>)
	*
	* <p>
	* Sometimes, an error could occur because of two or more conflicting
	* annotations, in which case this method returns a list
	* that contains many lists, where each list contains
	* the location information that leads to each of the conflicting
	* annotations
	* (IOW, <tt>[ [pos11,pos12,...,pos1N],[pos21,pos22,...,pos2M], ... ]</tt>)
	*
	* <p>
	* Yet some other time, the runtime can fail to provide any
	* error location, in which case this method returns an empty list.
	* (IOW, <tt>[]</tt>). We do try hard to make sure this won't happen,
	* so please <a href="http://jaxb.dev.java.net/">let us know</a>
	* if you see this behavior.
	*
	*
	* <h3>List of {@link Location}</h3>
	* <p>
	* Each error location is identified not just by one {@link Location}
	* object, but by a sequence of {@link Location}s that shows why
	* the runtime is led to the place of the error.
	* This list is sorted such that the most specific {@link Location} comes
	* to the first in the list, sort of like a stack trace.
	*
	* <p>
	* For example, suppose you specify class <tt>Foo</tt> to {@link JAXBContext},
	* <tt>Foo</tt> derives from <tt>Bar</tt>, <tt>Bar</tt> has a field <tt>pea</tt>
	* that points to <tt>Zot</tt>, <tt>Zot</tt> contains a <tt>gum</tt>
	* property, and this property has an errornous annotation.
	* Then when this exception is thrown, the list of {@link Location}s
	* will look something like
	* <tt>[ "gum property", "Zot class", "pea property", "Bar class", "Foo class" ]</tt>
	*
	*
	* @return
	*      can be empty when no source position is available,
	*      but never null. The returned list will never contain
	*      null nor length-0 {@link List}.
	*/
	@:overload @:public public function getSourcePos() : java.util.List<java.util.List<com.sun.xml.internal.bind.v2.runtime.Location>>;
	
	/**
	* Returns the exception name, message, and related information
	* together in one string.
	*
	* <p>
	* Overriding this method (instead of {@link #printStackTrace} allows
	* this crucial detail to show up even when this exception is nested
	* inside other exceptions.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
