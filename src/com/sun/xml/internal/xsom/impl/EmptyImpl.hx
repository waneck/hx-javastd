package com.sun.xml.internal.xsom.impl;
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
extern class EmptyImpl extends com.sun.xml.internal.xsom.impl.ComponentImpl implements com.sun.xml.internal.xsom.impl.ContentTypeImpl
{
	/**
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload public function new() : Void;
	
	@:overload public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function asParticle() : com.sun.xml.internal.xsom.XSParticle;
	
	@:overload public function asEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function apply(_function : com.sun.xml.internal.xsom.visitor.XSContentTypeFunction<Dynamic>) : Dynamic;
	
	@:overload override public function apply(_function : com.sun.xml.internal.xsom.visitor.XSFunction<Dynamic>) : Dynamic;
	
	@:overload override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor) : Void;
	
	@:overload public function getContentType() : com.sun.xml.internal.xsom.XSContentType;
	
	
}