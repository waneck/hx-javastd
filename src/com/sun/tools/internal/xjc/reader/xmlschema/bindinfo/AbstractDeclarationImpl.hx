package com.sun.tools.internal.xjc.reader.xmlschema.bindinfo;
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
@:internal extern class AbstractDeclarationImpl implements com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration
{
	/**
	* Abstract partial implementation of {@link BIDeclaration}
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload private function new(loc : org.xml.sax.Locator) : Void;
	
	@:overload private function new() : Void;
	
	@:overload public function getLocation() : org.xml.sax.Locator;
	
	private var parent : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo;
	
	@:overload public function setParent(p : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	@:overload @:final private function getOwner() : com.sun.xml.internal.xsom.XSComponent;
	
	@:overload @:final private function getBuilder() : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	@:overload @:final private function getCodeModel() : com.sun.codemodel.internal.JCodeModel;
	
	@:overload @:final public function isAcknowledged() : Bool;
	
	@:overload public function onSetOwner() : Void;
	
	@:overload public function getChildren() : java.util.Collection<com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>;
	
	@:overload public function markAsAcknowledged() : Void;
	
	
}