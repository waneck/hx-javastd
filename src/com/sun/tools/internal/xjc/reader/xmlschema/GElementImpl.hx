package com.sun.tools.internal.xjc.reader.xmlschema;
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
@:internal extern class GElementImpl extends com.sun.tools.internal.xjc.reader.xmlschema.GElement
{
	/**
	* {@link Element} that wraps {@link XSElementDecl}.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:public @:final public var tagName(default, null) : javax.xml.namespace.QName;
	
	/**
	* The representative {@link XSElementDecl}.
	*
	* Even though multiple {@link XSElementDecl}s maybe represented by
	* a single {@link GElementImpl} (especially when they are local),
	* the schema spec requires that they share the same type and other
	* characteristic.
	*
	* (To be really precise, you may have different default values,
	* nillability, all that, so if that becomes a real issue we have
	* to reconsider this design.)
	*/
	@:public @:final public var decl(default, null) : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload @:public public function new(tagName : javax.xml.namespace.QName, decl : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
