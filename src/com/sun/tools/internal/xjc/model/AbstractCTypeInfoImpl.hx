package com.sun.tools.internal.xjc.model;
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
@:internal extern class AbstractCTypeInfoImpl implements com.sun.tools.internal.xjc.model.CTypeInfo
{
	@:overload private function new(model : com.sun.tools.internal.xjc.model.Model, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations) : Void;
	
	@:overload @:final public function isCollection() : Bool;
	
	@:overload @:final public function getAdapterUse() : com.sun.tools.internal.xjc.model.CAdapter;
	
	@:overload @:final public function idUse() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload @:final public function getSchemaComponent() : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* @deprecated
	*      why are you calling an unimplemented method?
	*/
	@:overload @:final public function canBeReferencedByIDREF() : Bool;
	
	/**
	* No default {@link MimeType}.
	*/
	@:overload public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload public function getCustomizations() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	@:overload public function createConstant(outline : com.sun.tools.internal.xjc.outline.Outline, lexical : com.sun.xml.internal.xsom.XmlString) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:final public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:final public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	/**
	* Returns the {@link JClass} that represents the class being bound,
	* under the given {@link Outline}.
	*
	* @see NType#toType(Outline, Aspect)
	*/
	@:overload @:public override public function toType(o : com.sun.tools.internal.xjc.outline.Outline, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Gets the underlying Java type that object represents.
	*
	* @return
	*      always non-null.
	*/
	@:overload override public function getType() : Dynamic;
	
	
}
