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
@:internal extern class TypeUseImpl implements com.sun.tools.internal.xjc.model.TypeUse
{
	@:overload public function new(itemType : com.sun.tools.internal.xjc.model.CNonElement, collection : Bool, id : com.sun.xml.internal.bind.v2.model.core.ID, expectedMimeType : javax.activation.MimeType, adapter : com.sun.tools.internal.xjc.model.CAdapter) : Void;
	
	@:overload public function isCollection() : Bool;
	
	@:overload public function getInfo() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload public function getAdapterUse() : com.sun.tools.internal.xjc.model.CAdapter;
	
	@:overload public function idUse() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function createConstant(outline : com.sun.tools.internal.xjc.outline.Outline, lexical : com.sun.xml.internal.xsom.XmlString) : com.sun.codemodel.internal.JExpression;
	
	
}