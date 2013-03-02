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
@:internal extern class CSingleTypePropertyInfo extends com.sun.tools.internal.xjc.model.CPropertyInfo
{
	/**
	* {@link CPropertyInfo} backed by a single {@link TypeUse}.
	*
	* @author Kohsuke Kawaguchi
	*/
	private var type(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	*
	* @param typeName
	*      XML Schema type name of this property's single value. Optional
	*      for other schema languages. This is used to determine if we should
	*      generate {@link @XmlSchemaType} annotation to improve the roundtrip.
	*/
	@:overload private function new(name : String, type : com.sun.tools.internal.xjc.model.TypeUse, typeName : javax.xml.namespace.QName, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations, locator : org.xml.sax.Locator) : Void;
	
	@:overload override public function getSchemaType() : javax.xml.namespace.QName;
	
	@:overload @:final override public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload @:final override public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload @:final override public function ref() : java.util.List<com.sun.tools.internal.xjc.model.CTypeInfo>;
	
	@:overload @:final public function getTarget() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload @:final override public function getAdapter() : com.sun.tools.internal.xjc.model.CAdapter;
	
	@:overload @:final public function getSource() : com.sun.tools.internal.xjc.model.CSingleTypePropertyInfo;
	
	
}
